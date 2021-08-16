(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i32x4_neg (type 0) (param v128) (result v128)
    local.get 0
    i32x4.neg)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_neg" (func $i32x4_neg)))
