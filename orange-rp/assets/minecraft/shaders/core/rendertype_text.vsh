#version 150

#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    if (Color == vec4(1.0)) { // vanilla behavior
        gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

        vertexDistance = fog_distance(Position, FogShape);
        vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
        texCoord0 = UV0;
    }
    else {
        ivec4 vColor = ivec4(texture(Sampler0, UV0) * 255 + vec4(0.5));
        ivec4 iColor = ivec4(Color * 255 + vec4(0.5));
        vec3 mPosition = Position;
        vec4 mColor = Color;

        if (vColor.a == 250) {
            mPosition = Position;
            mColor = vec4(1);

            float duration = 100;
            float target = int(iColor.r / 16) * 100000 + (iColor.r % 16) * 10000 \
                        + int(iColor.g / 16) * 1000 + (iColor.g % 16) * 100 \
                        + int(iColor.b / 16) * 10 + (iColor.b % 16);
            float current = GameTime * 24000;
            if (vColor.rgb == ivec3(255, 255, 255)) {
                duration = 100;
            }

            if (current > target && current - 24000 > target - duration) {
                current -= 24000;
            }
            if (duration == 0 || current > target || target - current > duration) {
                mColor.a = 0;
            }
            else if (vColor.rgb == ivec3(255, 255, 255)
            && (gl_VertexID % 4 == 0 || gl_VertexID % 4 == 1)) {
                mPosition.x += (1 - (target - current) / duration) * 24;
            }
            else if (vColor.rgb == ivec3(255, 255, 255)
            && (gl_VertexID % 4 == 2 || gl_VertexID % 4 == 3)) {
                mPosition.x -= (1 - (target - current) / duration) * 24;
            }
        }

        gl_Position = ProjMat * ModelViewMat * vec4(mPosition, 1.0);

        vertexDistance = fog_distance(mPosition, FogShape);
        vertexColor = mColor * texelFetch(Sampler2, UV2 / 16, 0);
        texCoord0 = UV0;
    }
}