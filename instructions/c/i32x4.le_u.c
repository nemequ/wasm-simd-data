#include <wasm_simd128.h>

v128_t
u32x4_le(v128_t a, v128_t b)
{
  return wasm_u32x4_le(a, b);
}
