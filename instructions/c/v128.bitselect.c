#include <wasm_simd128.h>

v128_t
v128_bitselect(v128_t a, v128_t b, v128_t c)
{
  return wasm_v128_bitselect(a, b, c);
}
