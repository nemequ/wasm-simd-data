#include <simde/wasm/simd128.h>

v128_t
i32x4_extmul_high_i16x8(v128_t a, v128_t b) {
  return wasm_i32x4_extmul_high_i16x8(a, b);
}
