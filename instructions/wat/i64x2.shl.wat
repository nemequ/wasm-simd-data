(module
  (type (;0;) (func (param v128 i32) (result v128)))
  (func $i64x2_shl (type 0) (param v128 i32) (result v128)
    local.get 0
    local.get 1
    i64x2.shl)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i64x2_shl" (func $i64x2_shl)))
