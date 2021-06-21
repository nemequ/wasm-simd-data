#include <simde/wasm/simd128.h>

v128_t
i32x4_gt(v128_t a, v128_t b) {
  return wasm_i32x4_gt(a, b);
}
