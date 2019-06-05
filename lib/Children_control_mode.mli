open Ctypes

type t = Update | Ignore_notifies | Update_offsets | Update_all_values | Last

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

