#include <wasm_simd128.h>

v128_t
f32x4_replace_lane(v128_t a, float value)
{
  return wasm_f32x4_replace_lane(a, IMMEDIATE, value);
}
