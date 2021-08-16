(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $v128_and (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    v128.and)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_and" (func $v128_and)))
