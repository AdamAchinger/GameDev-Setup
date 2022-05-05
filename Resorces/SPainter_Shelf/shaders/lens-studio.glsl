//-----------------------------------------------------------------------
// Copyright (c) 2017 Snap Inc.
//-----------------------------------------------------------------------

//- Import from libraries.
import lib-pbr.glsl
import lib-pom.glsl

//- Declare the iray mdl material to use with this shader.
//: metadata {
//:   "mdl":"mdl::alg::materials::physically_metallic_roughness::physically_metallic_roughness"
//: }

//- Show back faces as there may be holes in front faces.
//: state cull_face off

//- Enable alpha blending
//: state blend over_premult

//- Channels needed for metal/rough workflow are bound here.
//: param auto channel_basecolor
uniform SamplerSparse basecolor_tex;
//: param auto channel_roughness
uniform SamplerSparse roughness_tex;
//: param auto channel_metallic
uniform SamplerSparse metallic_tex;
//: param auto channel_opacity
uniform SamplerSparse opacity_tex;


//: param custom { "default": true }
uniform bool DebugFringelessMetallic;
//: param custom { "default": false }
uniform bool DebugAcesToneMapping;
//: param custom { "default": true }
uniform bool DebugLinearToneMapping;
//: param custom { "default": false }
uniform bool DebugAlbedo;
//: param custom { "default": false }
uniform bool DebugSpecColor;
//: param custom { "default": false }
uniform bool DebugRoughness;
//: param custom { "default": false }
uniform bool DebugNormal;
//: param custom { "default": false }
uniform bool DebugAo;
//: param custom { "default": 1.0 }
uniform float DebugDirectDiffuse;
//: param custom { "default": 1.0 }
uniform float DebugDirectSpecular;
//: param custom { "default": 1.0 }
uniform float DebugIndirectDiffuse;
//: param custom { "default": 1.0 }
uniform float DebugIndirectSpecular;


#define SUBSTANCE
#define DEBUG
#define DEVICE_IS_FAST

///////////////////////////////////////////////////////////////////////////////
// std_pbr.glsl -- BEGIN

// Requirements:
//
// Depending on platform, some or all of the below functions must be defined by the client shader before this file is included (a form of callback):
//
// sampleSpecularEnvmapLod()
// sampleRadiance()
// calculateDiffuseIrradiance()

#ifndef MAYA
float saturate(float value) {
    return clamp(value, 0.0, 1.0);
}

vec3 saturate(vec3 value) {
    return clamp(value, 0.0, 1.0);
}
#endif

#if defined(MAYA) || defined(SUBSTANCE)
float srgbToLinear(float x) {
    return x <= 0.04045 ? x * 0.0773993808 : pow((x + 0.055) / 1.055, 2.4);
}

float linearToSrgb(float x) {
    return x <= 0.0031308 ? 12.92 * x : 1.055 * pow(x, 0.41666) - 0.055;
}
#else
float srgbToLinear(float x) {
    return pow(x, 2.2);
}

float linearToSrgb(float x) {
    return pow(x, 1.0 / 2.2);
}
#endif

vec3 srgbToLinear(vec3 color) {
    return vec3(srgbToLinear(color.r), srgbToLinear(color.g), srgbToLinear(color.b));
}

vec3 linearToSrgb(vec3 color) {
    return vec3(linearToSrgb(color.r), linearToSrgb(color.g), linearToSrgb(color.b));
}

struct SurfaceProperties {
    vec3 albedo;
    float opacity;
    vec3 normal;
    float metallic;
    float roughness;
    vec3 emissive;
    vec3 ao;

    // Derived surface properties
    vec3 specColor;
};

struct LightingComponents {
    vec3 directDiffuse;
    vec3 directSpecular;
    vec3 indirectDiffuse;
    vec3 indirectSpecular;
    vec3 emitted;
    vec3 transmitted;
};

struct LightProperties {
    vec3 direction;
    vec3 color;
    float attenuation;
};

