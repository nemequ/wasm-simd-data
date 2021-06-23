#include <simde/wasm/simd128.h>

v128_t
u8x16_narrow_i16x8(v128_t a, v128_t b) {
  return wasm_u8x16_narrow_i16x8(a, b);
}
