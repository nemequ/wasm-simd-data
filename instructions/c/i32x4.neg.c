#include <wasm_simd128.h>

v128_t
i32x4_neg(v128_t a)
{
  return wasm_i32x4_neg(a);
}
