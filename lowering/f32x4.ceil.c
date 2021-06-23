#include <simde/wasm/simd128.h>

v128_t
f32x4_ceil(v128_t a) {
  return wasm_f32x4_ceil(a);
}
