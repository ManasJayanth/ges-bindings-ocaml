open Ctypes

type t = Smpte | Snow | Black | White | Red | Green | Blue | Checkers_1 | Checkers_2 | Checkers_4 | Checkers_8 | Circular | Blink | Smpte75 | Zone_plate | Gamut | Chroma_zone_plate | Solid_color

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

