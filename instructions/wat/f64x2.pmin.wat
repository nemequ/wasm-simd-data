(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $f64x2_pmin (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    f64x2.pmin)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_pmin" (func $f64x2_pmin)))
