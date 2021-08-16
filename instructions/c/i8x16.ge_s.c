#include <wasm_simd128.h>

v128_t
i8x16_ge_s(v128_t a, v128_t b)
{
  return wasm_i8x16_ge(a, b);
}
