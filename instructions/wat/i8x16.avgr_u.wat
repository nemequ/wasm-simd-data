(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i8x16_avgr_u (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i8x16.avgr_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i8x16_avgr_u" (func $i8x16_avgr_u)))
