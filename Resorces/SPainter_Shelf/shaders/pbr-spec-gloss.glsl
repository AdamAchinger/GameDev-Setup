//- Allegorithmic Specular/Glossiness PBR shader
//- ============================================
//-
//- Import from libraries.
import lib-sss.glsl
import lib-pbr.glsl
import lib-emissive.glsl
import lib-pom.glsl
import lib-utils.glsl

// Link Specular/Glossiness skin MDL for Iray
//: metadata {
//:   "mdl" : "mdl::alg::materials::skin_specular_glossiness::skin_specular_glossiness"
//: }

//- Channels needed for spec/gloss workflow are bound here.
//: param auto channel_diffuse
uniform SamplerSparse diffuse_tex;
//: param auto channel_specular
uniform SamplerSparse specularcolor_tex;
//: param auto channel_glossiness
uniform SamplerSparse glossiness_tex;


void shade(V2F inputs)
{
  // Apply parallax occlusion mapping if possible
  vec3 viewTS = worldSpaceToTangentSpace(getEyeVec(inputs.position), inputs);
  applyParallaxOffset(inputs, viewTS);

  float glossiness = getGlossiness(glossiness_tex, inputs.sparse_coord);
  vec3 specColor = getSpecularColor(specularcolor_tex, inputs.sparse_coord);
  vec3 diffColor = getDiffuse(diffuse_tex, inputs.sparse_coord) * (vec3(1.0) - specColor);
  // Get detail (ambient occlusion) and global (shadow) occlusion factors
  float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();

  LocalVectors vectors = computeLocalFrame(inputs);

  // Feed parameters for a physically based BRDF integration
  emissiveColorOutput(pbrComputeEmissive(emissive_tex, inputs.sparse_coord));
  albedoOutput(diffColor);
  diffuseShadingOutput(occlusion * envIrradiance(vectors.normal));
  specularShadingOutput(occlusion * pbrComputeSpecular(vectors, specColor, 1.0 - glossiness));
  sssCoefficientsOutput(getSSSCoefficients(inputs.sparse_coord));
}
