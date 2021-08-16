(module
  (type (;0;) (func (param v128 v128) (result v128)))
  (func $v128_xor (type 0) (param v128 v128) (result v128)
    local.get 1
    local.get 0
    v128.xor)
  (export "v128_xor" (func $v128_xor)))
