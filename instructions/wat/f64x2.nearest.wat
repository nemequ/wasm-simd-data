(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f64x2_nearest (type 0) (param v128) (result v128)
    local.get 0
    f64x2.nearest)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_nearest" (func $f64x2_nearest)))
