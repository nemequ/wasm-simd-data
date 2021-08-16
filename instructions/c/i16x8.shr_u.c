#include <wasm_simd128.h>

v128_t
u16x8_shr_u(v128_t a, int32_t b)
{
  return wasm_u16x8_shr(a, b);
}
