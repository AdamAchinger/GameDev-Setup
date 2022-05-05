import lib-vectors.glsl

//- Clay shader
//- ===========

//: param custom { "default": [0.3, 0.07, 0.05], "label": "Color", "widget": "color" }
uniform vec3 clayColor;

//: param custom { "default": 0.25, "label": "Glossiness", "min": 0.001, "max": 1.0 }
uniform float clayGloss;

//: param custom { "default": [0.3, 0.3, 0.3], "label": "Dirt Color", "widget": "color" }
uniform vec3 dirtColor;

//: param custom { "default": 0.25, "label": "Dirt Amount", "min": 0.0, "max": 1.0 }
uniform float clayDirt;

//: param custom { "default": 0.1, "label": "Ambient", "min": 0.0, "max": 1.0 }
uniform float ambient;

//- Entry point of the shader.
void shade(V2F inputs)
{
  //- We generate local world space vectors
  LocalVectors vectors = computeLocalFrame(inputs);

  //- Simulate camera aligned lighting
  float NdV = max(0.0, dot(vectors.normal, vectors.eye));

  //- We generate main color from screen-space curvature
  vec3 dNdx = dFdx(vectors.normal);
  vec3 dNdy = dFdy(vectors.normal);
  vec3 xneg = vectors.normal - dNdx;
  vec3 xpos = vectors.normal + dNdx;
  vec3 yneg = vectors.normal - dNdy;
  vec3 ypos = vectors.normal + dNdy;
  float depth = length(inputs.position);
  float curvature = 2.0 * (cross(xneg, xpos).y - cross(yneg, ypos).x) / depth;

  float dirt = clamp(-4.0 * curvature, 0.0, 1.0) * clayDirt;
  vec3 diffuse = mix(clayColor, dirtColor, dirt);
  float specular = clayGloss * (1.0 - dirt) * (0.5 * curvature + 0.5);

  //- Ambient and diffuse contribution
  diffuseShadingOutput((ambient + NdV) * diffuse);
  //- Specular contribution
  specularShadingOutput(vec3(specular * pow(NdV, 64.0 * clayGloss)));
}
