//- Import from libraries.
import lib-pbr.glsl
import lib-emissive.glsl
import lib-sampler.glsl
import lib-utils.glsl

#define NB_MATERIALS 4
#define NB_MASKS     (NB_MATERIALS - 1)

//: metadata {
//:   "custom-ui": "material-layering/custom-ui.qml"
//: }

//: materials [
//:   {
//:      "id": "Material1",
//:      "label": "Material 1",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material2",
//:      "label": "Material 2",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material3",
//:      "label": "Material 3",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material4",
//:      "label": "Material 4",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   }
//: ]


//: stacks [
//:   {
//:	    "id": "Mask",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask2",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask3",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   }
//: ]



//: param custom { "default": false, "label": "Debug Mode" }
uniform bool DebugMode;

//: param custom {
//:   "default": 0,
//:   "label": "Debug channel",
//:   "widget": "combobox",
//:   "values": {
//:     "BaseColor": 0,
//:     "Roughness": 1,
//:     "Metallic": 2,
//:     "Normal (Material)": 3,
//:     "Normal (Masks)": 4,
//:     "Normal (Combined)": 5,
//:     "Mask 1": 6,
//:     "Mask 2": 7,
//:     "Mask 3": 8
//:   }
//: }
uniform int DebugChannel;


//: param custom { "default": false, "label": "Normal from Masks" }
uniform bool UseNormalFromMask;


//---------------------------------------------------------------
//- Channels needed for metal/rough workflow are bound here.
//---------------------------------------------------------------

//: param auto texture_normal;
uniform sampler2D mesh_normal_texture;

//: param custom { "default": 5, "label": "Material 1 coords", "min": 0.01, "max": 128.0, "group" : "Material 1" }
uniform float u_coords1;

//: param custom { "default": 5, "label": "Material 2 coords", "min": 0.01, "max": 128.0, "group" : "Material 2" }
uniform float u_coords2;

//: param custom { "default": 5, "label": "Material 3 coords", "min": 0.01, "max": 128.0, "group" : "Material 3" }
uniform float u_coords3;

//: param custom { "default": 5, "label": "Material 4 coords", "min": 0.01, "max": 128.0, "group" : "Material 4" }
uniform float u_coords4;


//: param custom { "default": 1, "label": "Normal Intensity 1", "min": 0.0, "max": 1.0, "group" : "Material 1" }
uniform float normal_intensity1;

//: param custom { "default": 1, "label": "Normal Intensity 2", "min": 0.0, "max": 1.0, "group" : "Material 2" }
uniform float normal_intensity2;

//: param custom { "default": 1, "label": "Normal Intensity 3", "min": 0.0, "max": 1.0, "group" : "Material 3" }
uniform float normal_intensity3;

//: param custom { "default": 1, "label": "Normal Intensity 4", "min": 0.0, "max": 1.0, "group" : "Material 4" }
uniform float normal_intensity4;


//: param custom { "default": 0, "label": "Normal from Mask Intensity 2", "min": -10.0, "max": 10.0, "group" : "Material 2" }
uniform float mask_normal_intensity1;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 3", "min": -10.0, "max": 10.0, "group" : "Material 3" }
uniform float mask_normal_intensity2;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 4", "min": -10.0, "max": 10.0, "group" : "Material 4" }
uniform float mask_normal_intensity3;


//: param custom { "default": 0.1, "label": "Normal from Mask 1 Offset", "min": 0.0, "max": 1, "group" : "Material 2" }
uniform float mask_normal_offset1;

//: param custom { "default": 0.1, "label": "Normal from Mask 2 Offset", "min": 0.0, "max": 1, "group" : "Material 3" }
uniform float mask_normal_offset2;

//: param custom { "default": 0.1, "label": "Normal from Mask 3 Offset", "min": 0.0, "max": 1, "group" : "Material 4" }
uniform float mask_normal_offset3;


//: param auto Material1.channel_basecolor
uniform sampler2D color1;

//: param auto Material1.channel_roughness
uniform sampler2D rough1;

//: param auto Material1.channel_metallic
uniform sampler2D metal1;

//: param auto Material1.channel_normal
uniform sampler2D normal1;


//: param auto Material2.channel_basecolor
uniform sampler2D color2;

//: param auto Material2.channel_roughness
uniform sampler2D rough2;

//: param auto Material2.channel_metallic
uniform sampler2D metal2;

//: param auto Material2.channel_normal
uniform sampler2D normal2;


//: param auto Material3.channel_basecolor
uniform sampler2D color3;

//: param auto Material3.channel_roughness
uniform sampler2D rough3;

