//********************************************************************
// V-Ray Shaders for Substance Painter
// 
// Copyright (c) 2020 Chaos Software Ltd
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//********************************************************************

//- Substance Painter VRayMtl shader
//- ====================================

//- Channels needed for diffuse/specular workflow are bound here.
//: param auto channel_diffuse
uniform SamplerSparse diffuse_tex;
//: param auto channel_glossiness
uniform SamplerSparse glossiness_tex;
//: param auto channel_specular
uniform SamplerSparse specular_tex;
//: param auto channel_transmissive
uniform SamplerSparse transmissive_tex;
//: param auto channel_emissive
uniform SamplerSparse emissive_tex;
//: param auto channel_anisotropyangle
uniform SamplerSparse anisotropyangle_tex;
//: param auto channel_anisotropylevel
uniform SamplerSparse anisotropylevel_tex;

import lib-env.glsl
import lib-random.glsl
import lib-sampler.glsl
import lib-utils.glsl
import lib-vectors.glsl

//: state cull_face off

//- Parameters from Substance
//: param auto main_light
uniform vec4 uniform_main_light;

// params from lib-pbr.
// We don't want to import the entire lib-pbr because it brings lib-emissive
// and that messes with our self-illumination params

//: param auto environment_max_lod
uniform float maxLod;

//: param custom {
//:   "default": 16,
//:   "label": "Quality",
//:   "widget": "combobox",
//:   "values": {
//:     "Very low (4 spp)": 4,
//:     "Low (16 spp)": 16,
//:     "Medium (32 spp)": 32,
//:     "High (64 spp)": 64,
//:     "Very high (128 spp)": 128,
//:     "Ultra (256 spp)": 256
//:   },
//:   "group": "Common Parameters"
//: }
uniform int nbSamples;

//- VRayMtl specific options

// Group basic options
//: param custom { "default": 1, "label": "Base color amount", "min": 0, "max": 1, "group": "Base color" }
uniform float uniform_diffuse_amount;

// Group reflection
//: param custom { "default": 1, "label": "Reflection amount", "min": 0, "max": 1, "group": "Reflection" }
uniform float uniform_reflection_amount;
//: param custom { "default": true, "label": "Use fresnel", "group": "Reflection", "description": "Make reflection strength dependent on the viewing angle (e.g. glass materials). Depends on IOR." }
uniform bool uniform_use_fresnel;
//: param custom { "default": true, "label": "Lock fresnel IOR to refraction IOR", "group": "Reflection", "description": "Use the same IOR as refraction for reflection fresnel." }
uniform bool uniform_lock_fresnel_ior;
//: param custom { "default": 1.6, "label": "Fresnel IOR", "group": "Reflection", "description": "Separate fresnel reflection IOR, when not locked to refraction IOR." }
uniform float uniform_fresnel_ior;

// Group refraction
//: param custom {
//:   "default": 1, "label": "Refraction amount", "min": 0, "max": 1, "widget": "color", "group": "Refraction"
//: }
uniform float uniform_refraction_amount;
//: param custom {
//:   "default": 1.6, "label": "IOR", "group": "Refraction",
//:   "description": "Index of refraction for refraction effect and fresnel reflections (unless disabled in Reflection options)"
//: }
uniform float uniform_refraction_ior;
//: param custom { "default": 1, "label": "Refraction glossiness", "min": 0, "max": 1, "group": "Refraction", "description": "Separate refraction glossiness" }
uniform float uniform_refraction_glossiness;

// Group BRDF
//: param custom {
//:   "default": 3,
//:   "label": "BRDF type",
//:   "widget": "combobox",
//:   "values": {
//:     "Phong": 0,
//:     "Blinn": 1,
//:     "Ward": 2,
//:     "GGX": 3
//:   },
//:   "group": "BRDF"
//: }
uniform int uniform_brdf_type;
//: param custom { "default": 2, "label": "GGX tail falloff", "min": 1, "max": 10, "group": "BRDF" }
uniform float uniform_gtr_gamma;
//: param custom {
//:   "default": 2,
//:   "label": "Anisotropy axis",
//:   "widget": "combobox",
//:   "values": {
//:     "X": 0,
//:     "Y": 1,
//:     "Z": 2
//:   },
//:   "group": "BRDF",
//:   "description": "Base local axis for anisotropic highlight"
//: }
uniform int uniform_anisotropy_axis;

// Group options
//: param custom {
//:   "default": true, "label": "Trace reflections", "group": "Options",
//:   "description": "When disabled, reflections are not traced, resulting in only highlights. Also the diffuse color is not dimmed by the reflection color, as would happen normally"
//: }
uniform bool uniform_trace_reflections;
//: param custom {
//:   "default": true, "label": "Trace refractions", "group": "Options",
//:   "description": "When disabled, refractions are not traced"
//: }
uniform bool uniform_trace_refractions;
//: param custom {
//:   "default": false, "label": "Double sided", "group": "Options",
//:   "description": "When enabled, V-Ray also shades the back-facing surfaces. Otherwise, the lighting for the outer side is always computed. Can be used to achieve a fake translucent effect for thin objects like paper."
//: }
uniform bool uniform_double_sided;


float vraySqr(float x) {
	return x * x;
}

// Functions from lib-pbr we need to sample the environment properly {{{

/// Compute the inverse of the solid angle of the differential pixel in the
/// cube map pointed at by Wn
/// @param Wn World-space direction
float distortion(vec3 Wn) {
	float sinT = sqrt(1.0-Wn.y*Wn.y);
	return sinT;
}

/// Get the LOD for sampling the environment
/// @param Wn World-space normal
/// @param p Probability of this direction (from sampleBRDF)
/// @param numSamples Total number of samples
float computeLOD(vec3 Wn, float p, int numSamples) {
	if (numSamples < 2) {
		return 0.0;
	} else {
		return max(0.0, maxLod - 1.5 - 0.5 * log2(1.0 + float(numSamples) * p * distortion(Wn)));
	}
}

// }}} End functions from lib-pbr

