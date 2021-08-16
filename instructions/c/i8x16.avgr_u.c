#include <wasm_simd128.h>

v128_t
u8x16_avgr(v128_t a, v128_t b)
{
  return wasm_u8x16_avgr(a, b);
}
