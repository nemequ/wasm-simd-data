#include <simde/wasm/simd128.h>

v128_t
i64x2_lt(v128_t a, v128_t b) {
  return wasm_i64x2_lt(a, b);
}
