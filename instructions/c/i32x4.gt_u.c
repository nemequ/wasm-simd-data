#include <wasm_simd128.h>

v128_t
i32x4_gt_u(v128_t a, v128_t b)
{
  return wasm_u32x4_gt(a, b);
}
