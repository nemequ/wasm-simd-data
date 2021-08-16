(module
  (type (;0;) (func (param v128) (result f64)))
  (func $f64x2_extract_lane (type 0) (param v128) (result f64)
    local.get 0
    f64x2.extract_lane 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_extract_lane" (func $f64x2_extract_lane)))
