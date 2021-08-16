(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i32x4_max_u (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i32x4.max_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_max_u" (func $i32x4_max_u)))
