(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $f64x2_div (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    f64x2.div)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "f64x2_div" (func $f64x2_div)))
