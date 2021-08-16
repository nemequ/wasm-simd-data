#include <wasm_simd128.h>

int32_t
i8x16_bitmask(v128_t a)
{
  return wasm_i8x16_bitmask(a);
}
