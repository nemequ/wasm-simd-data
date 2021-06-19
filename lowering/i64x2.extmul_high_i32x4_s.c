#include <simde/wasm/simd128.h>

v128_t
i64x2_extmul_high_i32x4(v128_t a, v128_t b) {
  return wasm_i64x2_extmul_high_i32x4(a, b);
}
