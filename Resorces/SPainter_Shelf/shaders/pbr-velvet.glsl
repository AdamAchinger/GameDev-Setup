import lib-sampler.glsl
import lib-pbr.glsl
import lib-normal.glsl
import lib-utils.glsl

//: param auto channel_basecolor
uniform SamplerSparse basecolor_tex;
//: param auto channel_roughness
uniform SamplerSparse roughness_tex;
//: param auto channel_metallic
uniform SamplerSparse metallic_tex;
//: param auto channel_specularlevel
uniform SamplerSparse specularlevel_tex;

//--------EXTERNAL ---------------------------------------------------//
//: param custom { "default": "fibers", "label": "Fibers Texture", "usage": "texture" }
uniform sampler2D fiber_tex;
//: param custom { "default": 50.0, "label": "Fiber Scale", "min": 1.0, "max": 100.0 }
uniform float fiber_scale;
//: param custom { "default": 0.5, "label": "Sheen", "min": 0.0, "max": 2.0 }
uniform float sheen;
//: param custom { "default": "sheen_noise", "label": "Sheen Variation", "usage": "texture" }
uniform sampler2D sheen_noise;
//: param custom { "default": 3.0, "label": "Variation Scale", "min": 1.0, "max": 10.0 }
uniform float sheen_noise_scale;
//: param custom { "default": 8.0, "label": "Edginess", "min": 1.0, "max": 16.0 }
uniform float edginess;
//: param custom { "default": 0.75, "label": "Fabric Tint", "min": 0.0, "max": 1.0 }
uniform float tint_amount;


// SHADER
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

  LocalVectors vectors = computeLocalFrame(inputs);

  // Material
  vec3 diffuse = occlusion * pbrComputeDiffuse(vectors.normal, diffColor);
  vec3 specular = specOcclusion * pbrComputeSpecular(vectors, specColor, roughness);

  // Velvet reflection, simply summed over previous computation
  float cosine = clamp(dot(normalize(vectors.normal), normalize(vectors.eye)), 0.0, 1.0);
  float sine = sqrt(1.0 - cosine * cosine);
  float rand = texture(fiber_tex, inputs.tex_coord * fiber_scale).r;
  float noise = texture(sheen_noise, inputs.tex_coord * sheen_noise_scale).r;
  float intensity = rand * (sheen * noise + 0.002) * pow(sine, edginess);
  vec3 tint = mix(vec3(1.0), diffColor, tint_amount);
  diffuse += intensity * mix(occlusion, 1.0, 1.0 / edginess) * envIrradiance(vectors.normal) * tint;

  diffuseShadingOutput(diffuse);
  specularShadingOutput(specular);
}
