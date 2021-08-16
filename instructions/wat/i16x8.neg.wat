(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i16x8_neg (type 0) (param v128) (result v128)
    local.get 0
    i16x8.neg)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "i16x8_neg" (func $i16x8_neg)))
