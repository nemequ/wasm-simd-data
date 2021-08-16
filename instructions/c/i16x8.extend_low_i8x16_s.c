#include <wasm_simd128.h>

v128_t
i16x8_extend_low_i8x16(v128_t a)
{
  return wasm_i16x8_extend_low_i8x16(a);
}
