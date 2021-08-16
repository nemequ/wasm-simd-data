#include <wasm_simd128.h>

v128_t
i64x2_splat(int64_t x)
{
  return wasm_i64x2_splat(x);
}
