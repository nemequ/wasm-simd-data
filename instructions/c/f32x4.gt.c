#include <wasm_simd128.h>

v128_t
f32x4_gt(v128_t a, v128_t b)
{
  return wasm_f32x4_gt(a, b);
}
