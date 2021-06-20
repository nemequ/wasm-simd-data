#include <simde/wasm/simd128.h>

v128_t
v128_and(v128_t a, v128_t b) {
  return wasm_v128_and(a, b);
}
