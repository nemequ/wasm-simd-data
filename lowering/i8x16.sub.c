#include <simde/wasm/simd128.h>

v128_t
i8x16_sub(v128_t a, v128_t b) {
  return wasm_i8x16_sub(a, b);
}
