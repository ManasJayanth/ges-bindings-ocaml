open Ctypes
open Foreign

type t = Smpte | Snow | Black | White | Red | Green | Blue | Checkers_1 | Checkers_2 | Checkers_4 | Checkers_8 | Circular | Blink | Smpte75 | Zone_plate | Gamut | Chroma_zone_plate | Solid_color

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Smpte
  else if v = Unsigned.UInt32.of_int 1 then Snow
  else if v = Unsigned.UInt32.of_int 2 then Black
  else if v = Unsigned.UInt32.of_int 3 then White
  else if v = Unsigned.UInt32.of_int 4 then Red
  else if v = Unsigned.UInt32.of_int 5 then Green
  else if v = Unsigned.UInt32.of_int 6 then Blue
  else if v = Unsigned.UInt32.of_int 7 then Checkers_1
  else if v = Unsigned.UInt32.of_int 8 then Checkers_2
  else if v = Unsigned.UInt32.of_int 9 then Checkers_4
  else if v = Unsigned.UInt32.of_int 10 then Checkers_8
  else if v = Unsigned.UInt32.of_int 11 then Circular
  else if v = Unsigned.UInt32.of_int 12 then Blink
  else if v = Unsigned.UInt32.of_int 13 then Smpte75
  else if v = Unsigned.UInt32.of_int 14 then Zone_plate
  else if v = Unsigned.UInt32.of_int 15 then Gamut
  else if v = Unsigned.UInt32.of_int 16 then Chroma_zone_plate
  else if v = Unsigned.UInt32.of_int 17 then Solid_color
  else raise (Invalid_argument "Unexpected Video_test_pattern value")

let to_value = function
  | Smpte -> Unsigned.UInt32.of_int 0
  | Snow -> Unsigned.UInt32.of_int 1
  | Black -> Unsigned.UInt32.of_int 2
  | White -> Unsigned.UInt32.of_int 3
  | Red -> Unsigned.UInt32.of_int 4
  | Green -> Unsigned.UInt32.of_int 5
  | Blue -> Unsigned.UInt32.of_int 6
  | Checkers_1 -> Unsigned.UInt32.of_int 7
  | Checkers_2 -> Unsigned.UInt32.of_int 8
  | Checkers_4 -> Unsigned.UInt32.of_int 9
  | Checkers_8 -> Unsigned.UInt32.of_int 10
  | Circular -> Unsigned.UInt32.of_int 11
  | Blink -> Unsigned.UInt32.of_int 12
  | Smpte75 -> Unsigned.UInt32.of_int 13
  | Zone_plate -> Unsigned.UInt32.of_int 14
  | Gamut -> Unsigned.UInt32.of_int 15
  | Chroma_zone_plate -> Unsigned.UInt32.of_int 16
  | Solid_color -> Unsigned.UInt32.of_int 17

let t_view = view ~read:of_value ~write:to_value uint32_t

