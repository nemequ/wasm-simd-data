#include <simde/wasm/simd128.h>

v128_t
i16x8_ge(v128_t a, v128_t b) {
  return wasm_i16x8_ge(a, b);
}
