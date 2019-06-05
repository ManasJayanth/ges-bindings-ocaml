open Ctypes
open Foreign

type t = Edit_normal | Edit_ripple | Edit_roll | Edit_trim | Edit_slide

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Edit_normal
  else if v = Unsigned.UInt32.of_int 1 then Edit_ripple
  else if v = Unsigned.UInt32.of_int 2 then Edit_roll
  else if v = Unsigned.UInt32.of_int 3 then Edit_trim
  else if v = Unsigned.UInt32.of_int 4 then Edit_slide
  else raise (Invalid_argument "Unexpected Edit_mode value")

let to_value = function
  | Edit_normal -> Unsigned.UInt32.of_int 0
  | Edit_ripple -> Unsigned.UInt32.of_int 1
  | Edit_roll -> Unsigned.UInt32.of_int 2
  | Edit_trim -> Unsigned.UInt32.of_int 3
  | Edit_slide -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

