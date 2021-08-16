#include <wasm_simd128.h>

v128_t
f32x4_ne(v128_t a, v128_t b)
{
  return wasm_f32x4_ne(a, b);
}
