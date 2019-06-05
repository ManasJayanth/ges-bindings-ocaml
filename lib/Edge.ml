open Ctypes
open Foreign

type t = Edge_start | Edge_end | Edge_none

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Edge_start
  else if v = Unsigned.UInt32.of_int 1 then Edge_end
  else if v = Unsigned.UInt32.of_int 2 then Edge_none
  else raise (Invalid_argument "Unexpected Edge value")

let to_value = function
  | Edge_start -> Unsigned.UInt32.of_int 0
  | Edge_end -> Unsigned.UInt32.of_int 1
  | Edge_none -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