struct DebugOptions {
    bool enableMetallic;
    bool envBRDFApprox;
    bool envBentNormal;
    float envMip;
    bool envSampling;
    bool envSamplingGroundTruth;
    int envSamples;
    int envRandomize;
    bool fringelessMetallic;
    bool acesToneMapping;
    bool linearToneMapping;
    bool albedo;
    bool specColor;
    bool roughness;
    bool normal;
    bool ao;
    float directDiffuse;
    float directSpecular;
    float indirectDiffuse;
    float indirectSpecular;
};

SurfaceProperties defaultSurfaceProperties() {
    SurfaceProperties surfaceProperties;

    surfaceProperties.albedo = vec3(0.0);
    surfaceProperties.opacity = 1.0;
    surfaceProperties.normal = vec3(0.0);
    surfaceProperties.metallic = 0.0;
    surfaceProperties.roughness = 0.0;
    surfaceProperties.emissive = vec3(0.0);
    surfaceProperties.ao = vec3(1.0);

    return surfaceProperties;
}

LightingComponents defaultLightingComponents() {
    LightingComponents lighting;

    lighting.directDiffuse = vec3(0.0);
    lighting.directSpecular = vec3(0.0);
    lighting.indirectDiffuse = vec3(1.0);
    lighting.indirectSpecular = vec3(0.0);
    lighting.emitted = vec3(0.0);
    lighting.transmitted = vec3(0.0);

    return lighting;
}

DebugOptions defaultDebugOptions() {
    DebugOptions debug;

    debug.enableMetallic = true;
    debug.envBRDFApprox = true;
    debug.envBentNormal = true;
    debug.envMip = -1.0;
    debug.envSampling = false;
    debug.envSamplingGroundTruth = false;
#ifndef MOBILE
    debug.envSamples = 500;
    debug.envRandomize = 333;
#endif
    debug.fringelessMetallic = true;
    debug.acesToneMapping = false;
    debug.linearToneMapping = false;
    debug.albedo = false;
    debug.specColor = false;
    debug.roughness = false;
    debug.normal = false;
    debug.directDiffuse = 1.0;
    debug.indirectDiffuse = 1.0;
    debug.directSpecular = 1.0;
    debug.indirectSpecular = 1.0;

    return debug;
}

vec3 fresnelSchlickSub(float cosTheta, vec3 F0, vec3 fresnelMax) {
    float b = 1.0 - cosTheta;
    float b2 = b * b;
    float b5 = b2 * b2 * b;  // b5 = pow(1-cosTheta, 5);
    return F0 + (fresnelMax - F0) * b5;
}

vec3 fresnelSchlick(float cosTheta, vec3 F0) {
    return fresnelSchlickSub(cosTheta, F0, vec3(1.0));
}

float Dggx(float NdotH, float roughness) {
    float a = roughness * roughness;
    float a2 = a * a;
    float NdotH2 = NdotH * NdotH;
    float b = NdotH2 * (a2 - 1.0) + 1.0;
    float b2 = b * b;
    return a2 / b2;
}

float Gggx1(float NdotV, float roughness) {
    float k = roughness + 1.0;
    k = k * k * 0.125;
    return NdotV * (1.0 - k) + k;  // The NdotV and NdotL from the numerator of G cancel with the NdotV and NdotL in the denominator of the Cook Torrance BRDF. We take the reciprocal together in G.
}

float Gggx(float NdotL, float NdotV, float roughness) {
    // Schlick approximation of Smith G for GGX, a la UE4: http://blog.selfshadow.com/publications/s2013-shading-course/karis/s2013_pbs_epic_notes_v2.pdf
    return 1.0 / (Gggx1(NdotL, roughness) * Gggx1(NdotV, roughness));
}

vec3 calculateDirectDiffuse(SurfaceProperties surfaceProperties, vec3 L) {
    return vec3(saturate(dot(surfaceProperties.normal, L)));
}

