#include <wasm_simd128.h>

v128_t
i32x4_dot_i16x8_s(v128_t a, v128_t b)
{
  return wasm_i32x4_dot_i16x8(a, b);
}
