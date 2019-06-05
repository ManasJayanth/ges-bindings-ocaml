open Ctypes
open Foreign

type t = Audio_preview | Video_preview | Full_preview | Render | Smart_render
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Audio_preview
  else if v = Unsigned.UInt32.of_int 2 then Video_preview
  else if v = Unsigned.UInt32.of_int 3 then Full_preview
  else if v = Unsigned.UInt32.of_int 4 then Render
  else if v = Unsigned.UInt32.of_int 8 then Smart_render
  else raise (Invalid_argument "Unexpected Pipeline_flags value")

let to_value = function
  | Audio_preview -> Unsigned.UInt32.of_int 1
  | Video_preview -> Unsigned.UInt32.of_int 2
  | Full_preview -> Unsigned.UInt32.of_int 3
  | Render -> Unsigned.UInt32.of_int 4
  | Smart_render -> Unsigned.UInt32.of_int 8

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Audio_preview ); ( 2 , Video_preview ); ( 3 , Full_preview ); ( 4 , Render ); ( 8 , Smart_render )]
  in
  let rec build_flags_list allf acc =
    match allf with
    | [] -> acc
    | (i, f) :: q -> if ((logand v (of_int i )) <> zero) then build_flags_list q (f :: acc)
      else build_flags_list q acc
  in build_flags_list all_flags []

let list_to_value flags =
  let open Unsigned.UInt32 in
  let rec logor_flags l acc =
    match l with
    | [] -> acc
    | f :: q -> let v = to_value f in
      let acc' = logor acc v in
      logor_flags q acc'
  in
  logor_flags flags zero

let t_list_view = view ~read:list_of_value ~write:list_to_value uint32_t
