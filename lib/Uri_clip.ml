open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_uri_clip_new" (string @-> returning (ptr_opt t_typ))
let get_uri =
  foreign "ges_uri_clip_get_uri" (ptr t_typ @-> returning (string_opt))
let is_image =
  foreign "ges_uri_clip_is_image" (ptr t_typ @-> returning (bool))
let is_muted =
  foreign "ges_uri_clip_is_muted" (ptr t_typ @-> returning (bool))
let set_is_image =
  foreign "ges_uri_clip_set_is_image" (ptr t_typ @-> bool @-> returning (void))
let set_mute =
  foreign "ges_uri_clip_set_mute" (ptr t_typ @-> bool @-> returning (void))
