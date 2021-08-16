(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i64x2_bitmask (type 0) (param v128) (result i32)
    local.get 0
    i64x2.bitmask)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i64x2_bitmask" (func $i64x2_bitmask)))