//: param auto Material3.channel_metallic
uniform sampler2D metal3;

//: param auto Material3.channel_normal
uniform sampler2D normal3;


//: param auto Material4.channel_basecolor
uniform sampler2D color4;

//: param auto Material4.channel_roughness
uniform sampler2D rough4;

//: param auto Material4.channel_metallic
uniform sampler2D metal4;

//: param auto Material4.channel_normal
uniform sampler2D normal4;


//: param auto Mask.channel_blendingmask
uniform SamplerSparse mask;

//: param auto Mask2.channel_blendingmask
uniform SamplerSparse mask2;

//: param auto Mask3.channel_blendingmask
uniform SamplerSparse mask3;

/////////////////////////////////////////
////////// BLENDING FUNCTIONS ///////////
/////////////////////////////////////////

float mixGrayscale(
	float channelSampled[NB_MATERIALS],
	float Masks[NB_MASKS])
{
	float result = channelSampled[0];
	for (int i = 0; i < NB_MASKS; i++)
		result = mix(result, channelSampled[i + 1], Masks[i]);

	return result;
}

vec3 mixColor(
	vec3 channelSampled[NB_MATERIALS],
	float Masks[NB_MASKS])
{
	vec3 result = channelSampled[0];
	for (int i = 0; i < NB_MASKS; i++)
		result = mix(result, channelSampled[i + 1], Masks[i]);

	return result;
}

vec3 mixNormal(
	vec3 channelSampled[NB_MATERIALS],
	float Masks[NB_MASKS],
	float NormalIntensity[NB_MATERIALS])
{
	vec3 result = NormalIntensity[0] * channelSampled[0];
	for (int i = 0; i < NB_MASKS; i++)
		result = mix(result, NormalIntensity[i + 1] * channelSampled[i + 1], Masks[i]);

	return result;
}

vec3 NormalFromMask(SamplerSparse Mask, float Offset, float Intensity, SparseCoord UVs, float refMask)
{
	vec4 results[2];
	vec2 offsets[2] = vec2[2](
		vec2(Offset * 0.001, 0.0),
		vec2(0.0, Offset * 0.001)
	);
	textureSparseOffsets(Mask, UVs, offsets, results);

	float Channel1 = results[0].r - refMask;
	float Channel2 = results[1].r - refMask;

	return vec3(-Intensity * Channel1, -Intensity * Channel2, 1.0);
}

vec3 NormalFromMasks(
	vec3 normalFromMaskSampled[NB_MASKS],
	float Masks[NB_MASKS])
{
	vec3 result = normalFromMaskSampled[0];
	for (int i = 1; i < NB_MASKS; i++)
		result = mix(result, normalFromMaskSampled[i], Masks[i]);

	return result;
}