struct VRayMtlInitParams {
	vec3  Vw;
	vec3  geomNormal;
	vec3  diffuseColor;
	float diffuseAmount;
	float roughness;
	vec3  selfIllum;
	vec3  reflColor;
	float reflAmount;
	float reflGloss;
	bool  traceReflections;
	float metalness;
	float aniso;
	float anisoRotation;
	int   anisoAxis;
	vec3  opacity;
	vec3  refractionColor;
	float refractionAmount;
	float refrGloss;
	bool  traceRefractions;
	float refractionIOR;
	bool  useFresnel;
	float fresnelIOR;
	bool  lockFresnelIOR;
	bool  doubleSided;
	bool  useRoughness;
	float gtrGamma;
	int   brdfType;
	bool approxEnv;
};

struct VRayMtlContext {
	vec3  geomNormal;
	float gloss1;
	float gloss2;
	float reflGloss;
	vec3  e;
	vec3  diff;
	float fresnel;
	vec3  reflNoFresnel;
	vec3  refl;
	vec3  refr;
	vec3  illum;
	vec3  opacity;
	float rtermA;
	float rtermB;
	float gtrGamma;
	float blueNoise; // blue noise value based on fragment
	mat3  nm;
	mat3  inm;
};

float intensity(vec3 v);
vec3  vraySampleBRDF(VRayMtlInitParams params, VRayMtlContext ctx, int sampleIdx, out float brdfContrib);
vec3  vraySampleRefractBRDF(VRayMtlInitParams params, VRayMtlContext ctx, int sampleIdx, out bool totalInternalReflection);

VRayMtlContext initVRayMtlContext(VRayMtlInitParams initParams);

vec3 vrayComputeDirectDiffuseContribution(VRayMtlInitParams params, VRayMtlContext ctx, vec3 lightDir);
vec3 vrayComputeDirectReflectionContribution(VRayMtlInitParams params, VRayMtlContext ctx, vec3 lightDir);

vec3 vrayComputeIndirectDiffuseContribution(VRayMtlInitParams params, VRayMtlContext ctx);
vec3 vrayComputeIndirectReflectionContribution(VRayMtlInitParams params, VRayMtlContext ctx);
vec3 vrayComputeIndirectRefractionContribution(VRayMtlInitParams params, VRayMtlContext ctx, float alpha, vec3 alphaDir, vec3 diffuseIndirect);

int debugOutput = 0;

// Output v as colour, suppress normal shading
void vrayDebug(vec3 v) {
	debugOutput = 1;
	albedoOutput(v);
	diffuseShadingOutput(vec3(1.0));
}

// Output f as grey colour, suppress normal shading
void vrayDebug(float f) {
	vrayDebug(vec3(f));
}

#define PI 3.1415926535897932384626433832795
#define INV_PI (1.0/PI)

vec3 vrayWhiteComplement(vec3 x) {
	return clamp(1.0 - x, 0.0, 1.0);
}

void vrayComputeTangentVectors(vec3 n, out vec3 u, out vec3 v) {
	// It doesn't matter what these vectors are, the result vectors just need to be perpendicular to the normal and to each other
	u = cross(n, vec3(0.643782, 0.98432, 0.324632));
	if (length(u) < 1e-6)
		u = cross(n, vec3(0.432902, 0.43223, 0.908953));
	u = normalize(u);
	v = normalize(cross(n, u));
}

void vrayMakeNormalMatrix(in vec3 n, out mat3 m) {
	vrayComputeTangentVectors(n, m[0], m[1]);
	m[2] = n;
}

float vrayGetFresnelCoeff(float fresnelIOR, vec3 e, vec3 n, vec3 refractDir) {
	if (abs(fresnelIOR - 1.0) < 1e-6)
		return 0.0;

	float cosIn = -dot(e, n);
	float cosR  = -dot(refractDir, n);

	if (cosIn > 1.0 - 1e-12 || cosR > 1.0 - 1e-12) { // View direction is perpendicular to the surface
		float f = (fresnelIOR - 1.0) / (fresnelIOR + 1.0);
		return f * f;
	}

	float ks  = (cosR / cosIn) * fresnelIOR;
	float fs2 = (ks - 1.0) / (ks + 1.0);
	float Fs  = fs2 * fs2;

	float kp  = (cosIn / cosR) * fresnelIOR;
	float fp2 = (kp - 1.0) / (kp + 1.0);
	float Fp  = fp2 * fp2;

	return 0.5 * (Fs + Fp);
}

vec3 vrayGetSpecularDir(float u, float v, float k) {
	float thetaSin = clamp(pow(u, 1.0 / (k + 1.0)), 0.0, 1.0);
	float thetaCos = sqrt(1.0 - thetaSin * thetaSin);
	float phi      = 2.0 * PI * v;
	return vec3(cos(phi) * thetaCos, sin(phi) * thetaCos, thetaSin);
}

vec3 vrayGetPhongDir(float uc, float vc, float glossiness, vec3 view, mat3 nm) {
	vec3 reflectDir = reflect(-view, nm[2]);
	vec3 s          = cross(vec3(0, 1, 0), reflectDir);
	vec3 s1         = cross(reflectDir, s);
	mat3 m;
	m[0]           = normalize(s);
	m[1]           = normalize(s1);
	m[2]           = normalize(reflectDir);
	vec3 sampleDir = vrayGetSpecularDir(uc, vc, glossiness);
	return m * sampleDir;
}

vec3 vrayGetBlinnDir(float uc, float vc, float glossiness, vec3 view, mat3 nm) {
	vec3  nn  = vrayGetSpecularDir(uc, vc, glossiness);
	vec3  h   = normalize(nm * nn);
	float cs  = 2.0 * dot(h, view);
	vec3  dir = normalize(-view + cs * h);
	return dir;
}

vec3 vrayGetSphereDir(float u, float v) {
	float thetaSin = u;
	float thetaCos = sqrt(1.0 - thetaSin * thetaSin);
	float phi      = 2.0 * PI * v;
	return vec3(cos(phi) * thetaCos, sin(phi) * thetaCos, thetaSin);
}

vec3 vrayGetWardDir(float u, float v, float glossiness, vec3 view, mat3 nm) {
	if (u >= 1.0)
		u -= 1.0;

	float k = -log(1.0 - u);
	if (k < 0.0)
		k = 0.0;

	float thetaCos = sqrt(1.0 / (glossiness * k + 1.0));
	vec3  hn       = vrayGetSphereDir(thetaCos, v);
	vec3  hw       = normalize(nm * hn);
	vec3  dir      = reflect(-view, hw);
	return dir;
}

