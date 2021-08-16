(module
  (type (;0;) (func (param v128) (result i32)))
  (func $i16x8_all_true (type 0) (param v128) (result i32)
    local.get 0
    i16x8.all_true)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_all_true" (func $i16x8_all_true)))