void shade(V2F inputs)
{
	//-----------------------------------------------------------------------
	//Global textures
	//-----------------------------------------------------------------------
	// Get detail (ambient occlusion) and global (shadow) occlusion factors
	float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();
	vec3 mesh_normal = normalUnpack(textureSparse(base_normal_texture, inputs.sparse_coord), base_normal_y_coeff);

	//-----------------------------------------------------------------------
	//Materials Masks
	//-----------------------------------------------------------------------
	float UVscale[NB_MATERIALS] = float[NB_MATERIALS](
		u_coords1, u_coords2, u_coords3, u_coords4);

	float NormalIntensity[NB_MATERIALS] = float[NB_MATERIALS](
		normal_intensity1, normal_intensity2, normal_intensity3, normal_intensity4);

	float MaskNormalOffset[NB_MASKS] = float[NB_MASKS](
		mask_normal_offset1, mask_normal_offset2, mask_normal_offset3);

	float MaskNormalIntensity[NB_MASKS] = float[NB_MASKS](
		mask_normal_intensity1, mask_normal_intensity2, mask_normal_intensity3);

	float Masks[NB_MASKS] = float[NB_MASKS](
		textureSparse(mask , inputs.sparse_coord).r,
		textureSparse(mask2, inputs.sparse_coord).r,
		textureSparse(mask3, inputs.sparse_coord).r);

	float roughSampled[NB_MATERIALS] = float[NB_MATERIALS](
		getRoughness(rough1, inputs.tex_coord*UVscale[0]),
		getRoughness(rough2, inputs.tex_coord*UVscale[1]),
		getRoughness(rough3, inputs.tex_coord*UVscale[2]),
		getRoughness(rough4, inputs.tex_coord*UVscale[3])
	);

	float metallicSampled[NB_MATERIALS] = float[NB_MATERIALS](
		getMetallic(metal1, inputs.tex_coord*UVscale[0]),
		getMetallic(metal2, inputs.tex_coord*UVscale[1]),
		getMetallic(metal3, inputs.tex_coord*UVscale[2]),
		getMetallic(metal4, inputs.tex_coord*UVscale[3])
	);

	vec3 basecolorSampled[NB_MATERIALS] = vec3[NB_MATERIALS](
		getBaseColor(color1, inputs.tex_coord*UVscale[0]),
		getBaseColor(color2, inputs.tex_coord*UVscale[1]),
		getBaseColor(color3, inputs.tex_coord*UVscale[2]),
		getBaseColor(color4, inputs.tex_coord*UVscale[3])
	);

	vec3 normalSampled[NB_MATERIALS] = vec3[NB_MATERIALS](
		normalUnpack(texture(normal1, inputs.tex_coord*UVscale[0])),
		normalUnpack(texture(normal2, inputs.tex_coord*UVscale[1])),
		normalUnpack(texture(normal3, inputs.tex_coord*UVscale[2])),
		normalUnpack(texture(normal4, inputs.tex_coord*UVscale[3]))
	);

	//-----------------------------------------------------------------------
	//Mixing
	//-----------------------------------------------------------------------
	float roughness = mixGrayscale(roughSampled, Masks);
	float metallic = mixGrayscale(metallicSampled, Masks);
	vec3 basecolor = mixColor(basecolorSampled, Masks);
	vec3 diffColor = generateDiffuseColor(basecolor, metallic);
	vec3 specColor = generateSpecularColor(basecolor, metallic);
	float specOcclusion = specularOcclusionCorrection(occlusion, metallic, roughness);

	//Normal channel
	vec3 normal = mixNormal(normalSampled, Masks, NormalIntensity);
	normal = normalize( vec3(normal.xy + mesh_normal.xy, mesh_normal.z) ); //UDN combine method

	vec3 finalNormal = normal;
	vec3 normalMask = vec3(0.0, 0.0, 1.0);

	if( UseNormalFromMask )
	{
		vec3 normalFromMaskSampled[NB_MASKS] = vec3[NB_MASKS](
			NormalFromMask(mask , MaskNormalOffset[0], MaskNormalIntensity[0], inputs.sparse_coord, Masks[0]),
			NormalFromMask(mask2, MaskNormalOffset[1], MaskNormalIntensity[1], inputs.sparse_coord, Masks[1]),
			NormalFromMask(mask3, MaskNormalOffset[2], MaskNormalIntensity[2], inputs.sparse_coord, Masks[2])
		);

		normalMask = NormalFromMasks(normalFromMaskSampled, Masks);
		finalNormal = normalize( vec3(finalNormal.xy + normalMask.xy, finalNormal.z) ); //UDN combine method
	}

	//-----------------------------------------------------------------------
	//Final
	//-----------------------------------------------------------------------
	//Debug mode display result of combined channels or Masks
	if( !DebugMode ) {
		vec3 finalNormalWorldSpace = normalize(
			finalNormal.x * inputs.tangent +
			finalNormal.y * inputs.bitangent +
			finalNormal.z * inputs.normal);
		// Feed parameters for a physically based BRDF integration.
		LocalVectors vectors = computeLocalFrame(inputs, finalNormalWorldSpace, 0.0);
		emissiveColorOutput(pbrComputeEmissive(emissive_tex, inputs.sparse_coord));
		diffuseShadingOutput(occlusion * pbrComputeDiffuse(vectors.normal, diffColor));
		specularShadingOutput(specOcclusion * pbrComputeSpecular(vectors, specColor, roughness));
	} else {
		vec3 result;

		//BaseColor combined
		if( DebugChannel == 0 ) {
			result = basecolor;
		}

		//Roughness combined
		else if( DebugChannel == 1 ) {
			result = vec3(roughness);
		}

		//Metallic combined
		else if( DebugChannel == 2 ) {
			result = vec3(metallic);
		}

		//Normal combined
		else if( DebugChannel == 3) {
			normal = 0.5 * normal + vec3(0.5);
			result = sRGB2linear(normal);
		}

		//Combined masks as Normal
		else if( DebugChannel == 4 ) {
			normalMask = 0.5 * normalMask + vec3(0.5);
			result = sRGB2linear(normalMask);
		}

		//Final Normal
		else if( DebugChannel == 5 ) {
			finalNormal = 0.5 * finalNormal + vec3(0.5);
			result = sRGB2linear(finalNormal);
		}

		//Mask(s)
		else {
			result = vec3(sRGB2linear(Masks[DebugChannel - 6]));
		}

		diffuseShadingOutput(result);
	}
}
