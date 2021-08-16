#include <wasm_simd128.h>

v128_t
i16x8_extend_low_i8x16_u(v128_t a)
{
  return wasm_u16x8_extend_low_u8x16(a);
}
