(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $i8x16_sub (type 0) (param v128 v128) (result v128)
    local.get 0
    local.get 1
    i8x16.sub)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i8x16_sub" (func $i8x16_sub)))
