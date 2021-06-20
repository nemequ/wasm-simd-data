#include <simde/wasm/simd128.h>

v128_t
i16x8_shr_s(v128_t a, int32_t b) {
  return wasm_i16x8_shr(a, b);
}
