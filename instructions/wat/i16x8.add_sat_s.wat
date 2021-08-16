(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i16x8_add_sat_s (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i16x8.add_sat_s)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_add_sat_s" (func $i16x8_add_sat_s)))
