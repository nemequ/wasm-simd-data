#include <wasm_simd128.h>

_Bool v128_any_true(v128_t a)
{
  return wasm_v128_any_true(a);
}
