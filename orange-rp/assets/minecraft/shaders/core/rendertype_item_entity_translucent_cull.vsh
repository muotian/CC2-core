#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;
uniform float GameTime;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;

const vec2 corners[4] = vec2[4](
  vec2(0.0, 0.0),
  vec2(0.0, 1.0),
  vec2(1.0, 1.0),
  vec2(1.0, 0.0)
);

void main() {

    if (Color == vec4(1.0)) { // vanilla behavior
        gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

        vertexDistance = fog_distance(Position, FogShape);
        vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * texelFetch(Sampler2, UV2 / 16, 0);
        texCoord0 = UV0;
        texCoord1 = UV1;
        texCoord2 = UV2;
    }
    else {
        vec2 size = 8./textureSize(Sampler0, 0);
        ivec4 vColor = ivec4(textureLod(Sampler0, UV0 - (corners[gl_VertexID%4] * size), -9999) * 255 + vec4(0.5));
        ivec4 iColor = ivec4(Color * 255 + vec4(0.5));
        vec3 mPosition = Position;
        vec4 mColor = Color;

        if (vColor.a == 250) {
            float duration = (iColor.r * 4 + int(iColor.g / 64)) * 20;
            float target = (iColor.g % 64) * 256 + iColor.b;
            float current = GameTime * 24000;
            if (current >= 12000) {
                current -= 12000;
            }
            if (current > target && current - 12000 > target - duration) {
                current -= 12000;
            }
            if (duration == 0 || current > target || target - current > duration) {
                mColor.a = 0;
            }
            else if (vColor.rgb == ivec3(255, 255, 255)
            && (gl_VertexID % 4 == 0 || gl_VertexID % 4 == 3)) {
                mPosition.y += int((1 - (target - current) / duration) * 16);
            }
            else if (vColor.rgb == ivec3(128, 128, 128)) {
                if (gl_VertexID % 4 == 0 || gl_VertexID % 4 == 1) {
                    mPosition.x += int(((target - current) / duration) * 13 + 2);
                }
                else {
                    mPosition.x -= 1;
                }
            }
            else if (vColor.rgb == ivec3(127, 127, 127)) {
                if (gl_VertexID % 4 == 0 || gl_VertexID % 4 == 1) {
                    mPosition.x += int((1 - (target - current) / duration) * 13 + 2);
                }
                else {
                    mPosition.x -= 1;
                }
            }
        }
        
        gl_Position = ProjMat * ModelViewMat * vec4(mPosition, 1.0);

        vertexDistance = fog_distance(mPosition, FogShape);
        vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, mColor) * texelFetch(Sampler2, UV2 / 16, 0);
        texCoord0 = UV0;
        texCoord1 = UV1;
        texCoord2 = UV2;
    }
}