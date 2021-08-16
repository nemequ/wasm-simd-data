#include <wasm_simd128.h>

v128_t
v128_const(void)
{
  return wasm_i64x2_const(42, 1729);
}
