open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_effect_new" (string @-> returning (ptr_opt t_typ))