vec3 calculateDirectSpecular(SurfaceProperties surfaceProperties, vec3 L, vec3 V) {
    float r = surfaceProperties.roughness;
    vec3 F0 = surfaceProperties.specColor;
    vec3 N = surfaceProperties.normal;
    vec3 H = normalize(L + V);
    float NdotL = saturate(dot(N, L));
    float NdotV = saturate(dot(N, V));
    float NdotH = saturate(dot(N, H));
    float VdotH = saturate(dot(V, H));

#ifdef DEVICE_IS_FAST
    // Cook torrance Specular with GGX NDF. Note: the NdotL and NdotV from the denominator of Cook Torrance cancels with the numerator of G.
    // The pi disappears and the NdotL appears the same way it does in the diffuse lighting function (BRDF is modulated by NdotL to get actual lighting).
    return Dggx(NdotH, r) * Gggx(NdotL, NdotV, r) * 0.25 * NdotL * fresnelSchlick(VdotH, F0);
#else // #ifdef DEVICE_IS_FAST
    // Normalized Blinn-Phong from Seb Lagarde: https://seblagarde.wordpress.com/2011/08/17/hello-world/
    float specPower = exp2(11.0 - 10.0 * r);  // Simplified based on: gloss = 1 - r
    return (specPower * 0.125 + 0.25) * pow(NdotH, specPower) * NdotL * fresnelSchlick(VdotH, F0);
#endif // #else // #ifdef DEVICE_IS_FAST
}

LightingComponents accumulateLight(LightingComponents lighting, LightProperties light, SurfaceProperties surfaceProperties, vec3 V) {
    lighting.directDiffuse += calculateDirectDiffuse(surfaceProperties, light.direction) * light.color * light.attenuation;
    lighting.directSpecular += calculateDirectSpecular(surfaceProperties, light.direction, V) * light.color * light.attenuation;
    return lighting;
}

#ifndef SUBSTANCE

vec3 calculateIndirectDiffuse(SurfaceProperties surfaceProperties) {
    return calculateDiffuseIrradiance(surfaceProperties.normal);
}

float calculateEnvMipFromRoughness(float roughness, DebugOptions debug) {
#ifdef SCENARIUM
    // In Scenarium we use an importance sampling convolver to render our env maps in lat-long format.
    // The tools that generate mips must match roughnessExponentInv and maxRoughnessMip at bake time.
    // The maxRoughnessMip specifies which mip level contains the roughest convolution. This is usually not the last mip, as a single pixel can't represent the necessary variation in lighting at roughness=1.
    // The shape of the roughness-to-mip curve is controlled by the exponent, to allocate the most appropriate amount of detail to each mip.
    // If the resulution is too low for a given convolution, the reflections will look aliased.
    // If the resolution is too high, you're not getting as many useful mip grades.
    const float roughnessExponentInv = 1.0/1.5; // NOTE: we hack the exponent (doesn't quite match the exponent used at bake time) to match the importance sampled reference better. It seems that due to the low-ish number of mips, a sharper mip often gets mixed in, and that effectively makes the roughness look sharper. This hack compensates a bit. Bottom of this page might also offer a clue to investigate: https://docs.knaldtech.com/doku.php?id=specular_lys
    const float maxRoughnessMip = 5.0;
    float mip = saturate(pow(roughness, roughnessExponentInv)) * maxRoughnessMip;
#else
    // In Maya we use cubemaps convolved by Lys.
    // maxRoughnessMip must match the roughest mip as set in Lys.
    float gloss = 1.0 - roughness;
    float lysRoughness = 1.0 - gloss*gloss;  // Match the env map roughnes curve of Lys to proper GGX (not sure why Lys expects roughness to be the inverse of gloss squared, but this is the closest match I can get). Need to look further into this: https://docs.knaldtech.com/doku.php?id=specular_lys
    const float maxRoughnessMip = 7.0;
    float mip = lysRoughness * maxRoughnessMip;
#endif

#ifdef DEBUG
    if (debug.envMip >= 0.0) {
        mip = debug.envMip;
    }
#endif

    return mip;
}

