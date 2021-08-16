#include <wasm_simd128.h>

v128_t
u8x16_max(v128_t a, v128_t b)
{
  return wasm_u8x16_max(a, b);
}
