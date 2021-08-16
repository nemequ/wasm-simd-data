#include <wasm_simd128.h>

v128_t
u16x8_max(v128_t a, v128_t b)
{
  return wasm_u16x8_max(a, b);
}
