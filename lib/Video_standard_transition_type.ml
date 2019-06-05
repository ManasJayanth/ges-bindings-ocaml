open Ctypes
open Foreign

type t = None | Bar_wipe_lr | Bar_wipe_tb | Box_wipe_tl | Box_wipe_tr | Box_wipe_br | Box_wipe_bl | Four_box_wipe_ci | Four_box_wipe_co | Barndoor_v | Barndoor_h | Box_wipe_tc | Box_wipe_rc | Box_wipe_bc | Box_wipe_lc | Diagonal_tl | Diagonal_tr | Bowtie_v | Bowtie_h | Barndoor_dbl | Barndoor_dtl | Misc_diagonal_dbd | Misc_diagonal_dd | Vee_d | Vee_l | Vee_u | Vee_r | Barnvee_d | Barnvee_l | Barnvee_u | Barnvee_r | Iris_rect | Clock_cw12 | Clock_cw3 | Clock_cw6 | Clock_cw9 | Pinwheel_tbv | Pinwheel_tbh | Pinwheel_fb | Fan_ct | Fan_cr | Doublefan_fov | Doublefan_foh | Singlesweep_cwt | Singlesweep_cwr | Singlesweep_cwb | Singlesweep_cwl | Doublesweep_pv | Doublesweep_pd | Doublesweep_ov | Doublesweep_oh | Fan_t | Fan_r | Fan_b | Fan_l | Doublefan_fiv | Doublefan_fih | Singlesweep_cwtl | Singlesweep_cwbl | Singlesweep_cwbr | Singlesweep_cwtr | Doublesweep_pdtl | Doublesweep_pdbl | Saloondoor_t | Saloondoor_l | Saloondoor_b | Saloondoor_r | Windshield_r | Windshield_u | Windshield_v | Windshield_h | Crossfade

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Bar_wipe_lr
  else if v = Unsigned.UInt32.of_int 2 then Bar_wipe_tb
  else if v = Unsigned.UInt32.of_int 3 then Box_wipe_tl
  else if v = Unsigned.UInt32.of_int 4 then Box_wipe_tr
  else if v = Unsigned.UInt32.of_int 5 then Box_wipe_br
  else if v = Unsigned.UInt32.of_int 6 then Box_wipe_bl
  else if v = Unsigned.UInt32.of_int 7 then Four_box_wipe_ci
  else if v = Unsigned.UInt32.of_int 8 then Four_box_wipe_co
  else if v = Unsigned.UInt32.of_int 21 then Barndoor_v
  else if v = Unsigned.UInt32.of_int 22 then Barndoor_h
  else if v = Unsigned.UInt32.of_int 23 then Box_wipe_tc
  else if v = Unsigned.UInt32.of_int 24 then Box_wipe_rc
  else if v = Unsigned.UInt32.of_int 25 then Box_wipe_bc
  else if v = Unsigned.UInt32.of_int 26 then Box_wipe_lc
  else if v = Unsigned.UInt32.of_int 41 then Diagonal_tl
  else if v = Unsigned.UInt32.of_int 42 then Diagonal_tr
  else if v = Unsigned.UInt32.of_int 43 then Bowtie_v
  else if v = Unsigned.UInt32.of_int 44 then Bowtie_h
  else if v = Unsigned.UInt32.of_int 45 then Barndoor_dbl
  else if v = Unsigned.UInt32.of_int 46 then Barndoor_dtl
  else if v = Unsigned.UInt32.of_int 47 then Misc_diagonal_dbd
  else if v = Unsigned.UInt32.of_int 48 then Misc_diagonal_dd
  else if v = Unsigned.UInt32.of_int 61 then Vee_d
  else if v = Unsigned.UInt32.of_int 62 then Vee_l
  else if v = Unsigned.UInt32.of_int 63 then Vee_u
  else if v = Unsigned.UInt32.of_int 64 then Vee_r
  else if v = Unsigned.UInt32.of_int 65 then Barnvee_d
  else if v = Unsigned.UInt32.of_int 66 then Barnvee_l
  else if v = Unsigned.UInt32.of_int 67 then Barnvee_u
  else if v = Unsigned.UInt32.of_int 68 then Barnvee_r
  else if v = Unsigned.UInt32.of_int 101 then Iris_rect
  else if v = Unsigned.UInt32.of_int 201 then Clock_cw12
  else if v = Unsigned.UInt32.of_int 202 then Clock_cw3
  else if v = Unsigned.UInt32.of_int 203 then Clock_cw6
  else if v = Unsigned.UInt32.of_int 204 then Clock_cw9
  else if v = Unsigned.UInt32.of_int 205 then Pinwheel_tbv
  else if v = Unsigned.UInt32.of_int 206 then Pinwheel_tbh
  else if v = Unsigned.UInt32.of_int 207 then Pinwheel_fb
  else if v = Unsigned.UInt32.of_int 211 then Fan_ct
  else if v = Unsigned.UInt32.of_int 212 then Fan_cr
  else if v = Unsigned.UInt32.of_int 213 then Doublefan_fov
  else if v = Unsigned.UInt32.of_int 214 then Doublefan_foh
  else if v = Unsigned.UInt32.of_int 221 then Singlesweep_cwt
  else if v = Unsigned.UInt32.of_int 222 then Singlesweep_cwr
  else if v = Unsigned.UInt32.of_int 223 then Singlesweep_cwb
  else if v = Unsigned.UInt32.of_int 224 then Singlesweep_cwl
  else if v = Unsigned.UInt32.of_int 225 then Doublesweep_pv
  else if v = Unsigned.UInt32.of_int 226 then Doublesweep_pd
  else if v = Unsigned.UInt32.of_int 227 then Doublesweep_ov
  else if v = Unsigned.UInt32.of_int 228 then Doublesweep_oh
  else if v = Unsigned.UInt32.of_int 231 then Fan_t
  else if v = Unsigned.UInt32.of_int 232 then Fan_r
  else if v = Unsigned.UInt32.of_int 233 then Fan_b
  else if v = Unsigned.UInt32.of_int 234 then Fan_l
  else if v = Unsigned.UInt32.of_int 235 then Doublefan_fiv
  else if v = Unsigned.UInt32.of_int 236 then Doublefan_fih
  else if v = Unsigned.UInt32.of_int 241 then Singlesweep_cwtl
  else if v = Unsigned.UInt32.of_int 242 then Singlesweep_cwbl
  else if v = Unsigned.UInt32.of_int 243 then Singlesweep_cwbr
  else if v = Unsigned.UInt32.of_int 244 then Singlesweep_cwtr
  else if v = Unsigned.UInt32.of_int 245 then Doublesweep_pdtl
  else if v = Unsigned.UInt32.of_int 246 then Doublesweep_pdbl
  else if v = Unsigned.UInt32.of_int 251 then Saloondoor_t
  else if v = Unsigned.UInt32.of_int 252 then Saloondoor_l
  else if v = Unsigned.UInt32.of_int 253 then Saloondoor_b
  else if v = Unsigned.UInt32.of_int 254 then Saloondoor_r
  else if v = Unsigned.UInt32.of_int 261 then Windshield_r
  else if v = Unsigned.UInt32.of_int 262 then Windshield_u
  else if v = Unsigned.UInt32.of_int 263 then Windshield_v
  else if v = Unsigned.UInt32.of_int 264 then Windshield_h
  else if v = Unsigned.UInt32.of_int 512 then Crossfade
  else raise (Invalid_argument "Unexpected Video_standard_transition_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Bar_wipe_lr -> Unsigned.UInt32.of_int 1
  | Bar_wipe_tb -> Unsigned.UInt32.of_int 2
  | Box_wipe_tl -> Unsigned.UInt32.of_int 3
  | Box_wipe_tr -> Unsigned.UInt32.of_int 4
  | Box_wipe_br -> Unsigned.UInt32.of_int 5
  | Box_wipe_bl -> Unsigned.UInt32.of_int 6
  | Four_box_wipe_ci -> Unsigned.UInt32.of_int 7
  | Four_box_wipe_co -> Unsigned.UInt32.of_int 8
  | Barndoor_v -> Unsigned.UInt32.of_int 21
  | Barndoor_h -> Unsigned.UInt32.of_int 22
  | Box_wipe_tc -> Unsigned.UInt32.of_int 23
  | Box_wipe_rc -> Unsigned.UInt32.of_int 24
  | Box_wipe_bc -> Unsigned.UInt32.of_int 25
  | Box_wipe_lc -> Unsigned.UInt32.of_int 26
  | Diagonal_tl -> Unsigned.UInt32.of_int 41
  | Diagonal_tr -> Unsigned.UInt32.of_int 42
  | Bowtie_v -> Unsigned.UInt32.of_int 43
  | Bowtie_h -> Unsigned.UInt32.of_int 44
  | Barndoor_dbl -> Unsigned.UInt32.of_int 45
  | Barndoor_dtl -> Unsigned.UInt32.of_int 46
  | Misc_diagonal_dbd -> Unsigned.UInt32.of_int 47
  | Misc_diagonal_dd -> Unsigned.UInt32.of_int 48
  | Vee_d -> Unsigned.UInt32.of_int 61
  | Vee_l -> Unsigned.UInt32.of_int 62
  | Vee_u -> Unsigned.UInt32.of_int 63
  | Vee_r -> Unsigned.UInt32.of_int 64
  | Barnvee_d -> Unsigned.UInt32.of_int 65
  | Barnvee_l -> Unsigned.UInt32.of_int 66
  | Barnvee_u -> Unsigned.UInt32.of_int 67
  | Barnvee_r -> Unsigned.UInt32.of_int 68
  | Iris_rect -> Unsigned.UInt32.of_int 101
  | Clock_cw12 -> Unsigned.UInt32.of_int 201
  | Clock_cw3 -> Unsigned.UInt32.of_int 202
  | Clock_cw6 -> Unsigned.UInt32.of_int 203
  | Clock_cw9 -> Unsigned.UInt32.of_int 204
  | Pinwheel_tbv -> Unsigned.UInt32.of_int 205
  | Pinwheel_tbh -> Unsigned.UInt32.of_int 206
  | Pinwheel_fb -> Unsigned.UInt32.of_int 207
  | Fan_ct -> Unsigned.UInt32.of_int 211
  | Fan_cr -> Unsigned.UInt32.of_int 212
  | Doublefan_fov -> Unsigned.UInt32.of_int 213
  | Doublefan_foh -> Unsigned.UInt32.of_int 214
  | Singlesweep_cwt -> Unsigned.UInt32.of_int 221
  | Singlesweep_cwr -> Unsigned.UInt32.of_int 222
  | Singlesweep_cwb -> Unsigned.UInt32.of_int 223
  | Singlesweep_cwl -> Unsigned.UInt32.of_int 224
  | Doublesweep_pv -> Unsigned.UInt32.of_int 225
  | Doublesweep_pd -> Unsigned.UInt32.of_int 226
  | Doublesweep_ov -> Unsigned.UInt32.of_int 227
  | Doublesweep_oh -> Unsigned.UInt32.of_int 228
  | Fan_t -> Unsigned.UInt32.of_int 231
  | Fan_r -> Unsigned.UInt32.of_int 232
  | Fan_b -> Unsigned.UInt32.of_int 233
  | Fan_l -> Unsigned.UInt32.of_int 234
  | Doublefan_fiv -> Unsigned.UInt32.of_int 235
  | Doublefan_fih -> Unsigned.UInt32.of_int 236
  | Singlesweep_cwtl -> Unsigned.UInt32.of_int 241
  | Singlesweep_cwbl -> Unsigned.UInt32.of_int 242
  | Singlesweep_cwbr -> Unsigned.UInt32.of_int 243
  | Singlesweep_cwtr -> Unsigned.UInt32.of_int 244
  | Doublesweep_pdtl -> Unsigned.UInt32.of_int 245
  | Doublesweep_pdbl -> Unsigned.UInt32.of_int 246
  | Saloondoor_t -> Unsigned.UInt32.of_int 251
  | Saloondoor_l -> Unsigned.UInt32.of_int 252
  | Saloondoor_b -> Unsigned.UInt32.of_int 253
  | Saloondoor_r -> Unsigned.UInt32.of_int 254
  | Windshield_r -> Unsigned.UInt32.of_int 261
  | Windshield_u -> Unsigned.UInt32.of_int 262
  | Windshield_v -> Unsigned.UInt32.of_int 263
  | Windshield_h -> Unsigned.UInt32.of_int 264
  | Crossfade -> Unsigned.UInt32.of_int 512

let t_view = view ~read:of_value ~write:to_value uint32_t