vec3 vrayGetGTR1MicroNormal(float uc, float vc, float sharpness) {
	float sharpness2  = min(sharpness * sharpness, 0.999);
	float thetaCosSqr = (1.0 - pow(sharpness2, 1.0 - uc)) / (1.0 - sharpness2);
	float thetaCos    = sqrt(thetaCosSqr);
	float thetaSin    = sqrt(max(1.0 - thetaCosSqr, 0.0));

	float phi = 2.0 * PI * vc;
	return vec3(cos(phi) * thetaSin, sin(phi) * thetaSin, thetaCos);
}

// Specific implementation when gamma == 2. See section B.2 Physically-Based Shading at Disney from SIGGRAPH 2012
vec3 vrayGetGTR2MicroNormal(float uc, float vc, float sharpness) {
    //vrayDebug(sharpness);
	float thetaCosSqr = (1.0 - uc) / (1.0 + (sharpness * sharpness - 1.0) * uc);
	float thetaCos    = sqrt(thetaCosSqr);
	float thetaSin    = sqrt(max(1.0 - thetaCosSqr, 0.0));

	float phi = 2.0 * PI * vc;
	return vec3(cos(phi) * thetaSin, sin(phi) * thetaSin, thetaCos);
}

// // General implementation  when gamma != 1 and != 2. See section B.2 Physically-Based Shading at Disney from SIGGRAPH 2012
vec3 vrayGetGTRMicroNormal(float uc, float vc, float sharpness, float gtrGamma) {
	float sharpness2  = min(sharpness * sharpness, 0.999);
	float thetaCosSqr = (1.0 - pow(pow(sharpness2, 1.0 - gtrGamma) * (1.0 - uc) + uc, 1.0 / (1.0 - gtrGamma))) / (1.0 - sharpness2);
	float thetaCos    = sqrt(thetaCosSqr);
	float thetaSin    = sqrt(max(1.0 - thetaCosSqr, 0.0));

	float phi = 2.0 * PI * vc;
	return vec3(cos(phi) * thetaSin, sin(phi) * thetaSin, thetaCos);
}

vec3 vrayGetGGXMicroNormal(float uc, float vc, float sharpness, float gtrGamma) {
	if (abs(gtrGamma - 1.0) < 1e-3)
		return vrayGetGTR1MicroNormal(uc, vc, sharpness);
	else if (abs(gtrGamma - 2.0) < 1e-3)
		return vrayGetGTR2MicroNormal(uc, vc, sharpness);
	else // if (gtrLowerLimit <= gtrGamma && gtrGamma <= gtrUpperLimit)
		return vrayGetGTRMicroNormal(uc, vc, sharpness, gtrGamma);
}

float vrayGetGTR1MicrofacetDistribution(float mz, float sharpness) {
	float cosThetaM = mz; // dotf(microNormal, normal);
	if (cosThetaM <= 1e-3)
		return 0.0;

	float cosThetaM2 = vraySqr(cosThetaM);
	float tanThetaM2 = (1.0 / cosThetaM2) - 1.0;
	float sharpness2 = vraySqr(sharpness);
	float div        = PI * log(sharpness2) * cosThetaM2 * (sharpness2 + tanThetaM2);
	// when div<(sharpness2-1.0f)*1e-6f no division by zero will occur (the dividend and the divisor are always negative);
	// div can get 0 in rare situation when the sharpness read from texture mapped in reflection glossines is 0
	// and cosThetaM is 1 (and consequently tanThetaM2 is 0);
	float res = (div < (sharpness2 - 1.0) * 1e-6) ? (sharpness2 - 1.0) / div : 0.0;

	return res;
}

float vrayGetGTR2MicrofacetDistribution(float mz, float sharpness) {
	float cosThetaM = mz; // dotf(microNormal, normal);
	if (cosThetaM <= 1e-3f)
		return 0.0f;

	float cosThetaM2 = vraySqr(cosThetaM);
	float tanThetaM2 = (1.0 / cosThetaM2) - 1.0;
	float sharpness2 = vraySqr(sharpness);
	float div        = PI * vraySqr(cosThetaM2 * (sharpness2 + tanThetaM2));
	// when div>sharpness2*1e-6f no division by zero will occur (the dividend and the divisor are always positive);
	// div canget0 in rare situation when the sharpness read from texture mapped in reflection glossines is 0
	// and cosThetaM is 1 (and consequently tanThetaM2 is 0);
	float res = (div > sharpness2 * 1e-6) ? sharpness2 / div : 0.0;

	return res;
}

float vrayGetGTRMicrofacetDistribution(float mz, float sharpness, float gtrGamma) {
	float cosThetaM = mz; // dotf(microNormal, normal);
	if (cosThetaM <= 1e-3)
		return 0.0;

	float cosThetaM2 = vraySqr(cosThetaM);
	float tanThetaM2 = (1.0 / cosThetaM2) - 1.0;
	float sharpness2 = vraySqr(sharpness);
	float divisor    = PI * (1.0 - pow(sharpness2, 1.0 - gtrGamma)) * pow(cosThetaM2 * (sharpness2 + tanThetaM2), gtrGamma);
	float dividend   = (gtrGamma - 1.0) * (sharpness2 - 1.0);
	// when fabsf(divisor)>fabsf(dividend)*1e-6f no division by zero will occur
	// (the dividend and the divisor are always either both positive or both negative);
	// divisor canget0 in rare situation when the sharpness read from texture mapped in reflection glossines is 0
	// and cosThetaM is 1 (and consequently tanThetaM2 is 0);
	float res = (abs(divisor) > abs(dividend) * 1e-6) ? dividend / divisor : 0.0;

	return res;
}

float vrayGetGGXMicrofacetDistribution(float cosNH, float sharpness, float gtrGamma) {
	if (abs(gtrGamma - 1.0) < 1e-3)
		return vrayGetGTR1MicrofacetDistribution(cosNH, sharpness);
	else if (abs(gtrGamma - 2.0) < 1e-3)
		return vrayGetGTR2MicrofacetDistribution(cosNH, sharpness);
	else // if (gtrLowerLimit <= gtrGamma && gtrGamma <= gtrUpperLimit)
		return vrayGetGTRMicrofacetDistribution(cosNH, sharpness, gtrGamma);
}

float vrayGetGTRMonodirectionalShadowing0(float cotThetaV) {
	return 2.0 / (1.0 + sqrt(1.0 + 1.0 / (cotThetaV * cotThetaV)));
}

