#include <simde/wasm/simd128.h>

v128_t
i8x16_gt(v128_t a, v128_t b) {
  return wasm_i8x16_gt(a, b);
}
