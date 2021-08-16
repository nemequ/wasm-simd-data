(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f64x2_ceil (type 0) (param v128) (result v128)
    local.get 0
    f64x2.ceil)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_ceil" (func $f64x2_ceil)))
