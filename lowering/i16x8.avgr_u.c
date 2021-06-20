#include <simde/wasm/simd128.h>

v128_t
u16x8_avgr(v128_t a, v128_t b) {
  return wasm_u16x8_avgr(a, b);
}
