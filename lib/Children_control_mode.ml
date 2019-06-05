open Ctypes
open Foreign

type t = Update | Ignore_notifies | Update_offsets | Update_all_values | Last

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Update
  else if v = Unsigned.UInt32.of_int 1 then Ignore_notifies
  else if v = Unsigned.UInt32.of_int 2 then Update_offsets
  else if v = Unsigned.UInt32.of_int 3 then Update_all_values
  else if v = Unsigned.UInt32.of_int 4 then Last
  else raise (Invalid_argument "Unexpected Children_control_mode value")

let to_value = function
  | Update -> Unsigned.UInt32.of_int 0
  | Ignore_notifies -> Unsigned.UInt32.of_int 1
  | Update_offsets -> Unsigned.UInt32.of_int 2
  | Update_all_values -> Unsigned.UInt32.of_int 3
  | Last -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

