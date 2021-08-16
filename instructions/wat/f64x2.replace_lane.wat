(module
  (type (;0;) (func (param v128 f64) (result v128)))
  (func $f64x2_replace_lane (type 0) (param v128 f64) (result v128)
    local.get 0
    local.get 1
    f64x2.replace_lane 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_replace_lane" (func $f64x2_replace_lane)))
