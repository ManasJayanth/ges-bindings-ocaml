open Ctypes
open Foreign

type t = Error | Async | Ok

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Error
  else if v = Unsigned.UInt32.of_int 1 then Async
  else if v = Unsigned.UInt32.of_int 2 then Ok
  else raise (Invalid_argument "Unexpected Asset_loading_return value")

let to_value = function
  | Error -> Unsigned.UInt32.of_int 0
  | Async -> Unsigned.UInt32.of_int 1
  | Ok -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

