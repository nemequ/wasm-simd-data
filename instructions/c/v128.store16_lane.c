#include <wasm_simd128.h>

void v128_store16_lane(void *dest, v128_t src)
{
  wasm_v128_store8_lane(dest, src, IMMEDIATE);
}
