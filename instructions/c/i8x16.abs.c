#include <wasm_simd128.h>

v128_t
i8x16_abs(v128_t a)
{
  return wasm_i8x16_abs(a);
}
