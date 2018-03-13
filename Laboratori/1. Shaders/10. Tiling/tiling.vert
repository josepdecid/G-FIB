#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 3) in vec2 texCoord;

out vec2 vtexCoord;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform int tiles = 1;

void main() {
    vec3 N = normalize(normalMatrix * normal);
    vtexCoord = texCoord;
    vtexCoord *= tiles;
    gl_Position = modelViewProjectionMatrix * vec4(vertex, 1.0);
}
