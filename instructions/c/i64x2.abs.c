#include <wasm_simd128.h>

v128_t
i64x2_abs(v128_t a)
{
  return wasm_i64x2_abs(a);
}
