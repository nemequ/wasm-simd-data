#include <wasm_simd128.h>

v128_t
i32x4_extend_high_i16x8_s(v128_t a)
{
  return wasm_i32x4_extend_high_i16x8(a);
}
