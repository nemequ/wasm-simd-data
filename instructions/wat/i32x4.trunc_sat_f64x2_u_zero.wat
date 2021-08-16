(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i32x4_trunc_sat_f64x2_u_zero (type 0) (param v128) (result v128)
    local.get 0
    i32x4.trunc_sat_f64x2_u_zero)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i32x4_trunc_sat_f64x2_u_zero" (func $i32x4_trunc_sat_f64x2_u_zero)))
