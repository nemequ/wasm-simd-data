#include <simde/wasm/simd128.h>

v128_t
i16x8_max(v128_t a, v128_t b) {
  return wasm_i16x8_max(a, b);
}
