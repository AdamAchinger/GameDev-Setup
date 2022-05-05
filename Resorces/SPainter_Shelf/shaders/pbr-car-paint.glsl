import lib-sampler.glsl
import lib-pbr.glsl

//: param auto channel_basecolor
uniform SamplerSparse basecolor_tex;
//: param auto channel_roughness
uniform SamplerSparse roughness_tex;
//: param auto channel_metallic
uniform SamplerSparse metallic_tex;

//--------EXTERNAL ---------------------------------------------------//
//: param custom { "default": "flakes", "label": "Flakes Texture", "usage": "texture" }
uniform sampler2D flakes_tex;

//: param custom { "default": 25, "label": "Flakes Scale", "min": 1.0, "max": 100.0 }
uniform float flakes_scale;

//: param custom { "default": 0.75, "label": "Flakes Intensity", "min": 0.0, "max": 1.0 }
uniform float normalPerturbation;

//: param custom { "default": [0.3,0.3,0], "label": "Flake Color", "widget": "color" }
uniform vec3 flakeLayerColor;

//: param custom { "default": [0.2,0.0,0.2], "label": "Secondary Paint Color", "widget": "color" }
uniform vec3 paintColorMid;

//: param custom { "default": [0.3,0.2,0.0], "label": "Tertiary Paint Color", "widget": "color" }
uniform vec3 paintColor2;


void shade(V2F inputs)
{
  vec3 baseColor = getBaseColor(basecolor_tex, inputs.sparse_coord);
  float metallic = getMetallic(metallic_tex, inputs.sparse_coord);
  vec3 diffColor = generateDiffuseColor(baseColor, metallic);
  // Get detail (ambient occlusion) and global (shadow) occlusion factors
  float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();

  LocalVectors vectors = computeLocalFrame(inputs);

  //Flakes
  vec3 vFlakesNormal = texture(flakes_tex, inputs.tex_coord * flakes_scale).rgb;
  vec3 vNp1 = normalize(vectors.normal + 0.2 * vFlakesNormal);
  vec3 vNp2 = normalize(vectors.normal + normalPerturbation * vFlakesNormal);

  vec3 vNp1World = computeWSNormal(inputs.sparse_coord, inputs.tangent, inputs.bitangent, vNp1);
  float fFresnel1 = max(0.0, dot(vNp1World, vectors.eye));

  vec3 vNp2World = computeWSNormal(inputs.sparse_coord, inputs.tangent, inputs.bitangent, vNp2);
  float fFresnel2 = max(0.0, dot(vNp2World, vectors.eye));

  float fFresnel1Sq = fFresnel1 * fFresnel1;
  vec3 paintColor =
    fFresnel1 * baseColor +
    fFresnel1Sq * paintColorMid +
    fFresnel1Sq * fFresnel1Sq * paintColor2 +
    pow(fFresnel2, 16.0) * flakeLayerColor;
  diffColor = mix(diffColor, paintColor, metallic);

  diffuseShadingOutput(occlusion * pbrComputeDiffuse(vectors.normal, diffColor));
}
