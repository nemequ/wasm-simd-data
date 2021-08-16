(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i64x2_extmul_high_i32x4_s (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    i64x2.extmul_high_i32x4_s)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i64x2_extmul_high_i32x4_s" (func $i64x2_extmul_high_i32x4_s)))
