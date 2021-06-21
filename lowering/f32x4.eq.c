#include <simde/wasm/simd128.h>

v128_t
f32x4_eq(v128_t a, v128_t b) {
  return wasm_f32x4_eq(a, b);
}
