#include <wasm_simd128.h>

v128_t
i8x16_le_s(v128_t a, v128_t b)
{
  return wasm_i8x16_le(a, b);
}
