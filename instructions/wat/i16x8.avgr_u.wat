(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i16x8_avgr_u (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i16x8.avgr_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_avgr_u" (func $i16x8_avgr_u)))
