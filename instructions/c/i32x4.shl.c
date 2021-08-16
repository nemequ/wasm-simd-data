#include <wasm_simd128.h>

v128_t
i32x4_shl(v128_t a, int32_t b)
{
  return wasm_i32x4_shl(a, b);
}
