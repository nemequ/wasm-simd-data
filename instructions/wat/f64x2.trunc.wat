(module
  (type (;0;) (func (param v128) (result v128)))
  (func $f64x2_trunc (type 0) (param v128) (result v128)
    local.get 0
    f64x2.trunc)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_trunc" (func $f64x2_trunc)))