// Makes cubemap reflections behave closer to the reference, taking into account view vector dependence.
// Ie: correct for the fact that the env map is preconvolved assuming V == N, which does not hold in general.
// The idea came from Frostbite, but our version is much simplified and has less artifacts (ours doesn't warp reflections on smooth surfaces).
// http://www.frostbite.com/wp-content/uploads/2014/11/course_notes_moving_frostbite_to_pbr_v2.pdf
vec3 getSpecularDominantDir(vec3 N, vec3 R, float roughness, DebugOptions debug) {
#ifdef DEVICE_IS_FAST
#ifdef DEBUG
    if (debug.envBentNormal)
#endif
    {
        float lerpFactor = roughness * roughness * roughness;
        return normalize(mix(R, N, lerpFactor));
    }
#endif // #ifdef DEVICE_IS_FAST
    return R;
}

// Approximates the effects of fresnel and G for environment maps.
vec3 envBRDFApprox(SurfaceProperties surfaceProperties, float NdotV, DebugOptions debug) {
#ifdef DEVICE_IS_FAST
#ifdef DEBUG
    bool useBRDFApprox = debug.envBRDFApprox;
#else
    bool useBRDFApprox = true;
#endif
#else // #ifdef DEVICE_IS_FAST
    bool useBRDFApprox = false;
#endif // #else // #ifdef DEVICE_IS_FAST

    if (useBRDFApprox) {
        // From UE4, based on Lazarov: https://www.unrealengine.com/blog/physically-based-shading-on-mobile
        const vec4 c0 = vec4(-1.0, -0.0275, -0.572, 0.022);
        const vec4 c1 = vec4(1.0, 0.0425, 1.04, -0.04);
        vec4 r = surfaceProperties.roughness * c0 + c1;
        float a004 = min(r.x * r.x, exp2(-9.28 * NdotV)) * r.x + r.y;
        vec2 AB = vec2(-1.04, 1.04) * a004 + r.zw;
        return surfaceProperties.specColor * AB.x + AB.y;
    }
    else {
        // From Seb Lagarde: https://seblagarde.wordpress.com/2011/08/17/hello-world/
        // Do fresnel (F), but drive down the brightness at the edge as the roughness gets higher (G). Without this you get glowing edges on rough materials.
        vec3 fresnelMax = max(vec3(1.0 - surfaceProperties.roughness), surfaceProperties.specColor);
        return fresnelSchlickSub(NdotV, surfaceProperties.specColor, fresnelMax);
    }
}

#ifndef MOBILE
#include <std_importance_sampling.glsl>
#endif

// Calculates environment reflections
vec3 calculateIndirectSpecular(SurfaceProperties surfaceProperties, vec3 V, DebugOptions debug) {
#ifdef MAYA
    if (debug.envSamplingGroundTruth) {
        return calculateIndirectSpecularGroundTruth(surfaceProperties, V, debug);  // Allow to compare the results of environment mapping calculated below, versus the realtime importance sampled evaluation of the full BRDF.
    }
#endif

    vec3 N = surfaceProperties.normal;

#ifdef MAYA
    // Orient the envmap like Substance and Scenarium.
    N = vec3(-N.z, N.y, -N.x);
    V = vec3(-V.z, V.y, -V.x);
#endif

    vec3 R = reflect(-V, N);

    R = getSpecularDominantDir(N, R, surfaceProperties.roughness, debug);

    float mip = calculateEnvMipFromRoughness(surfaceProperties.roughness, debug);

    vec3 envmap = sampleSpecularEnvmapLod(R, mip);

#ifdef MAYA
    if (debug.envSampling) {
        envmap = prefilterEnvmap(surfaceProperties.roughness, R, debug);  // Allow to compare the results of the envmap sampled above, versus the realtime importance sampled reference.
    }
#endif

    return envmap * envBRDFApprox(surfaceProperties, abs(dot(N, V)), debug); // We use abs instead of saturate here to avoid over-brightening the back sides of normal map bumps, which would not be visible in real life. Saturate just clamps the brightness of fresnel on the back sides of bumps to full bright, whereas abs peaks and trails off, making the artifact slightly less offensive.
}
#endif // #ifndef SUBSTANCE

