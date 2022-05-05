//- Allegorithmic Metal/Rough and opacity PBR shader
//- ================================================
//-
//- Import from libraries.
import lib-pbr.glsl
import lib-emissive.glsl
import lib-pom.glsl
import lib-utils.glsl

// Link Metal/Roughness MDL for Iray
//: metadata {
//:   "mdl":"mdl::alg::materials::physically_metallic_roughness::physically_metallic_roughness"
//: }

//- Show back faces as there may be holes in front faces.
//: state cull_face off

//- Enable alpha blending
//: state blend over

//- Channels needed for metal/rough workflow are bound here.
//: param auto channel_basecolor
uniform SamplerSparse basecolor_tex;
//: param auto channel_roughness
uniform SamplerSparse roughness_tex;
//: param auto channel_metallic
uniform SamplerSparse metallic_tex;
//: param auto channel_specularlevel
uniform SamplerSparse specularlevel_tex;
//: param auto channel_opacity
uniform SamplerSparse opacity_tex;

//- Shader entry point.
void shade(V2F inputs)
{
  // Apply parallax occlusion mapping if possible
  vec3 viewTS = worldSpaceToTangentSpace(getEyeVec(inputs.position), inputs);
  applyParallaxOffset(inputs, viewTS);

  // Fetch material parameters, and conversion to the specular/roughness model
  float roughness = getRoughness(roughness_tex, inputs.sparse_coord);
  vec3 baseColor = getBaseColor(basecolor_tex, inputs.sparse_coord);
  float metallic = getMetallic(metallic_tex, inputs.sparse_coord);
  float specularLevel = getSpecularLevel(specularlevel_tex, inputs.sparse_coord);

  vec3 diffColor = generateDiffuseColor(baseColor, metallic);
  vec3 specColor = generateSpecularColor(specularLevel, baseColor, metallic);
  // Get detail (ambient occlusion) and global (shadow) occlusion factors
  float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();
  float specOcclusion = specularOcclusionCorrection(occlusion, metallic, roughness);

  LocalVectors vectors = computeLocalFrame(inputs);

  // Feed parameters for a physically based BRDF integration
  alphaOutput(getOpacity(opacity_tex, inputs.sparse_coord));
  emissiveColorOutput(pbrComputeEmissive(emissive_tex, inputs.sparse_coord));
  diffuseShadingOutput(occlusion * pbrComputeDiffuse(vectors.normal, diffColor));
  specularShadingOutput(specOcclusion * pbrComputeSpecular(vectors, specColor, roughness));
}
