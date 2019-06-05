open Ctypes

type t = Asset_wrong_id | Asset_loading | Formatter_malformed_input_file

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

