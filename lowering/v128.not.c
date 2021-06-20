#include <simde/wasm/simd128.h>

v128_t
v128_not(v128_t a) {
  return wasm_v128_not(a);
}
