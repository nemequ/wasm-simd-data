#include <simde/wasm/simd128.h>

v128_t
i64x2_neg(v128_t a) {
  return wasm_i64x2_neg(a);
}
