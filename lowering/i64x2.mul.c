#include <simde/wasm/simd128.h>

v128_t
i64x2_mul(v128_t a, v128_t b) {
  return wasm_i64x2_mul(a, b);
}
