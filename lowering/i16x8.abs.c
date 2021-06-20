#include <simde/wasm/simd128.h>

v128_t
i16x8_abs(v128_t a) {
  return wasm_i16x8_abs(a);
}
