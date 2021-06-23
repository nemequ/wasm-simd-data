#include <simde/wasm/simd128.h>

v128_t
f32x4_neg(v128_t a) {
  return wasm_f32x4_neg(a);
}
