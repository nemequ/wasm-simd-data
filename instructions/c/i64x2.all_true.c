#include <wasm_simd128.h>

_Bool i64x2_all_true(v128_t a)
{
  return wasm_i64x2_all_true(a);
}
