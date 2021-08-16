(module
  (type (;0;) (func (param v128) (result v128)))
  (func $v128_not (type 0) (param v128) (result v128)
    local.get 0
    v128.not)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_not" (func $v128_not)))