float vrayGetGTRMonodirectionalShadowing1(float sharpness, float cotThetaV) {
	float cotThetaV2 = vraySqr(cotThetaV);
	float sharpness2 = min(0.999, vraySqr(sharpness));
	float a          = sqrt(cotThetaV2 + sharpness2);
	float b          = sqrt(cotThetaV2 + 1.0);
	return cotThetaV * log(sharpness2) / (a - b + cotThetaV * log(sharpness2 * (cotThetaV + b) / (cotThetaV + a)));
}

float vrayGetGTRMonodirectionalShadowing2(float sharpness, float cotThetaV) {
	return 2.0 / (1.0 + sqrt(1.0 + vraySqr(sharpness / cotThetaV)));
}

float vrayGetGTRMonodirectionalShadowing3(float sharpness, float cotThetaV) {
	float cotThetaV2 = vraySqr(cotThetaV);
	float sharpness2 = min(0.999, vraySqr(sharpness));
	float a          = sqrt(cotThetaV2 + sharpness2);
	float b          = sharpness2 + 1.0;
	return 4.0 * cotThetaV * a * b / (2.0 * cotThetaV * b * (cotThetaV + a) + sharpness2 * (3.0 * sharpness2 + 1.0));
}

float vrayGetGTRMonodirectionalShadowing4(float sharpness, float cotThetaV) {
	float cotThetaV2 = cotThetaV * cotThetaV;
	float sharpness2 = min(0.999, vraySqr(sharpness));
	float sharpness4 = sharpness2 * sharpness2;
	float a          = 8.0 * (sharpness4 + sharpness2 + 1.0);
	float b          = sqrt(cotThetaV2 + sharpness2);
	float b3         = b * (cotThetaV2 + sharpness2);
	return 2.0 * cotThetaV * a * b3 / (a * cotThetaV * (b3 + cotThetaV * cotThetaV2) + 3.0 * sharpness2 * (4.0 * cotThetaV2 * (2.0 * sharpness4 + sharpness2 + 1.0) + sharpness2 * (5.0 * sharpness4 + 2.0 * sharpness2 + 1.0)));
}

float vrayGetGTRMonodirectionalShadowingSpline(float gtrGamma, float sharpness, float cotThetaV) {
	const int numKnots = 5;

	float knots[numKnots];
	knots[0] = vrayGetGTRMonodirectionalShadowing0(cotThetaV);
	knots[1] = vrayGetGTRMonodirectionalShadowing1(sharpness, cotThetaV);
	knots[2] = vrayGetGTRMonodirectionalShadowing2(sharpness, cotThetaV);
	knots[3] = vrayGetGTRMonodirectionalShadowing3(sharpness, cotThetaV);
	knots[4] = vrayGetGTRMonodirectionalShadowing4(sharpness, cotThetaV);

	float m[numKnots];
	float c[numKnots];
	for (int i = 1; i < numKnots - 1; i++) {
		m[i]     = 4.0;
		c[i - 1] = 6.0 * (knots[i + 1] - 2.0 * knots[i] + knots[i - 1]);
	}

	// solve tridiagonal
	for (int i = 1; i < numKnots - 2; i++) {
		float x = 1.0 / m[i];
		m[i + 1] -= x;
		c[i] -= x * c[i - 1];
	}

	m[numKnots - 2] = c[numKnots - 3] / m[numKnots - 2];

	for (int i = numKnots - 4; i >= 0; i--) {
		m[i + 1] = (c[i] - m[i + 2]) / m[i + 1];
	}

	m[0]            = 0.0;
	m[numKnots - 1] = 0.0;

	// contstruct polynomials
	vec4 polys[numKnots - 1];
	for (int i = 0; i < numKnots - 1; i++) {
		polys[i].x = (m[i + 1] - m[i]) / 6.0;
		polys[i].y = 0.5 * m[i];
		polys[i].z = (knots[i + 1] - knots[i]) - (2.0 * m[i] + m[i + 1]) / 6.0;
		polys[i].w = knots[i];
	}

	// eval
	float gamma = clamp(gtrGamma, 0.0, 4.0);
	int   idx   = int(floor(gtrGamma));
	float x     = gtrGamma - float(idx);
	float v     = ((polys[idx].x * x + polys[idx].y) * x + polys[idx].z) * x + polys[idx].w;
	return v;
}

float vrayGetGGXMonodirectionalShadowing(vec3 dir, vec3 hw, vec3 normal, float sharpness, float gtrGamma) {
	float cosThetaV = dot(dir, normal);

	if (cosThetaV <= 1e-3)
		return 0.0;

	if (dot(dir, hw) * cosThetaV <= 0.0) // Note: technically this is a division, but since we are only interested in the sign, we can do multiplication
		return 0.0;

	// when direction is collinear to the normal there is no shadowing
	// moreover if this case is not handled a division by zero will happen on the next line
	if (cosThetaV >= 1.0 - 1e-6)
		return 1.0;

	float cotThetaV = cosThetaV / sqrt(1.0 - vraySqr(cosThetaV));

	float res = 0.0;

	// when gamma is any of the integer values 0, 1, 2, 3, 4 apply analytical solution
	if (gtrGamma <= 0.01)
		res = vrayGetGTRMonodirectionalShadowing0(cotThetaV);
	else if (abs(gtrGamma - 1.0) <= 1e-2)
		res = vrayGetGTRMonodirectionalShadowing1(sharpness, cotThetaV);
	else if (abs(gtrGamma - 2.0) <= 1e-2)
		res = vrayGetGTRMonodirectionalShadowing2(sharpness, cotThetaV);
	else if (abs(gtrGamma - 3.0) <= 1e-2)
		res = vrayGetGTRMonodirectionalShadowing3(sharpness, cotThetaV);
	else if (gtrGamma >= 4.0 - 1e-2)
		res = vrayGetGTRMonodirectionalShadowing4(sharpness, cotThetaV);
	else {
		// gamma is not an integer. interpolate
		res = vrayGetGTRMonodirectionalShadowingSpline(gtrGamma, sharpness, cotThetaV);
	}

	return clamp(res, 0.0, 1.0);
}

