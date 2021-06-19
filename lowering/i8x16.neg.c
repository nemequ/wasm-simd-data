#include <simde/wasm/simd128.h>

v128_t
i8x16_neg(v128_t a) {
  return wasm_i8x16_neg(a);
}
