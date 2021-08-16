#include <wasm_simd128.h>

_Bool i8x16_all_true(v128_t a)
{
  return wasm_i8x16_all_true(a);
}