float vrayGetGGXBidirectionalShadowingMasking(vec3 view, vec3 dir, vec3 hw, vec3 normal, float sharpness, float gtrGamma) {
	return vrayGetGGXMonodirectionalShadowing(view, hw, normal, sharpness, gtrGamma) * vrayGetGGXMonodirectionalShadowing(dir, hw, normal, sharpness, gtrGamma);
}

float vrayGetGGXContribution(vec3 view, vec3 dir, vec3 hw, vec3 hl, float sharpness, float gtrGamma, vec3 normal, out float partialProb, out float D) {
	float cosIN = abs(dot(view, normal));
	float cosON = abs(dot(dir, normal));

	if (cosIN <= 1e-6 || cosON <= 1e-6)
		return 0.0;

	float partialBrdf = 0.0;

	float hn    = hl.z;
	D           = vrayGetGGXMicrofacetDistribution(hn, sharpness, gtrGamma);
	partialBrdf = 0.25 * vrayGetGGXBidirectionalShadowingMasking(view, dir, hw, normal, sharpness, gtrGamma) / cosIN; // division by cosON is omitted because we would have to multiply by the same below;

	if (hn > 0.0) {
		partialProb = hn;

		float ho = dot(hw, dir);
		partialProb *= ho > 0.0 ? 0.25 / ho : 0.0;
	}

	// reduce some multiplications in the final version
	// partialBrdf *= cosON; - omitted

	return partialBrdf;
}

vec3 vrayGetGGXDir(float u, float v, float sharpness, float gtrGamma, vec3 view, mat3 nm, out float prob, out float brdfDivByProb) {
	vec3 microNormalLocal = vrayGetGGXMicroNormal(u, v, sharpness, gtrGamma);
    //vrayDebug(microNormalLocal * 0.5 + vec3(0.5));
	if (microNormalLocal.z < 0.0)
		return nm[2];

	vec3 microNormal = nm * microNormalLocal;

	// Compute and keep the length of the half-vector in local space; needed for anisotropy correction
	float L2 = dot(microNormal, microNormal);
	float L  = sqrt(L2);
	microNormal /= L;

	vec3 dir = reflect(-view, microNormal);

	float Dval        = 0.0;
	float partialProb = 0.0;
	float partialBrdf = vrayGetGGXContribution(view, dir, microNormal, microNormalLocal, sharpness, gtrGamma, nm[2], partialProb, Dval);
	partialProb *= L * L2;                                                 // take anisotropy in consideration
	prob          = (Dval >= 1e-6) ? partialProb * Dval : 1e18; // compute full probability
	// note: in the full VRayMtl prob is multiplied by 2PI, but in this shader
	// it's used exclusively to sample tne environment map, and we would have
	// to divide by 2PI in that computation.
	brdfDivByProb = (partialProb >= 1e-6) ? partialBrdf / partialProb : 0.0;
	return dir;
}

