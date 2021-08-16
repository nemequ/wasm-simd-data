#include <wasm_simd128.h>

v128_t
i32x4_splat(int32_t x)
{
  return wasm_i32x4_splat(x);
}
