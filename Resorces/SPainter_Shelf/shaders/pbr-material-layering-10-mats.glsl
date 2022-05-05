//- Import from libraries.
import lib-pbr.glsl
import lib-emissive.glsl
import lib-sampler.glsl
import lib-utils.glsl

#define NB_MATERIALS 10
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
//:   },
//:   {
//:      "id": "Material5",
//:      "label": "Material 5",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material6",
//:      "label": "Material 6",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material7",
//:      "label": "Material 7",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material8",
//:      "label": "Material 8",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material9",
//:      "label": "Material 9",
//:      "default": "",
//:      "size": 1024,
//:      "default_color": [0.5, 0.5, 0.5]
//:   },
//:   {
//:      "id": "Material10",
//:      "label": "Material 10",
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
//:   },
//:   {
//:	    "id": "Mask4",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask5",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask6",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask7",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask8",
//:     "channels":
//:		[
//:			{"id": "blendingmask"}
//:		]
//:   },
//:   {
//:	    "id": "Mask9",
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
//:     "Mask 3": 8,
//:     "Mask 4": 9,
//:     "Mask 5": 10,
//:     "Mask 6": 11,
//:     "Mask 7": 12,
//:     "Mask 8": 13,
//:     "Mask 9": 14
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

//: param custom { "default": 5, "label": "Material 5 coords", "min": 0.01, "max": 128.0, "group" : "Material 5" }
uniform float u_coords5;

//: param custom { "default": 5, "label": "Material 6 coords", "min": 0.01, "max": 128.0, "group" : "Material 6" }
uniform float u_coords6;

//: param custom { "default": 5, "label": "Material 7 coords", "min": 0.01, "max": 128.0, "group" : "Material 7" }
uniform float u_coords7;

//: param custom { "default": 5, "label": "Material 8 coords", "min": 0.01, "max": 128.0, "group" : "Material 8" }
uniform float u_coords8;

//: param custom { "default": 5, "label": "Material 9 coords", "min": 0.01, "max": 128.0, "group" : "Material 9" }
uniform float u_coords9;

//: param custom { "default": 5, "label": "Material 10 coords", "min": 0.01, "max": 128.0, "group" : "Material 10" }
uniform float u_coords10;


//: param custom { "default": 1, "label": "Normal Intensity 1", "min": 0.0, "max": 1.0, "group" : "Material 1" }
uniform float normal_intensity1;

//: param custom { "default": 1, "label": "Normal Intensity 2", "min": 0.0, "max": 1.0, "group" : "Material 2" }
uniform float normal_intensity2;

//: param custom { "default": 1, "label": "Normal Intensity 3", "min": 0.0, "max": 1.0, "group" : "Material 3" }
uniform float normal_intensity3;

//: param custom { "default": 1, "label": "Normal Intensity 4", "min": 0.0, "max": 1.0, "group" : "Material 4" }
uniform float normal_intensity4;

//: param custom { "default": 1, "label": "Normal Intensity 5", "min": 0.0, "max": 1.0, "group" : "Material 5" }
uniform float normal_intensity5;

//: param custom { "default": 1, "label": "Normal Intensity 6", "min": 0.0, "max": 1.0, "group" : "Material 6" }
uniform float normal_intensity6;

//: param custom { "default": 1, "label": "Normal Intensity 7", "min": 0.0, "max": 1.0, "group" : "Material 7" }
uniform float normal_intensity7;

//: param custom { "default": 1, "label": "Normal Intensity 8", "min": 0.0, "max": 1.0, "group" : "Material 8" }
uniform float normal_intensity8;

//: param custom { "default": 1, "label": "Normal Intensity 9", "min": 0.0, "max": 1.0, "group" : "Material 9" }
uniform float normal_intensity9;

//: param custom { "default": 1, "label": "Normal Intensity 10", "min": 0.0, "max": 1.0, "group" : "Material 10" }
uniform float normal_intensity10;


