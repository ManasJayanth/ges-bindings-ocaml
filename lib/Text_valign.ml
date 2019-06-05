open Ctypes
open Foreign

type t = Baseline | Bottom | Top | Position | Center | Absolute

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Baseline
  else if v = Unsigned.UInt32.of_int 1 then Bottom
  else if v = Unsigned.UInt32.of_int 2 then Top
  else if v = Unsigned.UInt32.of_int 3 then Position
  else if v = Unsigned.UInt32.of_int 4 then Center
  else if v = Unsigned.UInt32.of_int 5 then Absolute
  else raise (Invalid_argument "Unexpected Text_valign value")

let to_value = function
  | Baseline -> Unsigned.UInt32.of_int 0
  | Bottom -> Unsigned.UInt32.of_int 1
  | Top -> Unsigned.UInt32.of_int 2
  | Position -> Unsigned.UInt32.of_int 3
  | Center -> Unsigned.UInt32.of_int 4
  | Absolute -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

