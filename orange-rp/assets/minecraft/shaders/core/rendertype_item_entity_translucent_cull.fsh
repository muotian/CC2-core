#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;

out vec4 fragColor;

void main() {
    ivec4 vColor = ivec4(texture(Sampler0, texCoord0) * 255 + vec4(0.5));
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }
    else if (vColor == ivec4(255, 255, 255, 250)) {
        color.rgb = vec3(1.0);
        color.a = 127.0 / 255.0;
    }
    else if (vColor == ivec4(0, 0, 0, 250)) {
        color.rgb = vec3(0.0);
        color.a = 1.0;
    }
    else if (vColor == ivec4(128, 128, 128, 250)) {
        color.a = 0.0;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}