//: param custom { "default": 0, "label": "Normal from Mask Intensity 2", "min": -10.0, "max": 10.0, "group" : "Material 2" }
uniform float mask_normal_intensity1;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 3", "min": -10.0, "max": 10.0, "group" : "Material 3" }
uniform float mask_normal_intensity2;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 4", "min": -10.0, "max": 10.0, "group" : "Material 4" }
uniform float mask_normal_intensity3;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 5", "min": -10.0, "max": 10.0, "group" : "Material 5" }
uniform float mask_normal_intensity4;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 6", "min": -10.0, "max": 10.0, "group" : "Material 6" }
uniform float mask_normal_intensity5;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 7", "min": -10.0, "max": 10.0, "group" : "Material 7" }
uniform float mask_normal_intensity6;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 8", "min": -10.0, "max": 10.0, "group" : "Material 8" }
uniform float mask_normal_intensity7;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 9", "min": -10.0, "max": 10.0, "group" : "Material 9" }
uniform float mask_normal_intensity8;

//: param custom { "default": 0, "label": "Normal from Mask Intensity 10", "min": -10.0, "max": 10.0, "group" : "Material 10" }
uniform float mask_normal_intensity9;


//: param custom { "default": 0.1, "label": "Normal from Mask 1 Offset", "min": 0.0, "max": 1, "group" : "Material 2" }
uniform float mask_normal_offset1;

//: param custom { "default": 0.1, "label": "Normal from Mask 2 Offset", "min": 0.0, "max": 1, "group" : "Material 3" }
uniform float mask_normal_offset2;

//: param custom { "default": 0.1, "label": "Normal from Mask 3 Offset", "min": 0.0, "max": 1, "group" : "Material 4" }
uniform float mask_normal_offset3;

//: param custom { "default": 0.1, "label": "Normal from Mask 4 Offset", "min": 0.0, "max": 1, "group" : "Material 5" }
uniform float mask_normal_offset4;

//: param custom { "default": 0.1, "label": "Normal from Mask 5 Offset", "min": 0.0, "max": 1, "group" : "Material 6" }
uniform float mask_normal_offset5;

//: param custom { "default": 0.1, "label": "Normal from Mask 6 Offset", "min": 0.0, "max": 1, "group" : "Material 7" }
uniform float mask_normal_offset6;

//: param custom { "default": 0.1, "label": "Normal from Mask 7 Offset", "min": 0.0, "max": 1, "group" : "Material 8" }
uniform float mask_normal_offset7;

//: param custom { "default": 0.1, "label": "Normal from Mask 8 Offset", "min": 0.0, "max": 1, "group" : "Material 9" }
uniform float mask_normal_offset8;

//: param custom { "default": 0.1, "label": "Normal from Mask 9 Offset", "min": 0.0, "max": 1, "group" : "Material 10" }
uniform float mask_normal_offset9;


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


//: param auto Material5.channel_basecolor
uniform sampler2D color5;

//: param auto Material5.channel_roughness
uniform sampler2D rough5;

//: param auto Material5.channel_metallic
uniform sampler2D metal5;

//: param auto Material5.channel_normal
uniform sampler2D normal5;


//: param auto Material6.channel_basecolor
uniform sampler2D color6;

//: param auto Material6.channel_roughness
uniform sampler2D rough6;

//: param auto Material6.channel_metallic
uniform sampler2D metal6;

//: param auto Material6.channel_normal
uniform sampler2D normal6;


//: param auto Material7.channel_basecolor
uniform sampler2D color7;

//: param auto Material7.channel_roughness
uniform sampler2D rough7;

//: param auto Material7.channel_metallic
uniform sampler2D metal7;

//: param auto Material7.channel_normal
uniform sampler2D normal7;


//: param auto Material8.channel_basecolor
uniform sampler2D color8;

//: param auto Material8.channel_roughness
uniform sampler2D rough8;

//: param auto Material8.channel_metallic
uniform sampler2D metal8;

