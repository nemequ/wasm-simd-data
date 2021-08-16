(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i64x2_ge_s (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i64x2.ge_s)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i64x2_ge_s" (func $i64x2_ge_s)))
