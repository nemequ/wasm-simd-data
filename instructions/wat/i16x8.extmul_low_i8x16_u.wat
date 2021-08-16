(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i16x8_extmul_low_i8x16_u (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    i16x8.extmul_low_i8x16_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_extmul_low_i8x16_u" (func $i16x8_extmul_low_i8x16_u)))
