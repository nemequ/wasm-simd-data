#include <wasm_simd128.h>

float f32x4_extract_lane(v128_t a)
{
  return wasm_f32x4_extract_lane(a, IMMEDIATE);
}
