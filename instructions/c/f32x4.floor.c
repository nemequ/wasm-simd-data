#include <wasm_simd128.h>

v128_t
f32x4_floor(v128_t a)
{
  return wasm_f32x4_floor(a);
}
