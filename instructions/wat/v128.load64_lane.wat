(module
  (type (;0;) (func (param i32 v128) (result v128)))
  (func $v128_load64_lane (type 0) (param i32 v128) (result v128)
    local.get 0
    local.get 1
    v128.load64_lane align=1 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "v128_load64_lane" (func $v128_load64_lane)))
