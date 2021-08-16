#include <wasm_simd128.h>

v128_t
i8x16_shr(v128_t a, int32_t b)
{
  return wasm_i8x16_shr(a, b);
}
