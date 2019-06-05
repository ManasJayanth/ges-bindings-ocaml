open Ctypes
open Foreign

type t = Asset_wrong_id | Asset_loading | Formatter_malformed_input_file

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Asset_wrong_id
  else if v = Unsigned.UInt32.of_int 1 then Asset_loading
  else if v = Unsigned.UInt32.of_int 2 then Formatter_malformed_input_file
  else raise (Invalid_argument "Unexpected Error value")

let to_value = function
  | Asset_wrong_id -> Unsigned.UInt32.of_int 0
  | Asset_loading -> Unsigned.UInt32.of_int 1
  | Formatter_malformed_input_file -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

