open Ctypes

type t
val t_typ : t typ

val create :
  string -> t ptr option
val get_uri :
  t ptr -> string option
val is_image :
  t ptr -> bool
val is_muted :
  t ptr -> bool
val set_is_image :
  t ptr -> bool -> unit
val set_mute :
  t ptr -> bool -> unit
