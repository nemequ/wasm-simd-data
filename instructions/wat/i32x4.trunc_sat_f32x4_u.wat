(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i32x4_trunc_sat_f32x4_u (type 0) (param v128) (result v128)
    local.get 0
    i32x4.trunc_sat_f32x4_u)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i32x4_trunc_sat_f32x4_u" (func $i32x4_trunc_sat_f32x4_u)))