//: param auto Material8.channel_normal
uniform sampler2D normal8;


//: param auto Material9.channel_basecolor
uniform sampler2D color9;

//: param auto Material9.channel_roughness
uniform sampler2D rough9;

//: param auto Material9.channel_metallic
uniform sampler2D metal9;

//: param auto Material9.channel_normal
uniform sampler2D normal9;


//: param auto Material10.channel_basecolor
uniform sampler2D color10;

//: param auto Material10.channel_roughness
uniform sampler2D rough10;

//: param auto Material10.channel_metallic
uniform sampler2D metal10;

//: param auto Material10.channel_normal
uniform sampler2D normal10;


//: param auto Mask.channel_blendingmask
uniform SamplerSparse mask;

//: param auto Mask2.channel_blendingmask
uniform SamplerSparse mask2;

//: param auto Mask3.channel_blendingmask
uniform SamplerSparse mask3;

//: param auto Mask4.channel_blendingmask
uniform SamplerSparse mask4;

//: param auto Mask5.channel_blendingmask
uniform SamplerSparse mask5;

//: param auto Mask6.channel_blendingmask
uniform SamplerSparse mask6;

//: param auto Mask7.channel_blendingmask
uniform SamplerSparse mask7;

//: param auto Mask8.channel_blendingmask
uniform SamplerSparse mask8;

