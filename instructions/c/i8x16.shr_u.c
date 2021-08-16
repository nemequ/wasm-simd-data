#include <wasm_simd128.h>

v128_t
i8x16_shr_u(v128_t a, int32_t b)
{
  return wasm_u8x16_shr(a, b);
}