// This function derives surface properties that were not in the input material data (ex: in a metallic material model, spec color, ie: F0, is derived from albedo and the matallic parameter).
SurfaceProperties calculateDerivedSurfaceProperties(SurfaceProperties surfaceProperties, DebugOptions debug) {
#ifdef DEBUG
    if (debug.enableMetallic) {
        if (debug.fringelessMetallic) {
#endif
            // The classic way of blending between metals and dielectrics causes bright fringes at the transition.
            // This same blend in the specular model does not cause such finging, and we observe that the shading result is darker in the middle of the blend range in the specular model than in the metallic model.
            // Ie: the sum of the diffuse and specular lighting with the classic metallic blend is brighter than it should be in the middle of the blend range.
            // Knowing that the undesirable fringe is brighter than the reference, we ramp down the brightness of diffuse albedo and specular color faster by multiplying in an extra metallic term.
            // The result of this is quite close to the reference, though it's impossible to do "correct" material blending in the metallic model since diffuse and specular colors are confounded.
            surfaceProperties.specColor = mix(vec3(0.04), surfaceProperties.albedo*surfaceProperties.metallic, surfaceProperties.metallic);
            surfaceProperties.albedo = mix(surfaceProperties.albedo*(1.0-surfaceProperties.metallic), vec3(0.0), surfaceProperties.metallic);
#ifdef DEBUG
        } else {
            surfaceProperties.specColor = mix(vec3(0.04), surfaceProperties.albedo, surfaceProperties.metallic);
            surfaceProperties.albedo = mix(surfaceProperties.albedo, vec3(0.0), surfaceProperties.metallic);
        }
    }
#endif
    return surfaceProperties;
}

// This function does the final logical combination of surface properties and lighting.
vec3 combineSurfacePropertiesWithLighting(SurfaceProperties surfaceProperties, LightingComponents lighting, bool enablePremultipliedAlpha) {
    vec3 diffuse = surfaceProperties.albedo * (lighting.directDiffuse + lighting.indirectDiffuse * surfaceProperties.ao);
    vec3 specular = lighting.directSpecular + lighting.indirectSpecular;
    vec3 emitted = surfaceProperties.emissive;
    vec3 transmitted = lighting.transmitted;

    if (enablePremultipliedAlpha) {
        diffuse *= surfaceProperties.opacity;
    }

    vec3 result = diffuse + specular + emitted + transmitted;

    return result;
}

vec4 debugOutput(vec4 regularOutput, SurfaceProperties surfaceProperties, LightingComponents lighting, DebugOptions debug) {
    vec4 result = regularOutput;
    result.a = 1.0;

    if (debug.albedo) {
        result.xyz = surfaceProperties.albedo;
    } else if (debug.specColor) {
        result.xyz = surfaceProperties.specColor;
    } else if (debug.roughness) {
        result.xyz = vec3(srgbToLinear(surfaceProperties.roughness));
    } else if (debug.normal) {
        result.xyz = srgbToLinear(surfaceProperties.normal * 0.5 + 0.5);
    } else if (debug.ao) {
        result.xyz = surfaceProperties.ao;
    } else {
        result = regularOutput;
    }

    return result;
}

vec3 linearToneMapping(vec3 x) {
    // Modified version of John Hable's curve that is linear except for the shoulder region, so it avoids highlight clipping (see comment section in https://mynameismjp.wordpress.com/2010/04/30/a-closer-look-at-tone-mapping/)
    float a = 1.8;  // Mid
    float b = 1.4;  // Toe
    float c = 0.5;  // Shoulder
    float d = 1.5;  // Mid

    return (x * (a * x + b)) / (x * (a * x + c) + d);
}

vec3 acesToneMapping(vec3 x) {
    // Approximated ACES RRT + ODT curve from here: https://knarkowicz.wordpress.com/2016/01/06/aces-filmic-tone-mapping-curve/
    float a = 2.51;
    float b = 0.03;
    float c = 2.43;
    float d = 0.59;
    float e = 0.14;
    return (x * (a * x + b)) / (x * (c * x + d) + e);
}

// std_pbr.glsl -- END
///////////////////////////////////////////////////////////////////////////////