//: param auto Mask9.channel_blendingmask
uniform SamplerSparse mask9;


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
		u_coords1, u_coords2, u_coords3, u_coords4, u_coords5,
		u_coords6, u_coords7, u_coords8, u_coords9, u_coords10);

	float NormalIntensity[NB_MATERIALS] = float[NB_MATERIALS](
		normal_intensity1, normal_intensity2, normal_intensity3, normal_intensity4,
		normal_intensity5, normal_intensity6, normal_intensity7, normal_intensity8,
		normal_intensity9, normal_intensity10);

	float MaskNormalOffset[NB_MASKS] = float[NB_MASKS](
		mask_normal_offset1, mask_normal_offset2, mask_normal_offset3,
		mask_normal_offset4, mask_normal_offset5, mask_normal_offset6,
		mask_normal_offset7, mask_normal_offset8, mask_normal_offset9);

	float MaskNormalIntensity[NB_MASKS] = float[NB_MASKS](
		mask_normal_intensity1, mask_normal_intensity2, mask_normal_intensity3,
		mask_normal_intensity4, mask_normal_intensity5, mask_normal_intensity6,
		mask_normal_intensity7, mask_normal_intensity8, mask_normal_intensity9);

	float Masks[NB_MASKS] = float[NB_MASKS](
		textureSparse(mask,  inputs.sparse_coord).r, textureSparse(mask2, inputs.sparse_coord).r,
		textureSparse(mask3, inputs.sparse_coord).r, textureSparse(mask4, inputs.sparse_coord).r,
		textureSparse(mask5, inputs.sparse_coord).r, textureSparse(mask6, inputs.sparse_coord).r,
		textureSparse(mask7, inputs.sparse_coord).r, textureSparse(mask8, inputs.sparse_coord).r,
		textureSparse(mask9, inputs.sparse_coord).r);

	//-----------------------------------------------------------------------
	//Mixing
	//-----------------------------------------------------------------------
	float roughSampled[NB_MATERIALS] = float[NB_MATERIALS](
		getRoughness(rough1,  inputs.tex_coord*UVscale[0]),
		getRoughness(rough2,  inputs.tex_coord*UVscale[1]),
		getRoughness(rough3,  inputs.tex_coord*UVscale[2]),
		getRoughness(rough4,  inputs.tex_coord*UVscale[3]),
		getRoughness(rough5,  inputs.tex_coord*UVscale[4]),
		getRoughness(rough6,  inputs.tex_coord*UVscale[5]),
		getRoughness(rough7,  inputs.tex_coord*UVscale[6]),
		getRoughness(rough8,  inputs.tex_coord*UVscale[7]),
		getRoughness(rough9,  inputs.tex_coord*UVscale[8]),
		getRoughness(rough10, inputs.tex_coord*UVscale[9])
	);

	float metallicSampled[NB_MATERIALS] = float[NB_MATERIALS](
		getMetallic(metal1,  inputs.tex_coord*UVscale[0]),
		getMetallic(metal2,  inputs.tex_coord*UVscale[1]),
		getMetallic(metal3,  inputs.tex_coord*UVscale[2]),
		getMetallic(metal4,  inputs.tex_coord*UVscale[3]),
		getMetallic(metal5,  inputs.tex_coord*UVscale[4]),
		getMetallic(metal6,  inputs.tex_coord*UVscale[5]),
		getMetallic(metal7,  inputs.tex_coord*UVscale[6]),
		getMetallic(metal8,  inputs.tex_coord*UVscale[7]),
		getMetallic(metal9,  inputs.tex_coord*UVscale[8]),
		getMetallic(metal10, inputs.tex_coord*UVscale[9])
	);

	vec3 basecolorSampled[NB_MATERIALS] = vec3[NB_MATERIALS](
		getBaseColor(color1,  inputs.tex_coord*UVscale[0]),
		getBaseColor(color2,  inputs.tex_coord*UVscale[1]),
		getBaseColor(color3,  inputs.tex_coord*UVscale[2]),
		getBaseColor(color4,  inputs.tex_coord*UVscale[3]),
		getBaseColor(color5,  inputs.tex_coord*UVscale[4]),
		getBaseColor(color6,  inputs.tex_coord*UVscale[5]),
		getBaseColor(color7,  inputs.tex_coord*UVscale[6]),
		getBaseColor(color8,  inputs.tex_coord*UVscale[7]),
		getBaseColor(color9,  inputs.tex_coord*UVscale[8]),
		getBaseColor(color10, inputs.tex_coord*UVscale[9])
	);

	vec3 normalSampled[NB_MATERIALS] = vec3[NB_MATERIALS](
		normalUnpack(texture(normal1,  inputs.tex_coord*UVscale[0])),
		normalUnpack(texture(normal2,  inputs.tex_coord*UVscale[1])),
		normalUnpack(texture(normal3,  inputs.tex_coord*UVscale[2])),
		normalUnpack(texture(normal4,  inputs.tex_coord*UVscale[3])),
		normalUnpack(texture(normal5,  inputs.tex_coord*UVscale[4])),
		normalUnpack(texture(normal6,  inputs.tex_coord*UVscale[5])),
		normalUnpack(texture(normal7,  inputs.tex_coord*UVscale[6])),
		normalUnpack(texture(normal8,  inputs.tex_coord*UVscale[7])),
		normalUnpack(texture(normal9,  inputs.tex_coord*UVscale[8])),
		normalUnpack(texture(normal10, inputs.tex_coord*UVscale[9]))
	);

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
			NormalFromMask(mask3, MaskNormalOffset[2], MaskNormalIntensity[2], inputs.sparse_coord, Masks[2]),
			NormalFromMask(mask4, MaskNormalOffset[3], MaskNormalIntensity[3], inputs.sparse_coord, Masks[3]),
			NormalFromMask(mask5, MaskNormalOffset[4], MaskNormalIntensity[4], inputs.sparse_coord, Masks[4]),
			NormalFromMask(mask6, MaskNormalOffset[5], MaskNormalIntensity[5], inputs.sparse_coord, Masks[5]),
			NormalFromMask(mask7, MaskNormalOffset[6], MaskNormalIntensity[6], inputs.sparse_coord, Masks[6]),
			NormalFromMask(mask8, MaskNormalOffset[7], MaskNormalIntensity[7], inputs.sparse_coord, Masks[7]),
			NormalFromMask(mask9, MaskNormalOffset[8], MaskNormalIntensity[8], inputs.sparse_coord, Masks[8])
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
