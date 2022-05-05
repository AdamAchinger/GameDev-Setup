import lib-sampler.glsl
import lib-env.glsl
import lib-normal.glsl
import lib-alpha.glsl
import lib-pbr.glsl

//: state cull_face off

//-------------------------- Diffuse Map --------------------------//

//: param auto channel_basecolor
uniform SamplerSparse diffuseMapSampler;


//--------MASK1 ---------------------------------------------------//

//: param auto channel_user0
uniform SamplerSparse detail_tex;
//: param auto channel_user1
uniform SamplerSparse fresnelMaskSampler;
//: param auto channel_metallic
uniform SamplerSparse metallicSampler;
//: param auto channel_emissive
uniform SamplerSparse emissiveSampler;


//--------MASK2 ---------------------------------------------------//

//: param auto channel_specular
uniform SamplerSparse specularWarpSampler;
//: param auto channel_user2
uniform SamplerSparse rimSampler;
//: param auto channel_user3
uniform SamplerSparse tintSpecSampler;
//: param auto channel_glossiness
uniform SamplerSparse glossinessSampler;


//-------- Specular Parameters ---------------------------------------------------//

//: param custom { "default": 1, "label": "Specular Color", "widget": "color" }
uniform vec3 fSpecularColor;

//: param custom { "default": 16.0, "label": "Specular Exponent", "min": 0.0, "max": 512.0 }
uniform float fSpecularExponent;

//: param custom { "default": 4.0, "label": "Specular Scale", "min": 0.0, "max": 512.0 }
uniform float fSpecularScale;

//-------- Rim Lighting Parameters ---------------------------------------------------//

//: param custom { "default": 1, "label": "Rim Light Color", "widget": "color" }
uniform vec3 fRimLightColor;

//: param custom { "default": 2.0, "label": "Rim Light Scale", "min": 0.0, "max": 32.0 }
uniform float fRimLightScale;

//: param custom { "default": true, "label": "Rim Lighting" }
uniform bool bDoRimLighting;

//-------- Ambient ---------------------------------------------------//

//: param custom { "default": 0, "label": "Ambient Color", "widget": "color" }
uniform vec3 fAmbientColor;

//: param custom { "default": 1.0, "label": "Ambient Scale", "min": 1.0, "max": 10.0 }
uniform float fAmbientScale;

//: param custom { "default": true, "label": "IBL Lighting" }
uniform bool bUseIBL;

//: param custom { "default": false, "label": "Alpha Test" }
uniform bool bHasAlpha;

//-------- Textures ----------------------------------------------------//

//: param custom { "default": false, "label": "Diffuse Warp" }
uniform bool bDoDiffuseWarp;
//: param custom { "default": "fresnelranges", "label": "Diffuse Warp", "usage": "texture" }
uniform sampler2D difwarp;

//: param custom { "default": "", "label": "Detail Map", "usage": "texture" }
uniform sampler2D detailMapSampler;
//: param custom { "default": 1.0, "label": "Detail Scale", "min": 0.0, "max": 32.0 }
uniform float fDetailScale;


//-------- Lights ----------------------------------------------------//

//: param custom { "default": [10.0, 10.0, 10.0], "label": "Light Position", "min": -20, "max": 20 }
uniform vec3 lightPosition_1;

//: param custom { "default": 1, "label": "Light Color", "widget": "color" }
uniform vec3 lightColor_1;


//------------------------------------------------------------------//
//-------------------------- Data Stucts ---------------------------//
//------------------------------------------------------------------//

struct lightProp
{
	vec3 lightVector;
	vec3 lightColor;
};

lightProp lightArray[1];

// Lights! Method based on Xoluil Shader ( http://www.laurenscorijn.com/xoliulshader ) Thanks mate :)
void PropagateLights( vec3 position )
{
	lightArray[0].lightVector = lightPosition_1 - position;
	lightArray[0].lightColor = lightColor_1;
}

float Fresnel( vec3 N, vec3 V, float X )
{
	float Fresnel = 1.0 - clamp(dot(N, V), 0.0, 1.0);
	return pow(Fresnel, X);
}

