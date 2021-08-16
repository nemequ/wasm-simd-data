(module
  (type (;0;) (func (param v128) (result v128)))
  (func $i8x16_neg (type 0) (param v128) (result v128)
    local.get 0
    i8x16.neg)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "i8x16_neg" (func $i8x16_neg)))
