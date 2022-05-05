//- Allegorithmic Metal/Rough Coating PBR shader
//- ============================================
//-
//- Import from libraries.
import lib-sss.glsl
import lib-pbr.glsl
import lib-emissive.glsl
import lib-sampler.glsl
import lib-utils.glsl

// Link Coated Metal/Roughness MDL for Iray
//: metadata {
//:   "mdl":"mdl::alg::materials::skin_metallic_roughness_coated::skin_metallic_roughness_coated"
//: }

//: param auto channel_basecolor
uniform SamplerSparse basecolor_tex;
//: param auto channel_roughness
uniform SamplerSparse roughness_tex;
//: param auto channel_metallic
uniform SamplerSparse metallic_tex;
//: param auto channel_specularlevel
uniform SamplerSparse specularlevel_tex;
//: param auto channel_user0
uniform SamplerSparse roughnesscoat_tex;
//: param auto channel_user1
uniform SamplerSparse maskcoat_tex;

//: param custom { "group": "Coat Layer", "default": 0.01, "label": "Roughness", "min": 0.0, "max": 1.0 }
uniform float coating_rough;
//: param custom { "group": "Coat Layer", "default": "false", "label": "Override with RoughnessCoat (user0) channel" }
uniform bool coating_rough_use_tex;
//: param custom { "group": "Coat Layer", "default": 1.0, "label": "Opacity", "min": 0.0, "max": 1.0 }
uniform float coating_opacity;
//: param custom { "group": "Coat Layer", "default": "false", "label": "Multiply with MaskCoat (user1) channel" }
uniform bool coating_opacity_use_tex;
//: param custom {
//:   "group": "Coat Layer",
//:   "label": "Surface behavior",
//:   "widget": "combobox",
//:   "default": 1,
//:   "values": {
//:     "Smooth surface": 0,
//:     "Keep details": 1
//:   }
//: }
uniform int coating_surface_behavior;
//: param custom { "group": "Coat Layer", "default": 1.5, "label": "IOR", "min": 1.0, "max": 1.8 }
uniform float coating_ior;

const float DEFAULT_COAT_OPACITY   = 1.0;
const float DEFAULT_COAT_ROUGHNESS = 0.01;

float iorToSpecularLevel(float ior)
{
	float sqrtR0 = (ior-1) / (ior+1);
	return sqrtR0*sqrtR0;
}

float textureLookup(SamplerSparse sampler, SparseCoord coord, float defaultValue)
{
	vec2 sampledValue = textureSparse(sampler, coord).rg;
	return sampledValue.r + defaultValue * (1.0 - sampledValue.g);
}

float getCoatRoughness(SparseCoord coord)
{
	return coating_rough_use_tex?
		textureLookup(roughnesscoat_tex, coord, DEFAULT_COAT_ROUGHNESS) :
		coating_rough;
}

float getCoatOpacity(SparseCoord coord)
{
	return coating_opacity_use_tex?
		textureLookup(maskcoat_tex, coord, DEFAULT_COAT_OPACITY) * coating_opacity :
		coating_opacity;
}

void shade(V2F inputs)
{
	float roughness = getRoughness(roughness_tex, inputs.sparse_coord);
	vec3 baseColor = getBaseColor(basecolor_tex, inputs.sparse_coord);
	float metallic = getMetallic(metallic_tex, inputs.sparse_coord);
	float specularLevel = getSpecularLevel(specularlevel_tex, inputs.sparse_coord);
	vec3 diffColor = generateDiffuseColor(baseColor, metallic);
	vec3 specColor = generateSpecularColor(specularLevel, baseColor, metallic);
	// Get detail (ambient occlusion) and global (shadow) occlusion factors
	float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();
	float specOcclusion = specularOcclusionCorrection(occlusion, metallic, roughness);

	// Material layer
	LocalVectors vectors = computeLocalFrame(inputs);

	// Feed parameters for a physically based BRDF integration
	vec3 emissiveColor = pbrComputeEmissive(emissive_tex, inputs.sparse_coord);
	albedoOutput(diffColor);
	vec3 diffuseShading = occlusion * envIrradiance(vectors.normal);
	vec3 specularShading = specOcclusion * pbrComputeSpecular(vectors, specColor, roughness);
	sssCoefficientsOutput(getSSSCoefficients(inputs.sparse_coord));

	// Coat layer, specular only
	vec3 wsCoatNormal = coating_surface_behavior == 0?
		tangentSpaceToWorldSpace(vec3(0, 0, 1.0), inputs) :
		computeWSNormal(inputs.sparse_coord, inputs.tangent, inputs.bitangent, inputs.normal);
	LocalVectors coatVectors = computeLocalFrame(inputs, wsCoatNormal, 0.0);
	float coatRoughness = getCoatRoughness(inputs.sparse_coord);
	vec3 coat = specOcclusion * pbrComputeSpecular(coatVectors, vec3(1.0), coatRoughness);

	float coatOpacity = getCoatOpacity(inputs.sparse_coord);
	float blendFactor = coatOpacity * fresnel(max(1e-8, dot(vectors.eye, vectors.normal)), vec3(iorToSpecularLevel(coating_ior))).x;
	emissiveColorOutput(emissiveColor * (1.0 - blendFactor));
	diffuseShadingOutput(diffuseShading * (1.0 - blendFactor));
	specularShadingOutput(mix(specularShading, coat, blendFactor));
}
