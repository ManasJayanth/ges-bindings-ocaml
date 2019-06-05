open Ctypes
open Foreign

(*DEPRECATED : FormatterLoadFromURIMethod*)
(*DEPRECATED : FormatterSaveToURIMethod*)
let c_META_DESCRIPTION = "description"
let c_META_FORMATTER_EXTENSION = "extension"
let c_META_FORMATTER_MIMETYPE = "mimetype"
let c_META_FORMATTER_NAME = "name"
let c_META_FORMATTER_RANK = "rank"
let c_META_FORMATTER_VERSION = "version"
let c_META_FORMAT_VERSION = "format-version"
let c_META_VOLUME = "volume"
let c_META_VOLUME_DEFAULT = 1.
let c_MULTI_FILE_URI_PREFIX = "multifile://"
let c_PADDING = 4l
let c_PADDING_LARGE = 20l
let c_TIMELINE_ELEMENT_NO_LAYER_PRIORITY = Unsigned.UInt32.of_string "4294967295"
let init =
  foreign "ges_init" (void @-> returning (bool))

