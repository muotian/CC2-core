#version 150

float decodeColor(ivec3 color) {
  int result = int(color.r / 16) * 100000 + (color.r % 16) * 10000 \
       + int(color.g / 16) * 1000 + (color.g % 16) * 100 \
       + int(color.b / 16) * 10 + (color.b % 16);

  return float(result);
}