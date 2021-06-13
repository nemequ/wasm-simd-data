#include <simde/wasm/simd128.h>

v128_t
f32x4_splat(float x) {
  return wasm_f32x4_splat(x);
}
