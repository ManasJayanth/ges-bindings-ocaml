open Ctypes

type t = Edit_normal | Edit_ripple | Edit_roll | Edit_trim | Edit_slide

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

