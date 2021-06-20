#include <simde/wasm/simd128.h>

v128_t
v128_or(v128_t a, v128_t b) {
  return wasm_v128_or(a, b);
}
