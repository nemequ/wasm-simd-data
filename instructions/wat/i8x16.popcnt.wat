(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i8x16_popcnt (type 0) (param v128) (result v128)
    local.get 0
    i8x16.popcnt)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i8x16_popcnt" (func $i8x16_popcnt)))
