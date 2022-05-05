import lib-alpha.glsl
import lib-emissive.glsl
import lib-env.glsl
import lib-sampler.glsl
import lib-vectors.glsl

//: param auto channel_diffuse
uniform SamplerSparse diffuse_tex;
//: param auto channel_specular
uniform SamplerSparse specular_tex;
//: param auto channel_glossiness
uniform SamplerSparse glossiness_tex;

//: param auto main_light
uniform vec4 light_main;

//: param custom {
//:   "default": 5.0,
//:   "label": "Fresnel Power",
//:   "min": 1.0,
//:   "max": 10.0
//: }
uniform float fresnel_power;

//: param custom {
//:   "default": 1.0,
//:   "label": "Fresnel Strength",
//:   "min": 0.0,
//:   "max": 1.0
//: }
uniform float fresnel_str;

//: param custom {
//:   "default": 0.25,
//:   "label": "Ambient Light",
//:   "min": 0.0,
//:   "max": 1.0
//: }
uniform float ambient_str;

//: param custom {
//:   "default": 1.0,
//:   "label": "Light Intensity",
//:   "min": 0.0,
//:   "max": 10.0
//: }
uniform float light_str;


void shade(V2F inputs)
{
  vec3 diffColor = getDiffuse(diffuse_tex, inputs.sparse_coord);
  vec3 specColor = getSpecularColor(specular_tex, inputs.sparse_coord);
  float glossiness = getGlossiness(glossiness_tex, inputs.sparse_coord);
  float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();

  // Compute local vectors and cos of some useful angles
  inputs.normal = normalize(inputs.normal);
  LocalVectors vectors = computeLocalFrame(inputs);

  // Emissive contribution
  emissiveColorOutput(pbrComputeEmissive(emissive_tex, inputs.sparse_coord));

  // Discard current fragment on the basis of the opacity channel
  // and a user defined threshold
  alphaKill(inputs.sparse_coord);

  float ndl = max(0.0, dot(vectors.normal, light_main.xyz));
  float ndv = clamp(dot(vectors.normal, vectors.eye), 0.0, 1.0);
  float ndh = max(0.0, dot(vectors.normal, normalize(light_main.xyz + vectors.eye)));

  // Ambient and diffuse contribution
  vec3 Kd = (envIrradiance(inputs.normal) * ambient_str + ndl) * diffColor * occlusion;

  // Specular contribution (normalized Blinn-Phong)
  float exponent = exp2(9.0 * glossiness);
  vec3 Ks = fresnel_str * mix(vec3(pow(1.0 - ndv, fresnel_power)), vec3(1.0), specColor); // Fresnel
  Ks *= ndl * pow(ndh, exponent); // Reflection
  Ks *= (0.125 * exponent + 1.0); // Normalization
  Ks *= mix(occlusion, 1.0, glossiness * glossiness); // Occlusion

  // Multiply by light irradiance (estimation of texel irradiance)
  diffuseShadingOutput(light_str * environment_exposure * Kd);
  specularShadingOutput(light_str * environment_exposure * Ks);
}