float vrayRand(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

/// Generate a random vec2, u in (0, 1), v in (B, B+1) where B is a fragment-dependent random blue noise value.
/// The returned value is suitable to be used for sampling a specular BRDF. V is
/// offset using blue noise, so it can be above 1, but that should be OK because
/// it is expected to be used as the argument to a trigonometric function.
vec2 uvRand(VRayMtlContext ctx, int sampleIdx) {
	// plastic constant
	// gives slightly better result than golden ratio
	float plast = 1.324717957244746;
	float invPlast = 1.0/plast;
	return vec2(
			fract(float(sampleIdx + 1) * invPlast),
			float(sampleIdx) / float(nbSamples) + ctx.blueNoise
			);
}


float intensity(vec3 v) {
	return (v.x + v.y + v.z) / 3.0;
}

vec3 vraySampleBRDF(VRayMtlInitParams params, VRayMtlContext ctx, int sampleIdx, out float rayProb, out float brdfContrib) {
	vec3  geomNormal = params.geomNormal;
	int   brdfType   = params.brdfType;
	vec2  uv = uvRand(ctx, sampleIdx);
	float u = uv.x;
	float v = uv.y;

	vec3  dir     = vec3(0.0);
	rayProb = 1.0;
	brdfContrib = 1.0;
	if (brdfType==0) { // Phong
		dir         = vrayGetPhongDir(u, v, ctx.gloss1, -ctx.e, ctx.nm);
	}
	else if (brdfType==1)  { // Blinn
		dir         = vrayGetBlinnDir(u, v, ctx.gloss1, -ctx.e, ctx.nm);
	}
	else if (brdfType==2) { // Ward
		dir         = vrayGetWardDir(u, v, ctx.gloss2, -ctx.e, ctx.nm);
	}
	else {
		dir = vrayGetGGXDir(u, v, ctx.gloss2, ctx.gtrGamma, -ctx.e, ctx.nm, rayProb, brdfContrib);
	}

	if (dot(dir, geomNormal) < 0.0f) {
		brdfContrib = 0.0;
	}
	return dir;
}

vec3 vraySampleRefractBRDF(VRayMtlInitParams params, VRayMtlContext ctx, int sampleIdx, out bool totalInternalReflection) {
	vec3 geomNormal         = params.geomNormal;
	vec3 refractDir         = refract(ctx.e, geomNormal, 1.0 / params.refractionIOR);
	totalInternalReflection = false;
	if (refractDir == vec3(0.0)) {
		refractDir              = reflect(ctx.e, geomNormal);
		totalInternalReflection = true;
	}

	vec3 s  = cross(vec3(0, 1, 0), refractDir);
	vec3 s1 = cross(refractDir, s);
	mat3 m;
	m[0] = normalize(s);
	m[1] = normalize(s1);
	m[2] = normalize(refractDir);

	vec2  uv = uvRand(ctx, sampleIdx);
	float u = uv.x;
	float v = uv.y;
	float gloss     = 1.0 / pow(max(1.0 - params.refrGloss, 1e-4), 3.5) - 1.0;
	vec3  sampleDir = vrayGetSpecularDir(u, v, gloss);

	return m * sampleDir;
}

float pow35(float x) {
	return x * x * x * sqrt(x);
}

VRayMtlContext initVRayMtlContext(VRayMtlInitParams initParams) {
	float reflGloss        = initParams.reflGloss;
	vec3  Vw               = initParams.Vw;
	vec3  geomNormal       = initParams.geomNormal;
	vec3  selfIllum        = initParams.selfIllum;
	vec3  diffuseColor     = initParams.diffuseColor;
	float diffuseAmount    = initParams.diffuseAmount;
	vec3  reflColor        = initParams.reflColor;
	float reflAmount       = initParams.reflAmount;
	bool  traceReflections = initParams.traceReflections;
	float metalness        = initParams.metalness;
	float aniso            = initParams.aniso;
	float anisoRotation    = initParams.anisoRotation;
	int   anisoAxis        = initParams.anisoAxis;
	vec3  opacity          = initParams.opacity;
	float roughness        = initParams.roughness;
	vec3  refractionColor  = initParams.refractionColor;
	float refractionAmount = initParams.refractionAmount;
	bool  traceRefractions = initParams.traceRefractions;
	float refractionIOR    = initParams.refractionIOR;
	bool  useFresnel       = initParams.useFresnel;
	float fresnelIOR       = initParams.fresnelIOR;
	bool  lockFresnelIOR   = initParams.lockFresnelIOR;
	bool  doubleSided      = initParams.doubleSided;
	bool  useRoughness     = initParams.useRoughness;
	float gtrGamma         = initParams.gtrGamma;
	int   brdfType         = initParams.brdfType;

	VRayMtlContext result;
	if (initParams.lockFresnelIOR)
		fresnelIOR = initParams.refractionIOR;

	result.e = -normalize(Vw);
	if (useRoughness)
		reflGloss = 1.0 - reflGloss; // Invert glossiness (turn it into roughness)

	result.reflGloss = reflGloss;
	result.opacity   = opacity;
	result.diff      = diffuseColor * diffuseAmount * result.opacity;
	result.illum     = selfIllum * result.opacity;
	// roughness
	float sqrRough = roughness * roughness;
	result.rtermA  = 1.0 - 0.5 * (sqrRough / (sqrRough + 0.33));
	result.rtermB  = 0.45 * (sqrRough / (sqrRough + 0.09));

	if (doubleSided && dot(geomNormal, result.e) > 0.0)
		geomNormal = -geomNormal;

	vec3 reflectDir   = reflect(result.e, geomNormal);
	result.geomNormal = geomNormal;

	// check for internal reflection
	bool  internalReflection;
	vec3  refractDir;
	bool  outToIn = (dot(geomNormal, result.e) < 0.0);
	float ior     = (outToIn ? 1.0 / refractionIOR : refractionIOR);
	vec3  normal  = (outToIn ? geomNormal : -geomNormal);

	float cost    = -dot(result.e, normal);
	float sintSqr = 1.0 - ior * ior * (1.0 - cost * cost);
	if (sintSqr > 1e-6) {
		internalReflection = false;
		refractDir         = ior * result.e + (ior * cost - sqrt(sintSqr)) * normal;
	} else {
		internalReflection = true;
		refractDir         = reflectDir;
	}
	result.fresnel = 1.0;
	if (useFresnel && !internalReflection)
		result.fresnel = clamp(vrayGetFresnelCoeff(fresnelIOR, result.e, normal, refractDir), 0.0, 1.0);
	//vrayDebug(result.fresnel);

	result.reflNoFresnel = reflColor * reflAmount * result.opacity;
	result.refl          = result.reflNoFresnel * result.fresnel;

	// Reflection calculation including metalness. Taken from VRayMtl's original implementation.
	vec3 metalColor = result.diff * result.fresnel * metalness;

	vec3 dielectricReflectionTransparency = traceReflections ? (1.0 - result.refl) : vec3(1.0);
	vec3 reflectionTransparency           = (1.0 - metalness) * dielectricReflectionTransparency;
	if (traceRefractions) {
		result.refr = refractionColor * refractionAmount * result.opacity * reflectionTransparency;
	} else {
		result.refr = vec3(0.0);
	}
	result.diff *= reflectionTransparency - result.refr;

	result.refl = mix(metalColor, result.refl, result.fresnel);
	if (result.fresnel > 1e-6) {
		result.refl /= result.fresnel;
	}

	result.gloss1 = max(0.0, 1.0 / pow35(max(1.0 - reflGloss, 1e-4)) - 1.0); // [0, 1] -> [0, inf)
	result.gloss2 = max(1.0 - reflGloss, 1e-4);
	result.gloss2 *= result.gloss2;
	result.gtrGamma = gtrGamma;
	result.blueNoise = getBlueNoiseThresholdTemporal();

	// Set up the normal/inverse normal matrices for BRDFs that support anisotropy
	vec3 anisoDirection = vec3(0.0, 0.0, 1.0);
	if (anisoAxis == 0)
		anisoDirection = vec3(1.0, 0.0, 0.0);
	else if (anisoAxis == 1)
		anisoDirection = vec3(0.0, 1.0, 0.0);
	float anisoAbs = abs(aniso);
	if (anisoAbs < 1e-12 || anisoAbs >= 1.0 - 1e-6) {
		vrayMakeNormalMatrix(geomNormal, result.nm);
		result.inm = transpose(result.nm); // inverse = transpose for orthogonal matrix
	} else if (!internalReflection) {
		vec3 base0, base1;
		base0        = normalize(cross(geomNormal, anisoDirection));
		base1        = normalize(cross(base0, geomNormal));
		float anisor = anisoRotation * 6.2831853;
		if (abs(anisor) > 1e-6) {
			float cs = cos(anisor);
			float sn = sin(anisor);
			vec3  nu = base0 * cs - base1 * sn;
			vec3  nv = base0 * sn + base1 * cs;
			base0    = nu;
			base1    = nv;
		}

		if (length(cross(base0, base1)) < 1e-6)
			vrayComputeTangentVectors(geomNormal, base0, base1);
		if (aniso > 0.0) {
			float a = 1.0 / (1.0 - aniso);
			base0 *= a;
			base1 /= a;
		} else {
			float a = 1.0 / (1.0 + aniso);
			base0 /= a;
			base1 *= a;
		}
		result.nm[0] = base0;
		result.nm[1] = base1;
		result.nm[2] = geomNormal;
		result.inm   = inverse(result.nm);
	}

	return result;
}

vec3 vrayMtlDiffuse(vec3 lightDir, vec3 normal) {
	return vec3(max(0.0, dot(lightDir, normal)));
}

vec3 vrayMtlDiffuseRoughness(vec3 lightDir, VRayMtlContext ctx) {
	float lightNdotL = max(0.0, dot(lightDir, ctx.geomNormal));
	float rmult      = 1.0;
	vec3  vecV       = -ctx.e;
	float NV         = clamp(dot(ctx.geomNormal, vecV), 0.0, 1.0);
	float theta_i    = acos(lightNdotL);
	float theta_r    = acos(NV);
	float alpha      = max(theta_i, theta_r);
	if (alpha > 1.571) { // 1.571==pi/2
		rmult = 0.0;
	} else {
		float beta        = min(theta_i, theta_r);
		vec3  vecVtan     = vecV - ctx.geomNormal * NV;
		vec3  vecLtan     = lightDir - ctx.geomNormal * lightNdotL;
		float fMult       = length(vecVtan) * length(vecLtan);
		float cosDeltaPhi = fMult < 0.000001 ? 1.0 : dot(vecVtan, vecLtan) / fMult;
		rmult             = (ctx.rtermA + ctx.rtermB * sin(alpha) * tan(beta) * max(0.0, cosDeltaPhi));
	}
	return vec3(lightNdotL * rmult);
}

vec3 vrayMtlBlinn(vec3 lightDir, VRayMtlContext ctx) {
	float k   = max(0.0, ctx.gloss1);
	vec3  hw  = lightDir - ctx.e;
	vec3  hn  = normalize(ctx.inm * hw);
	float cs1 = hn.z;
	if (cs1 > 1e-6) {
		float lightNdotL = dot(ctx.geomNormal, lightDir);
		if (cs1 > 1.0)
			cs1 = 1.0;
		float cs = -dot(normalize(hw), ctx.e);
		k        = cs < 1e-6 ? 0.0 : pow(cs1, k) * (k + 1.0) * 0.125 / cs;
		k *= lightNdotL;
		if (k > 0.0)
			return vec3(k);
	}
	return vec3(0.0);
}

vec3 vrayMtlPhong(vec3 lightDir, VRayMtlContext ctx) {
	vec3  reflectDir = reflect(ctx.e, ctx.geomNormal);
	float cs1        = dot(lightDir, reflectDir);
	if (cs1 > 0.0) {
		float lightNdotL = dot(ctx.geomNormal, lightDir);
		if (cs1 > 1.0)
			cs1 = 1.0;
		float k = pow(cs1, ctx.gloss1) * (ctx.gloss1 + 1.0) * 0.5; // phong k
		k *= lightNdotL;
		if (k > 0.0)
			return vec3(k);
	}
	return vec3(0.0);
}

vec3 vrayMtlWard(vec3 lightDir, VRayMtlContext ctx) {
	float cs1        = -dot(ctx.e, ctx.geomNormal);
	float lightNdotL = dot(ctx.geomNormal, lightDir);
	if (lightNdotL > 1e-6 && cs1 > 1e-6) {
		vec3 hw = lightDir - ctx.e;
		vec3 hn = normalize(ctx.inm * hw);
		if (hn.z > 1e-3) {
			float tanhSqr = (1.0 / (hn.z * hn.z) - 1.0);
			float divd    = cs1 * ctx.gloss2;
			float k       = exp(-tanhSqr / ctx.gloss2) / divd;
			k *= lightNdotL;
			if (k > 0.0)
				return vec3(k);
		}
	}
	return vec3(0.0);
}

vec3 vrayMtlGGX(vec3 lightDir, VRayMtlContext ctx) {
	float cs1        = -dot(ctx.e, ctx.geomNormal);
	float lightNdotL = dot(ctx.geomNormal, lightDir);
	if (lightNdotL > 1e-6 && cs1 > 1e-6) {
		vec3 hw = normalize(lightDir - ctx.e);
		vec3 hn = normalize(ctx.inm * hw);
		if (hn.z > 1e-3) {
			float D                    = vrayGetGGXMicrofacetDistribution(hn.z, ctx.gloss2, ctx.gtrGamma);
			float G                    = vrayGetGGXBidirectionalShadowingMasking(-ctx.e, lightDir, hw, ctx.geomNormal, ctx.gloss2, ctx.gtrGamma);
			float cs2                  = max(dot(hw, lightDir), 0.0001);
			vec3  micron               = ctx.nm * hn;
			float L2                   = dot(micron, micron);
			float anisotropyCorrection = L2 * sqrt(L2);
			float k                    = 0.25 * D * G * anisotropyCorrection / cs1; // anisotropy correction
			if (k > 0.0)
				return vec3(k);
		}
	}
	return vec3(0.0);
}

vec3 vrayComputeDirectDiffuseContribution(VRayMtlInitParams params, VRayMtlContext ctx, vec3 lightDir) {
	vec3 res = vec3(0.0);
	if (params.roughness < 1e-6f) {
		res = vrayMtlDiffuse(lightDir, ctx.geomNormal);
	} else {
		res = vrayMtlDiffuseRoughness(lightDir, ctx);
	}

	return res;
}

vec3 vrayComputeDirectReflectionContribution(VRayMtlInitParams params, VRayMtlContext ctx, vec3 lightDir) {
	vec3 res = vec3(0.0);

	if (params.brdfType==0) {
		res = vrayMtlPhong(lightDir, ctx);
	}
	else if (params.brdfType==1) {
		res = vrayMtlBlinn(lightDir, ctx);
	}
	else if (params.brdfType==2) {
		res = vrayMtlWard(lightDir, ctx);
	}
	else if (params.brdfType==3) {
		res = vrayMtlGGX(lightDir, ctx);
	}
	
	return res;
}

vec3 vrayComputeIndirectDiffuseContribution(VRayMtlInitParams params, VRayMtlContext ctx) {
	vec3 res = vec3(0.0);
	res      = envIrradiance(params.geomNormal);
	return res;
}

vec3 vrayComputeIndirectReflectionContribution(VRayMtlInitParams params, VRayMtlContext ctx) {
	vec3 res = vec3(0.0);

	if (!params.traceReflections)
		return res;

	float invNumSamples = 1.0f / float(nbSamples);
	vec3 envSum = vec3(0.0);
	for (int i = 0; i < nbSamples; ++i) {
		float brdfContrib = 0.0f;
		float rayProb     = 0.0f;
		vec3  dir         = vraySampleBRDF(params, ctx, i, rayProb, brdfContrib);
		if (brdfContrib < 1e-6f)
			continue;
		float lod = computeLOD(dir, rayProb, nbSamples);
		envSum += envSampleLOD(dir, lod) * brdfContrib;
	}
	res += envSum * invNumSamples;

	return res;
}

vec3 vrayComputeIndirectRefractionContribution(VRayMtlInitParams params, VRayMtlContext ctx, float alpha, vec3 alphaDir, vec3 diffuseIndirect) {
	vec3 res = vec3(0.0);

	if (!params.traceRefractions)
		return res;

	float invNumSamples = 1.0f / float(nbSamples);
	vec3  view          = -params.Vw;

	if (alpha <= 0.999) {
		res += envSampleLOD(alphaDir, 0.0);
	} else {
		vec3 envSum = vec3(0.0);
		for (int i = 0; i < nbSamples; ++i) {
			bool totalInternalReflection;
			vec3 dir = vraySampleRefractBRDF(params, ctx, i, totalInternalReflection);
			if (totalInternalReflection) {
				envSum += envSampleLOD(dir, 0.0);
			} else {
				envSum += envSampleLOD(dir, 0.0);
			}
		}
		res += envSum * invNumSamples;
	}

	return res;
}

/// Sample texture and blend with default color where no data exists.
vec3 textureWithDefault(SamplerSparse sampler, SparseCoord coord, vec3 defaultColor) {
	vec4 sampledColor = textureSparse(sampler, coord);
	return sampledColor.rgb + (1.0 - sampledColor.a) * defaultColor;
}

/// Sample texture and blend with default value, treating green as alpha.
float textureWithDefault(SamplerSparse sampler, SparseCoord coord, float defaultValue) {
	vec4 sampledValue = textureSparse(sampler, coord);
	return sampledValue.r + (1.0 - sampledValue.g) * defaultValue;
}

/// Implemented in specular/metallic
/// initParams will be set up with geometry data prior to this call
void setupInitParams(inout VRayMtlInitParams initParams, SparseCoord texCoord);

//- Shader entry point.
void shade(V2F inputs)
{
	// Normal with bump/normal map applied
	vec3 bumpNormal = computeWSNormal(inputs.sparse_coord, inputs.tangent, inputs.bitangent, inputs.normal);

	// Init VRayMtl
	VRayMtlInitParams initParams;

	// setup geometric data
	// for 2D put view vector along normal (see lib-vectors)
	initParams.Vw = is2DView ? bumpNormal : getEyeVec(inputs.position);
	initParams.geomNormal = bumpNormal;
	initParams.approxEnv = false;

	// setup common parameters
	initParams.diffuseAmount = uniform_diffuse_amount;
	initParams.reflAmount = uniform_reflection_amount;
	initParams.traceReflections = uniform_trace_reflections;
	initParams.aniso = 0.0;
	initParams.anisoRotation = 0.0;
	initParams.anisoAxis = uniform_anisotropy_axis;
	initParams.refractionAmount = uniform_refraction_amount;
	initParams.refractionIOR = uniform_refraction_ior;
	initParams.refrGloss = uniform_refraction_glossiness;
	initParams.traceRefractions = uniform_trace_refractions;
	initParams.useFresnel = uniform_use_fresnel;
	initParams.fresnelIOR = uniform_fresnel_ior;
	initParams.lockFresnelIOR = uniform_lock_fresnel_ior;
	initParams.doubleSided = uniform_double_sided;
	initParams.useRoughness = false;
	initParams.gtrGamma = uniform_gtr_gamma;
	initParams.brdfType = uniform_brdf_type;
	initParams.opacity = vec3(1.0);

	// flavour-specific setup
	setupInitParams(initParams, inputs.sparse_coord);

	// Get detail (ambient occlusion) and global (shadow) occlusion factors
	float occlusion = getAO(inputs.sparse_coord) * getShadowFactor();
	float specOcclusion = specularOcclusionCorrection(occlusion, initParams.metalness, initParams.useRoughness ? 1.0 - initParams.reflGloss : initParams.reflGloss);

	// Init context and sample material
	VRayMtlContext ctx = initVRayMtlContext(initParams);
	vec3 lightDir = uniform_main_light.xyz - inputs.position * uniform_main_light.w;
	vec3 diffuseDirect = vrayComputeDirectDiffuseContribution(initParams, ctx, lightDir);
	vec3 diffuseIndirect = vrayComputeIndirectDiffuseContribution(initParams, ctx);
	vec3 diffuse = diffuseDirect + diffuseIndirect;
	vec3 reflection =
			vrayComputeDirectReflectionContribution(initParams, ctx, lightDir) +
			vrayComputeIndirectReflectionContribution(initParams, ctx);
	float alpha = intensity(ctx.opacity);
	vec3 refraction =
		vrayComputeIndirectRefractionContribution(initParams, ctx, alpha, -initParams.Vw, diffuseIndirect);

	// Output values
	if (debugOutput == 0) {
		albedoOutput(ctx.diff);
		diffuseShadingOutput(occlusion * diffuse);
		specularShadingOutput(specOcclusion * reflection * ctx.refl);
		// output refraction with emissive as it can't really go elsewhere
		emissiveColorOutput(ctx.illum + refraction * ctx.refr);
	}
}


void setupInitParams(inout VRayMtlInitParams initParams, SparseCoord texCoord) {
	// Fetch material parameters
	vec3 diffuseColor = textureWithDefault(diffuse_tex, texCoord, vec3(0.5));
    vec3 specularColor = textureWithDefault(specular_tex, texCoord, vec3(0.0));
    float glossiness = textureWithDefault(glossiness_tex, texCoord, 1.0);
	vec3 refractionColor = textureWithDefault(transmissive_tex, texCoord, vec3(0.0));
    vec3 selfIllumColor = textureWithDefault(emissive_tex, texCoord, vec3(0.0));
    float anisotropy = textureWithDefault(anisotropylevel_tex, texCoord, 0.0);
    float anisotropyAngle = textureWithDefault(anisotropyangle_tex, texCoord, 0.0);

    initParams.diffuseColor = diffuseColor;
    initParams.roughness = 1.0 - glossiness;
    initParams.selfIllum = selfIllumColor;
    initParams.reflColor = specularColor;
    initParams.reflGloss = glossiness;
    initParams.refractionColor = refractionColor;
    initParams.metalness = 0.0;
    initParams.aniso = anisotropy;
    initParams.anisoRotation = anisotropyAngle;
    initParams.useRoughness = false;
}

