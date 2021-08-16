#include <wasm_simd128.h>

v128_t
i32x4_shr(v128_t a, int32_t b)
{
  return wasm_i32x4_shr(a, b);
}
