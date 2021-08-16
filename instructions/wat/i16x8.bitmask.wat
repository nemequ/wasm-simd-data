(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i16x8_bitmask (type 0) (param v128) (result i32)
    local.get 0
    i16x8.bitmask)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_bitmask" (func $i16x8_bitmask)))
