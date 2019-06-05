open Ctypes

type t = None | Bar_wipe_lr | Bar_wipe_tb | Box_wipe_tl | Box_wipe_tr | Box_wipe_br | Box_wipe_bl | Four_box_wipe_ci | Four_box_wipe_co | Barndoor_v | Barndoor_h | Box_wipe_tc | Box_wipe_rc | Box_wipe_bc | Box_wipe_lc | Diagonal_tl | Diagonal_tr | Bowtie_v | Bowtie_h | Barndoor_dbl | Barndoor_dtl | Misc_diagonal_dbd | Misc_diagonal_dd | Vee_d | Vee_l | Vee_u | Vee_r | Barnvee_d | Barnvee_l | Barnvee_u | Barnvee_r | Iris_rect | Clock_cw12 | Clock_cw3 | Clock_cw6 | Clock_cw9 | Pinwheel_tbv | Pinwheel_tbh | Pinwheel_fb | Fan_ct | Fan_cr | Doublefan_fov | Doublefan_foh | Singlesweep_cwt | Singlesweep_cwr | Singlesweep_cwb | Singlesweep_cwl | Doublesweep_pv | Doublesweep_pd | Doublesweep_ov | Doublesweep_oh | Fan_t | Fan_r | Fan_b | Fan_l | Doublefan_fiv | Doublefan_fih | Singlesweep_cwtl | Singlesweep_cwbl | Singlesweep_cwbr | Singlesweep_cwtr | Doublesweep_pdtl | Doublesweep_pdbl | Saloondoor_t | Saloondoor_l | Saloondoor_b | Saloondoor_r | Windshield_r | Windshield_u | Windshield_v | Windshield_h | Crossfade

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

