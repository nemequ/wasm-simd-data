#include <wasm_simd128.h>

v128_t
f64x2_add(v128_t a, v128_t b)
{
  return wasm_f64x2_add(a, b);
}
