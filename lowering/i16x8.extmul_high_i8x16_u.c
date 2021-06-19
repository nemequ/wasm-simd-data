#include <simde/wasm/simd128.h>

v128_t
u16x8_extmul_high_u8x16(v128_t a, v128_t b) {
  return wasm_u16x8_extmul_high_u8x16(a, b);
}