vec3 calculateIndirectDiffuse(SurfaceProperties surfaceProperties) {
    return envIrradiance(surfaceProperties.normal);
}

vec3 calculateIndirectSpecular(SurfaceProperties surfaceProperties, LocalVectors vectors) {
    return pbrComputeSpecular(vectors, surfaceProperties.specColor, surfaceProperties.roughness);
}

// This function evaluates all lighting for a surface based on its surface properties and all the existing lighting in the environment (multiple lights, ambient, reflections, etc).
LightingComponents evaluateLighting(SurfaceProperties surfaceProperties, LocalVectors vectors, DebugOptions debug) {
    LightingComponents lighting;

    vec3 N = surfaceProperties.normal;
    vec3 L = vec3(0, 1, 0);//normalize(-light0Dir);
    vec3 V = vectors.eye;
    vec3 H = normalize(L+V);
    vec3 R = reflect(-V, N);

    lighting.directDiffuse = vec3(0.0);
    lighting.directSpecular = vec3(0.0);
    lighting.indirectDiffuse = calculateIndirectDiffuse(surfaceProperties);
    lighting.indirectSpecular = calculateIndirectSpecular(surfaceProperties, vectors);
    lighting.emitted = surfaceProperties.emissive;

    // Debug sliders
    lighting.directDiffuse *= debug.directDiffuse;
    lighting.directSpecular *= debug.directSpecular;
    lighting.indirectDiffuse *= debug.indirectDiffuse;
    lighting.indirectSpecular *= debug.indirectSpecular;

    return lighting;
}

DebugOptions setupDebugOptions() {
    DebugOptions debug = defaultDebugOptions();

    debug.fringelessMetallic = DebugFringelessMetallic;
    debug.acesToneMapping = DebugAcesToneMapping;
    debug.linearToneMapping = DebugLinearToneMapping;
    debug.albedo = DebugAlbedo;
    debug.specColor = DebugSpecColor;
    debug.roughness = DebugRoughness;
    debug.normal = DebugNormal;
    debug.ao = DebugAo;
    debug.directDiffuse = DebugDirectDiffuse;
    debug.directSpecular = DebugDirectSpecular;
    debug.indirectDiffuse = DebugIndirectDiffuse;
    debug.indirectSpecular = DebugIndirectSpecular;

    return debug;
}


//- Shader entry point.
void shade(V2F inputs)
{
    // Apply parallax occlusion mapping if possible
    vec3 viewTS = worldSpaceToTangentSpace(getEyeVec(inputs.position), inputs);
    applyParallaxOffset(inputs, viewTS);

    LocalVectors vectors = computeLocalFrame(inputs);

    DebugOptions debug = setupDebugOptions();

    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // Set up surface properties

    SurfaceProperties surfaceProperties;
    surfaceProperties.albedo = getBaseColor(basecolor_tex, inputs.sparse_coord);
    surfaceProperties.opacity = getOpacity(opacity_tex, inputs.sparse_coord);
    surfaceProperties.roughness = getRoughness(roughness_tex, inputs.sparse_coord);
    surfaceProperties.metallic = getMetallic(metallic_tex, inputs.sparse_coord);
    surfaceProperties.ao = vec3(getAO(inputs.sparse_coord));
    surfaceProperties.normal = vectors.normal;

    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // Evaluate lighting

    surfaceProperties = calculateDerivedSurfaceProperties(surfaceProperties, debug);

    LightingComponents lighting = evaluateLighting(surfaceProperties, vectors, debug);

    vec3 result = combineSurfacePropertiesWithLighting(surfaceProperties, lighting, true);

    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // Output

    if (debug.acesToneMapping) {
        result = acesToneMapping(result);
    } else if (debug.linearToneMapping) {
        result = linearToneMapping(result);
    }

    vec4 colorOut;
    colorOut = vec4(result, surfaceProperties.opacity);

    colorOut = debugOutput(colorOut, surfaceProperties, lighting, debug);

    alphaOutput(colorOut.a);
    diffuseShadingOutput(colorOut.rgb);
}
