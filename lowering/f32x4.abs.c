#include <simde/wasm/simd128.h>

v128_t
f32x4_abs(v128_t a) {
  return wasm_f32x4_abs(a);
}