void CustomHeroDoLighting( vec3 N, vec3 L, vec3 V, vec3 LightColor, float diffuseWarpMask, float flSpecularExponent, inout vec3 finalDiffuse, inout vec3 finalSpecular)
{
	// Normalize
	L = normalize(L);
	float NdotL = dot(N, L);
	float halfLambert = NdotL * 0.5 + 0.5;

	vec3 diffuseLight = LightColor;
	// diffuse warp
	diffuseLight *= bDoDiffuseWarp ? texture(difwarp, vec2(halfLambert, diffuseWarpMask)).rgb : vec3(halfLambert);
	finalDiffuse += diffuseLight; // Output our diffuse lighting

	NdotL = max(0.0, NdotL);
	vec3 R = reflect( V, N ); // No half-vector so this is consistent in look with ps2.0
	float RdotL = max(0.0, dot( L, -R ));

	flSpecularExponent *= fSpecularExponent; // fSpecularExponent is from the UI Spinner
	float flSpecularIntensity = NdotL * pow( RdotL, flSpecularExponent );
	vec3 SpecularLighting = flSpecularIntensity * LightColor;
	finalSpecular += SpecularLighting;
}

float sampleWithDefault(SamplerSparse sampler, SparseCoord coord, float defaultValue)
{
	vec2 value = textureSparse(sampler, coord).rg;
	return value.r + defaultValue * (1.0 - value.g);
}

void shade(V2F inputs)
{
	PropagateLights(inputs.position.xyz); // Bring in lights

	// Get world space vectors
	inputs.normal = normalize(inputs.normal);
	LocalVectors vectors = computeLocalFrame(inputs);

	float flDetailMask      = sampleWithDefault(detail_tex        , inputs.sparse_coord, 0.0);
	float flDiffuseWarpMask = sampleWithDefault(fresnelMaskSampler, inputs.sparse_coord, 0.3);
	float flMetalnessMask   = sampleWithDefault(metallicSampler   , inputs.sparse_coord, 0.0);
	float flSelfIllumMask   = sampleWithDefault(emissiveSampler   , inputs.sparse_coord, 0.0);

	float flSpecularMask     = sampleWithDefault(specularWarpSampler, inputs.sparse_coord, 0.3);
	float flRimMask          = sampleWithDefault(rimSampler         , inputs.sparse_coord, 0.3);
	float flTintByBaseMask   = sampleWithDefault(tintSpecSampler    , inputs.sparse_coord, 0.0);
	float flSpecularExponent = sampleWithDefault(glossinessSampler  , inputs.sparse_coord, 0.3);

	vec3 FresnelTerm = vec3(Fresnel(vectors.normal, vectors.eye, 5.0));
	FresnelTerm.b = max( FresnelTerm.b, flDiffuseWarpMask );

	vec3 albedo = getBaseColor(diffuseMapSampler, inputs.sparse_coord);
	vec3 final = albedo * vec3(flSelfIllumMask); // emissive

	vec3 diffuseColor = albedo; // assign the diffuse texture to our global diffuse color
	vec3 Detail = texture(detailMapSampler, inputs.tex_coord * fDetailScale).rgb;
	diffuseColor += Detail * flDetailMask;

	if (bHasAlpha) {
		alphaKill(inputs.sparse_coord);
	}

	vec3 ambient = fAmbientColor + fAmbientScale;
	if(bUseIBL)
	{
		ambient = envIrradiance(vectors.normal) * fAmbientScale;
	}

	vec3 finalDiffuse = vec3(0.0);
	vec3 finalSpecular = vec3(0.0);
	CustomHeroDoLighting(vectors.normal, lightArray[0].lightVector, vectors.eye, lightArray[0].lightColor, flDiffuseWarpMask, flSpecularExponent, finalDiffuse, finalSpecular);

	final += finalDiffuse * diffuseColor * ambient;

	vec3 SpecularTint = mix(diffuseColor, fSpecularColor, flTintByBaseMask);
	vec3 cSpecular = finalSpecular * SpecularTint * fSpecularScale * flSpecularMask * FresnelTerm.b;
	final += cSpecular;

	final = mix(final, cSpecular, flMetalnessMask);

	vec3 rimLighting = vec3(0.0);
	if ( bDoRimLighting )
	{
		rimLighting = vec3((FresnelTerm.r * fRimLightScale) * flRimMask);
		rimLighting *= max(0.0, vectors.normal.y); // Masked by a 'sky light'
		rimLighting *= fRimLightColor;
		rimLighting *= (1.0 - flMetalnessMask); // Metalness
	}
	final += rimLighting;

	final *= getShadowFactor();
	diffuseShadingOutput(final);
}
