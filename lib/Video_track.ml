open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_video_track_new" (void @-> returning (ptr t_typ))
