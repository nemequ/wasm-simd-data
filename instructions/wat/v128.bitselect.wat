(module
  (type (;0;) (func (param v128 v128 v128) (result v128)))
  (func $v128_bitselect (type 0) (param v128 v128 v128) (result v128)
    local.get 0
    local.get 1
    local.get 2
    v128.bitselect)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_bitselect" (func $v128_bitselect)))
