(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i32x4_abs (type 0) (param v128) (result v128)
    local.get 0
    i32x4.abs)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_abs" (func $i32x4_abs)))
