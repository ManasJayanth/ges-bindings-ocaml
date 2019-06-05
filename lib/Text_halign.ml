open Ctypes
open Foreign

type t = Left | Center | Right | Position | Absolute

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Left
  else if v = Unsigned.UInt32.of_int 1 then Center
  else if v = Unsigned.UInt32.of_int 2 then Right
  else if v = Unsigned.UInt32.of_int 4 then Position
  else if v = Unsigned.UInt32.of_int 5 then Absolute
  else raise (Invalid_argument "Unexpected Text_halign value")

let to_value = function
  | Left -> Unsigned.UInt32.of_int 0
  | Center -> Unsigned.UInt32.of_int 1
  | Right -> Unsigned.UInt32.of_int 2
  | Position -> Unsigned.UInt32.of_int 4
  | Absolute -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

