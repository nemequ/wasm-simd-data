(module
  (type (;0;) (func (param f64) (result v128)))
  (func $f64x2_splat (type 0) (param f64) (result v128)
    local.get 0
    f64x2.splat)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_splat" (func $f64x2_splat)))
