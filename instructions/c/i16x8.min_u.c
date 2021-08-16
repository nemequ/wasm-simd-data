#include <wasm_simd128.h>

v128_t
i16x8_min_u(v128_t a, v128_t b)
{
  return wasm_u16x8_min(a, b);
}
