#include <wasm_simd128.h>

v128_t
i8x16_avgr_u(v128_t a, v128_t b)
{
  return wasm_u8x16_avgr(a, b);
}
