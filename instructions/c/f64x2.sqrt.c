#include <wasm_simd128.h>

v128_t
f64x2_sqrt(v128_t a)
{
  return wasm_f64x2_sqrt(a);
}
