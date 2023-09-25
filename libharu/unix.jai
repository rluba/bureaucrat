//
// This file was auto-generated using the following command:
//
// jai libharu/generate.jai
//



HPDF_MAJOR_VERSION :: 2;
HPDF_MINOR_VERSION :: 4;
HPDF_BUGFIX_VERSION :: 4;
HPDF_EXTRA_VERSION :: "";

HPDF_VERSION_ID :: (HPDF_MAJOR_VERSION) * 10000 + (HPDF_MINOR_VERSION) * 100 + (HPDF_BUGFIX_VERSION);

HPDF_TRUE :: 1;
HPDF_FALSE :: 0;

HPDF_OK :: 0;
HPDF_NOERROR :: 0;

HPDF_TMP_BUF_SIZ :: 512;
HPDF_SHORT_BUF_SIZ :: 32;
HPDF_REAL_LEN :: 64;
HPDF_INT_LEN :: 11;
HPDF_TEXT_DEFAULT_LEN :: 256;
HPDF_UNICODE_HEADER_LEN :: 2;
HPDF_DATE_TIME_STR_LEN :: 23;

HPDF_BYTE_OFFSET_LEN :: 10;
HPDF_OBJ_ID_LEN :: 7;
HPDF_GEN_NO_LEN :: 5;

HPDF_DEF_FONT :: "Helvetica";

HPDF_DEF_WORDSPACE :: 0;
HPDF_DEF_CHARSPACE :: 0;
HPDF_DEF_FONTSIZE :: 10;
HPDF_DEF_HSCALING :: 100;
HPDF_DEF_LEADING :: 0;

HPDF_DEF_RISE :: 0;
HPDF_DEF_RAISE :: HPDF_DEF_RISE;
HPDF_DEF_LINEWIDTH :: 1;

HPDF_DEF_MITERLIMIT :: 10;
HPDF_DEF_FLATNESS :: 1;
HPDF_DEF_PAGE_NUM :: 1;

HPDF_BS_DEF_WIDTH :: 1;

HPDF_DEF_PAGE_WIDTH :: 595.276;
HPDF_DEF_PAGE_HEIGHT :: 841.89;

HPDF_COMP_NONE :: 0x00;
HPDF_COMP_TEXT :: 0x01;
HPDF_COMP_IMAGE :: 0x02;
HPDF_COMP_METADATA :: 0x04;
HPDF_COMP_ALL :: 0x0F;

HPDF_COMP_MASK :: 0xFF;

HPDF_ENABLE_READ :: 0;
HPDF_ENABLE_PRINT :: 4;
HPDF_ENABLE_EDIT_ALL :: 8;
HPDF_ENABLE_COPY :: 16;
HPDF_ENABLE_EDIT :: 32;

HPDF_HIDE_TOOLBAR :: 1;
HPDF_HIDE_MENUBAR :: 2;
HPDF_HIDE_WINDOW_UI :: 4;
HPDF_FIT_WINDOW :: 8;
HPDF_CENTER_WINDOW :: 16;
HPDF_PRINT_SCALING_NONE :: 32;

HPDF_LIMIT_MAX_INT :: 2147483647;
HPDF_LIMIT_MIN_INT :: -2147483647;

HPDF_LIMIT_MAX_REAL :: 3.4E38;
HPDF_LIMIT_MIN_REAL :: -3.4E38;

HPDF_LIMIT_MAX_STRING_LEN :: 2147483646;
HPDF_LIMIT_MAX_NAME_LEN :: 127;

HPDF_LIMIT_MAX_ARRAY :: 8388607;
HPDF_LIMIT_MAX_DICT_ELEMENT :: 8388607;
HPDF_LIMIT_MAX_XREF_ELEMENT :: 8388607;
HPDF_LIMIT_MAX_GSTATE :: 28;
HPDF_LIMIT_MAX_DEVICE_N :: 8;
HPDF_LIMIT_MAX_DEVICE_N_V15 :: 32;
HPDF_LIMIT_MAX_CID :: 65535;
HPDF_MAX_GENERATION_NUM :: 65535;

HPDF_MIN_PAGE_HEIGHT :: 3;
HPDF_MIN_PAGE_WIDTH :: 3;
HPDF_MAX_PAGE_HEIGHT :: 14400;
HPDF_MAX_PAGE_WIDTH :: 14400;
HPDF_MIN_MAGNIFICATION_FACTOR :: 8;
HPDF_MAX_MAGNIFICATION_FACTOR :: 3200;

HPDF_MIN_PAGE_SIZE :: 3;
HPDF_MAX_PAGE_SIZE :: 14400;
HPDF_MIN_HORIZONTALSCALING :: 10;
HPDF_MAX_HORIZONTALSCALING :: 300;
HPDF_MIN_WORDSPACE :: -30;
HPDF_MAX_WORDSPACE :: 300;
HPDF_MIN_CHARSPACE :: -30;
HPDF_MAX_CHARSPACE :: 300;
HPDF_MAX_FONTSIZE :: 600;
HPDF_MAX_ZOOMSIZE :: 10;
HPDF_MAX_LEADING :: 300;
HPDF_MAX_LINEWIDTH :: 100;
HPDF_MAX_DASH_PATTERN :: 100;

HPDF_MAX_JWW_NUM :: 128;

HPDF_GMODE_PAGE_DESCRIPTION :: 0x0001;
HPDF_GMODE_PATH_OBJECT :: 0x0002;
HPDF_GMODE_TEXT_OBJECT :: 0x0004;
HPDF_GMODE_CLIPPING_PATH :: 0x0008;
HPDF_GMODE_SHADING :: 0x0010;
HPDF_GMODE_INLINE_IMAGE :: 0x0020;
HPDF_GMODE_EXTERNAL_OBJECT :: 0x0040;

HPDF_SIG_BYTES :: 0x41504446;

HPDF_ARRAY_COUNT_ERR :: 0x1001;
HPDF_ARRAY_ITEM_NOT_FOUND :: 0x1002;
HPDF_ARRAY_ITEM_UNEXPECTED_TYPE :: 0x1003;
HPDF_BINARY_LENGTH_ERR :: 0x1004;
HPDF_CANNOT_GET_PALLET :: 0x1005;
HPDF_DICT_COUNT_ERR :: 0x1007;
HPDF_DICT_ITEM_NOT_FOUND :: 0x1008;
HPDF_DICT_ITEM_UNEXPECTED_TYPE :: 0x1009;
HPDF_DICT_STREAM_LENGTH_NOT_FOUND :: 0x100A;
HPDF_DOC_ENCRYPTDICT_NOT_FOUND :: 0x100B;
HPDF_DOC_INVALID_OBJECT :: 0x100C;

HPDF_DUPLICATE_REGISTRATION :: 0x100E;
HPDF_EXCEED_JWW_CODE_NUM_LIMIT :: 0x100F;

HPDF_ENCRYPT_INVALID_PASSWORD :: 0x1011;

HPDF_ERR_UNKNOWN_CLASS :: 0x1013;
HPDF_EXCEED_GSTATE_LIMIT :: 0x1014;
HPDF_FAILD_TO_ALLOC_MEM :: 0x1015;
HPDF_FILE_IO_ERROR :: 0x1016;
HPDF_FILE_OPEN_ERROR :: 0x1017;

HPDF_FONT_EXISTS :: 0x1019;
HPDF_FONT_INVALID_WIDTHS_TABLE :: 0x101A;
HPDF_INVALID_AFM_HEADER :: 0x101B;
HPDF_INVALID_ANNOTATION :: 0x101C;

HPDF_INVALID_BIT_PER_COMPONENT :: 0x101E;
HPDF_INVALID_CHAR_MATRICS_DATA :: 0x101F;
HPDF_INVALID_COLOR_SPACE :: 0x1020;
HPDF_INVALID_COMPRESSION_MODE :: 0x1021;
HPDF_INVALID_DATE_TIME :: 0x1022;
HPDF_INVALID_DESTINATION :: 0x1023;

HPDF_INVALID_DOCUMENT :: 0x1025;
HPDF_INVALID_DOCUMENT_STATE :: 0x1026;
HPDF_INVALID_ENCODER :: 0x1027;
HPDF_INVALID_ENCODER_TYPE :: 0x1028;

HPDF_INVALID_ENCODING_NAME :: 0x102B;
HPDF_INVALID_ENCRYPT_KEY_LEN :: 0x102C;
HPDF_INVALID_FONTDEF_DATA :: 0x102D;
HPDF_INVALID_FONTDEF_TYPE :: 0x102E;
HPDF_INVALID_FONT_NAME :: 0x102F;
HPDF_INVALID_IMAGE :: 0x1030;
HPDF_INVALID_JPEG_DATA :: 0x1031;
HPDF_INVALID_N_DATA :: 0x1032;
HPDF_INVALID_OBJECT :: 0x1033;
HPDF_INVALID_OBJ_ID :: 0x1034;
HPDF_INVALID_OPERATION :: 0x1035;
HPDF_INVALID_OUTLINE :: 0x1036;
HPDF_INVALID_PAGE :: 0x1037;
HPDF_INVALID_PAGES :: 0x1038;
HPDF_INVALID_PARAMETER :: 0x1039;

HPDF_INVALID_PNG_IMAGE :: 0x103B;
HPDF_INVALID_STREAM :: 0x103C;
HPDF_MISSING_FILE_NAME_ENTRY :: 0x103D;

HPDF_INVALID_TTC_FILE :: 0x103F;
HPDF_INVALID_TTC_INDEX :: 0x1040;
HPDF_INVALID_WX_DATA :: 0x1041;
HPDF_ITEM_NOT_FOUND :: 0x1042;
HPDF_LIBPNG_ERROR :: 0x1043;
HPDF_NAME_INVALID_VALUE :: 0x1044;
HPDF_NAME_OUT_OF_RANGE :: 0x1045;

HPDF_PAGE_INVALID_PARAM_COUNT :: 0x1048;
HPDF_PAGES_MISSING_KIDS_ENTRY :: 0x1049;
HPDF_PAGE_CANNOT_FIND_OBJECT :: 0x104A;
HPDF_PAGE_CANNOT_GET_ROOT_PAGES :: 0x104B;
HPDF_PAGE_CANNOT_RESTORE_GSTATE :: 0x104C;
HPDF_PAGE_CANNOT_SET_PARENT :: 0x104D;
HPDF_PAGE_FONT_NOT_FOUND :: 0x104E;
HPDF_PAGE_INVALID_FONT :: 0x104F;
HPDF_PAGE_INVALID_FONT_SIZE :: 0x1050;
HPDF_PAGE_INVALID_GMODE :: 0x1051;
HPDF_PAGE_INVALID_INDEX :: 0x1052;
HPDF_PAGE_INVALID_ROTATE_VALUE :: 0x1053;
HPDF_PAGE_INVALID_SIZE :: 0x1054;
HPDF_PAGE_INVALID_XOBJECT :: 0x1055;
HPDF_PAGE_OUT_OF_RANGE :: 0x1056;
HPDF_REAL_OUT_OF_RANGE :: 0x1057;
HPDF_STREAM_EOF :: 0x1058;
HPDF_STREAM_READLN_CONTINUE :: 0x1059;

HPDF_STRING_OUT_OF_RANGE :: 0x105B;
HPDF_THIS_FUNC_WAS_SKIPPED :: 0x105C;
HPDF_TTF_CANNOT_EMBEDDING_FONT :: 0x105D;
HPDF_TTF_INVALID_CMAP :: 0x105E;
HPDF_TTF_INVALID_FOMAT :: 0x105F;
HPDF_TTF_MISSING_TABLE :: 0x1060;
HPDF_UNSUPPORTED_FONT_TYPE :: 0x1061;
HPDF_UNSUPPORTED_FUNC :: 0x1062;
HPDF_UNSUPPORTED_JPEG_FORMAT :: 0x1063;
HPDF_UNSUPPORTED_TYPE1_FONT :: 0x1064;
HPDF_XREF_COUNT_ERR :: 0x1065;
HPDF_ZLIB_ERROR :: 0x1066;
HPDF_INVALID_PAGE_INDEX :: 0x1067;
HPDF_INVALID_URI :: 0x1068;
HPDF_PAGE_LAYOUT_OUT_OF_RANGE :: 0x1069;
HPDF_PAGE_MODE_OUT_OF_RANGE :: 0x1070;
HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE :: 0x1071;
HPDF_ANNOT_INVALID_ICON :: 0x1072;
HPDF_ANNOT_INVALID_BORDER_STYLE :: 0x1073;
HPDF_PAGE_INVALID_DIRECTION :: 0x1074;
HPDF_INVALID_FONT :: 0x1075;
HPDF_PAGE_INSUFFICIENT_SPACE :: 0x1076;
HPDF_PAGE_INVALID_DISPLAY_TIME :: 0x1077;
HPDF_PAGE_INVALID_TRANSITION_TIME :: 0x1078;
HPDF_INVALID_PAGE_SLIDESHOW_TYPE :: 0x1079;
HPDF_EXT_GSTATE_OUT_OF_RANGE :: 0x1080;
HPDF_INVALID_EXT_GSTATE :: 0x1081;
HPDF_EXT_GSTATE_READ_ONLY :: 0x1082;
HPDF_INVALID_U3D_DATA :: 0x1083;
HPDF_NAME_CANNOT_GET_NAMES :: 0x1084;
HPDF_INVALID_ICC_COMPONENT_NUM :: 0x1085;
HPDF_PAGE_INVALID_BOUNDARY :: 0x1086;

HPDF_INVALID_SHADING_TYPE :: 0x1088;

HPDF_ID_LEN :: 16;
HPDF_PASSWD_LEN :: 32;
HPDF_ENCRYPT_KEY_MAX :: 16;
HPDF_MD5_KEY_LEN :: 16;
HPDF_PERMISSION_PAD :: 0xFFFFFFC0;
HPDF_ARC4_BUF_SIZE :: 256;

HPDF_STREAM_SIG_BYTES :: 0x5354524D;

HPDF_STREAM_FILTER_NONE :: 0x0000;
HPDF_STREAM_FILTER_ASCIIHEX :: 0x0100;
HPDF_STREAM_FILTER_ASCII85 :: 0x0200;
HPDF_STREAM_FILTER_FLATE_DECODE :: 0x0400;
HPDF_STREAM_FILTER_DCT_DECODE :: 0x0800;
HPDF_STREAM_FILTER_CCITT_DECODE :: 0x1000;

HPDF_ENCODER_SIG_BYTES :: 0x454E4344;

HPDF_ENCODING_FONT_SPECIFIC :: "FontSpecific";
HPDF_ENCODING_STANDARD :: "StandardEncoding";
HPDF_ENCODING_MAC_ROMAN :: "MacRomanEncoding";
HPDF_ENCODING_WIN_ANSI :: "WinAnsiEncoding";
HPDF_ENCODING_ISO8859_2 :: "ISO8859-2";
HPDF_ENCODING_ISO8859_3 :: "ISO8859-3";
HPDF_ENCODING_ISO8859_4 :: "ISO8859-4";
HPDF_ENCODING_ISO8859_5 :: "ISO8859-5";
HPDF_ENCODING_ISO8859_6 :: "ISO8859-6";
HPDF_ENCODING_ISO8859_7 :: "ISO8859-7";
HPDF_ENCODING_ISO8859_8 :: "ISO8859-8";
HPDF_ENCODING_ISO8859_9 :: "ISO8859-9";
HPDF_ENCODING_ISO8859_10 :: "ISO8859-10";
HPDF_ENCODING_ISO8859_11 :: "ISO8859-11";
HPDF_ENCODING_ISO8859_13 :: "ISO8859-13";
HPDF_ENCODING_ISO8859_14 :: "ISO8859-14";
HPDF_ENCODING_ISO8859_15 :: "ISO8859-15";
HPDF_ENCODING_ISO8859_16 :: "ISO8859-16";
HPDF_ENCODING_CP1250 :: "CP1250";
HPDF_ENCODING_CP1251 :: "CP1251";
HPDF_ENCODING_CP1252 :: "CP1252";
HPDF_ENCODING_CP1253 :: "CP1253";
HPDF_ENCODING_CP1254 :: "CP1254";
HPDF_ENCODING_CP1255 :: "CP1255";
HPDF_ENCODING_CP1256 :: "CP1256";
HPDF_ENCODING_CP1257 :: "CP1257";
HPDF_ENCODING_CP1258 :: "CP1258";
HPDF_ENCODING_KOI8_R :: "KOI8-R";

char_NOTDEF :: ".notdef";

HPDF_OTYPE_NONE :: 0x00000000;
HPDF_OTYPE_DIRECT :: 0x80000000;
HPDF_OTYPE_INDIRECT :: 0x40000000;
HPDF_OTYPE_ANY :: HPDF_OTYPE_DIRECT | HPDF_OTYPE_INDIRECT;
HPDF_OTYPE_HIDDEN :: 0x10000000;

HPDF_OCLASS_UNKNOWN :: 0x0001;
HPDF_OCLASS_NULL :: 0x0002;
HPDF_OCLASS_BOOLEAN :: 0x0003;
HPDF_OCLASS_NUMBER :: 0x0004;
HPDF_OCLASS_REAL :: 0x0005;
HPDF_OCLASS_NAME :: 0x0006;
HPDF_OCLASS_STRING :: 0x0007;
HPDF_OCLASS_BINARY :: 0x0008;
HPDF_OCLASS_ARRAY :: 0x0010;
HPDF_OCLASS_DICT :: 0x0011;
HPDF_OCLASS_PROXY :: 0x0012;
HPDF_OCLASS_DIRECT :: 0x00A0;
HPDF_OCLASS_ANY :: 0x00FF;

HPDF_OSUBCLASS_FONT :: 0x0100;
HPDF_OSUBCLASS_CATALOG :: 0x0200;
HPDF_OSUBCLASS_PAGES :: 0x0300;
HPDF_OSUBCLASS_PAGE :: 0x0400;
HPDF_OSUBCLASS_XOBJECT :: 0x0500;
HPDF_OSUBCLASS_OUTLINE :: 0x0600;
HPDF_OSUBCLASS_DESTINATION :: 0x0700;
HPDF_OSUBCLASS_ANNOTATION :: 0x0800;
HPDF_OSUBCLASS_ENCRYPT :: 0x0900;
HPDF_OSUBCLASS_EXT_GSTATE :: 0x0A00;
HPDF_OSUBCLASS_EXT_GSTATE_R :: 0x0B00;
HPDF_OSUBCLASS_NAMEDICT :: 0x0C00;
HPDF_OSUBCLASS_NAMETREE :: 0x0D00;
HPDF_OSUBCLASS_SHADING :: 0x0E00;

HPDF_FONTDEF_SIG_BYTES :: 0x464F4E54;

HPDF_FONT_FIXED_WIDTH :: 1;
HPDF_FONT_SERIF :: 2;
HPDF_FONT_SYMBOLIC :: 4;
HPDF_FONT_SCRIPT :: 8;

HPDF_FONT_STD_CHARSET :: 32;
HPDF_FONT_ITALIC :: 64;

HPDF_FONT_ALL_CAP :: 65536;
HPDF_FONT_SMALL_CAP :: 131072;
HPDF_FONT_FOURCE_BOLD :: 262144;

HPDF_CID_W_TYPE_FROM_TO :: 0;
HPDF_CID_W_TYPE_FROM_ARRAY :: 1;

HPDF_TTF_FONT_TAG_LEN :: 6;

/*  native OS integer types */
INT :: s32;
UINT :: u32;

/*  64bit integer types
*/
INT64 :: s64;
UINT64 :: u64;

/*  32bit integer types
*/
INT32 :: s32;
UINT32 :: u32;

/*  16bit integer types
*/
INT16 :: s16;
UINT16 :: u16;

/*  8bit integer types
*/
INT8 :: s8;
UINT8 :: u8;

/*  8bit binary types
*/
BYTE :: u8;

/*  float type (32bit IEEE754)
*/
REAL :: float;

/*  double type (64bit IEEE754)
*/
DOUBLE :: float64;

/*  boolean type (0: False, !0: True)
*/
BOOL :: s32;

/*  error-no type (32bit unsigned integer)
*/
STATUS :: u64;

/*  character-code type (16bit)
*/
CID :: UINT16;
UNICODE :: UINT16;

/*  HPDF_Point struct
*/
Point :: struct {
    x: REAL;
    y: REAL;
}

Rect :: struct {
    left:   REAL;
    bottom: REAL;
    right:  REAL;
    top:    REAL;
}

/*  HPDF_Point3D struct
*/
Point3D :: struct {
    x: REAL;
    y: REAL;
    z: REAL;
}

Box :: Rect;

/* HPDF_Date struct
*/
Date :: struct {
    year:        INT;
    month:       INT;
    day:         INT;
    hour:        INT;
    minutes:     INT;
    seconds:     INT;
    ind:         u8;
    off_hour:    INT;
    off_minutes: INT;
}

InfoType :: enum u32 {
    CREATION_DATE :: 0;
    MOD_DATE      :: 1;

    AUTHOR        :: 2;
    CREATOR       :: 3;
    PRODUCER      :: 4;
    TITLE         :: 5;
    SUBJECT       :: 6;
    KEYWORDS      :: 7;
    TRAPPED       :: 8;
    GTS_PDFX      :: 9;
    EOF           :: 10;

    HPDF_INFO_CREATION_DATE :: CREATION_DATE;
    HPDF_INFO_MOD_DATE      :: MOD_DATE;

    HPDF_INFO_AUTHOR        :: AUTHOR;
    HPDF_INFO_CREATOR       :: CREATOR;
    HPDF_INFO_PRODUCER      :: PRODUCER;
    HPDF_INFO_TITLE         :: TITLE;
    HPDF_INFO_SUBJECT       :: SUBJECT;
    HPDF_INFO_KEYWORDS      :: KEYWORDS;
    HPDF_INFO_TRAPPED       :: TRAPPED;
    HPDF_INFO_GTS_PDFX      :: GTS_PDFX;
    HPDF_INFO_EOF           :: EOF;
}

/* PDF-A Types */
_HPDF_PDFA_TYPE :: enum u32 {
    _1A :: 0;
    _1B :: 1;

    HPDF_PDFA_1A :: _1A;
    HPDF_PDFA_1B :: _1B;
}

/* PDF-A Types */
PDFAType :: _HPDF_PDFA_TYPE;

_HPDF_PdfVer :: enum u32 {
    _12 :: 0;
    _13 :: 1;
    _14 :: 2;
    _15 :: 3;
    _16 :: 4;
    _17 :: 5;
    EOF :: 6;

    HPDF_VER_12  :: _12;
    HPDF_VER_13  :: _13;
    HPDF_VER_14  :: _14;
    HPDF_VER_15  :: _15;
    HPDF_VER_16  :: _16;
    HPDF_VER_17  :: _17;
    HPDF_VER_EOF :: EOF;
}

PDFVer :: _HPDF_PdfVer;

EncryptMode :: enum u32 {
    R2 :: 2;
    R3 :: 3;

    HPDF_ENCRYPT_R2 :: R2;
    HPDF_ENCRYPT_R3 :: R3;
}

Error_Handler :: #type (error_no: STATUS, detail_no: STATUS, user_data: *void) -> void #c_call;

Alloc_Func :: #type (size: UINT) -> *void #c_call;

Free_Func :: #type (aptr: *void) -> void #c_call;

/*---------------------------------------------------------------------------*/
/*------ text width struct --------------------------------------------------*/
TextWidth :: struct {
    numchars: UINT;

    /* don't use this value (it may be change in the feature).
    use numspace as alternated. */
    numwords: UINT;

    width:    UINT;
    numspace: UINT;
}

/*---------------------------------------------------------------------------*/
/*------ dash mode ----------------------------------------------------------*/
DashMode :: struct {
    ptn:     [8] REAL;
    num_ptn: UINT;
    phase:   REAL;
}

/*---------------------------------------------------------------------------*/
/*----- HPDF_TransMatrix struct ---------------------------------------------*/
TransMatrix :: struct {
    a: REAL;
    b: REAL;
    c: REAL;
    d: REAL;
    x: REAL;
    y: REAL;
}

/*---------------------------------------------------------------------------*/
/*----- HPDF_3DMatrix struct ------------------------------------------------*/
_3DMatrix :: struct {
    a:  REAL;
    b:  REAL;
    c:  REAL;
    d:  REAL;
    e:  REAL;
    f:  REAL;
    g:  REAL;
    h:  REAL;
    i:  REAL;
    tx: REAL;
    ty: REAL;
    tz: REAL;
}

/*---------------------------------------------------------------------------*/
ColorSpace :: enum u32 {
    DEVICE_GRAY :: 0;
    DEVICE_RGB  :: 1;
    DEVICE_CMYK :: 2;
    CAL_GRAY    :: 3;
    CAL_RGB     :: 4;
    LAB         :: 5;
    ICC_BASED   :: 6;
    SEPARATION  :: 7;
    DEVICE_N    :: 8;
    INDEXED     :: 9;
    PATTERN     :: 10;
    EOF         :: 11;

    HPDF_CS_DEVICE_GRAY :: DEVICE_GRAY;
    HPDF_CS_DEVICE_RGB  :: DEVICE_RGB;
    HPDF_CS_DEVICE_CMYK :: DEVICE_CMYK;
    HPDF_CS_CAL_GRAY    :: CAL_GRAY;
    HPDF_CS_CAL_RGB     :: CAL_RGB;
    HPDF_CS_LAB         :: LAB;
    HPDF_CS_ICC_BASED   :: ICC_BASED;
    HPDF_CS_SEPARATION  :: SEPARATION;
    HPDF_CS_DEVICE_N    :: DEVICE_N;
    HPDF_CS_INDEXED     :: INDEXED;
    HPDF_CS_PATTERN     :: PATTERN;
    HPDF_CS_EOF         :: EOF;
}

/*---------------------------------------------------------------------------*/
/*----- HPDF_RGBColor struct ------------------------------------------------*/
RGBColor :: struct {
    r: REAL;
    g: REAL;
    b: REAL;
}

/*---------------------------------------------------------------------------*/
/*----- HPDF_CMYKColor struct -----------------------------------------------*/
CMYKColor :: struct {
    c: REAL;
    m: REAL;
    y: REAL;
    k: REAL;
}

/*---------------------------------------------------------------------------*/
/*------ The line cap style -------------------------------------------------*/
LineCap :: enum u32 {
    BUTT_END              :: 0;
    ROUND_END             :: 1;
    PROJECTING_SQUARE_END :: 2;
    LINECAP_EOF           :: 3;

    HPDF_BUTT_END              :: BUTT_END;
    HPDF_ROUND_END             :: ROUND_END;
    HPDF_PROJECTING_SQUARE_END :: PROJECTING_SQUARE_END;
    HPDF_LINECAP_EOF           :: LINECAP_EOF;
}

/*----------------------------------------------------------------------------*/
/*------ The line join style -------------------------------------------------*/
LineJoin :: enum u32 {
    MITER_JOIN   :: 0;
    ROUND_JOIN   :: 1;
    BEVEL_JOIN   :: 2;
    LINEJOIN_EOF :: 3;

    HPDF_MITER_JOIN   :: MITER_JOIN;
    HPDF_ROUND_JOIN   :: ROUND_JOIN;
    HPDF_BEVEL_JOIN   :: BEVEL_JOIN;
    HPDF_LINEJOIN_EOF :: LINEJOIN_EOF;
}

/*----------------------------------------------------------------------------*/
/*------ The text rendering mode ---------------------------------------------*/
TextRenderingMode :: enum u32 {
    FILL                 :: 0;
    STROKE               :: 1;
    FILL_THEN_STROKE     :: 2;
    INVISIBLE            :: 3;
    FILL_CLIPPING        :: 4;
    STROKE_CLIPPING      :: 5;
    FILL_STROKE_CLIPPING :: 6;
    CLIPPING             :: 7;
    RENDERING_MODE_EOF   :: 8;

    HPDF_FILL                 :: FILL;
    HPDF_STROKE               :: STROKE;
    HPDF_FILL_THEN_STROKE     :: FILL_THEN_STROKE;
    HPDF_INVISIBLE            :: INVISIBLE;
    HPDF_FILL_CLIPPING        :: FILL_CLIPPING;
    HPDF_STROKE_CLIPPING      :: STROKE_CLIPPING;
    HPDF_FILL_STROKE_CLIPPING :: FILL_STROKE_CLIPPING;
    HPDF_CLIPPING             :: CLIPPING;
    HPDF_RENDERING_MODE_EOF   :: RENDERING_MODE_EOF;
}

WritingMode :: enum u32 {
    HORIZONTAL :: 0;
    VERTICAL   :: 1;
    EOF        :: 2;

    HPDF_WMODE_HORIZONTAL :: HORIZONTAL;
    HPDF_WMODE_VERTICAL   :: VERTICAL;
    HPDF_WMODE_EOF        :: EOF;
}

PageLayout :: enum u32 {
    SINGLE           :: 0;
    ONE_COLUMN       :: 1;
    TWO_COLUMN_LEFT  :: 2;
    TWO_COLUMN_RIGHT :: 3;
    TWO_PAGE_LEFT    :: 4;
    TWO_PAGE_RIGHT   :: 5;
    EOF              :: 6;

    HPDF_PAGE_LAYOUT_SINGLE           :: SINGLE;
    HPDF_PAGE_LAYOUT_ONE_COLUMN       :: ONE_COLUMN;
    HPDF_PAGE_LAYOUT_TWO_COLUMN_LEFT  :: TWO_COLUMN_LEFT;
    HPDF_PAGE_LAYOUT_TWO_COLUMN_RIGHT :: TWO_COLUMN_RIGHT;
    HPDF_PAGE_LAYOUT_TWO_PAGE_LEFT    :: TWO_PAGE_LEFT;
    HPDF_PAGE_LAYOUT_TWO_PAGE_RIGHT   :: TWO_PAGE_RIGHT;
    HPDF_PAGE_LAYOUT_EOF              :: EOF;
}

PageMode :: enum u32 {
    USE_NONE    :: 0;
    USE_OUTLINE :: 1;
    USE_THUMBS  :: 2;
    FULL_SCREEN :: 3;

    EOF         :: 4;

    HPDF_PAGE_MODE_USE_NONE    :: USE_NONE;
    HPDF_PAGE_MODE_USE_OUTLINE :: USE_OUTLINE;
    HPDF_PAGE_MODE_USE_THUMBS  :: USE_THUMBS;
    HPDF_PAGE_MODE_FULL_SCREEN :: FULL_SCREEN;

    HPDF_PAGE_MODE_EOF         :: EOF;
}

PageNumStyle :: enum u32 {
    DECIMAL       :: 0;
    UPPER_ROMAN   :: 1;
    LOWER_ROMAN   :: 2;
    UPPER_LETTERS :: 3;
    LOWER_LETTERS :: 4;
    EOF           :: 5;

    HPDF_PAGE_NUM_STYLE_DECIMAL       :: DECIMAL;
    HPDF_PAGE_NUM_STYLE_UPPER_ROMAN   :: UPPER_ROMAN;
    HPDF_PAGE_NUM_STYLE_LOWER_ROMAN   :: LOWER_ROMAN;
    HPDF_PAGE_NUM_STYLE_UPPER_LETTERS :: UPPER_LETTERS;
    HPDF_PAGE_NUM_STYLE_LOWER_LETTERS :: LOWER_LETTERS;
    HPDF_PAGE_NUM_STYLE_EOF           :: EOF;
}

DestinationType :: enum u32 {
    XYZ     :: 0;
    FIT     :: 1;
    FIT_H   :: 2;
    FIT_V   :: 3;
    FIT_R   :: 4;
    FIT_B   :: 5;
    FIT_BH  :: 6;
    FIT_BV  :: 7;
    DST_EOF :: 8;

    HPDF_XYZ     :: XYZ;
    HPDF_FIT     :: FIT;
    HPDF_FIT_H   :: FIT_H;
    HPDF_FIT_V   :: FIT_V;
    HPDF_FIT_R   :: FIT_R;
    HPDF_FIT_B   :: FIT_B;
    HPDF_FIT_BH  :: FIT_BH;
    HPDF_FIT_BV  :: FIT_BV;
    HPDF_DST_EOF :: DST_EOF;
}

AnnotType :: enum u32 {
    TEXT_NOTES      :: 0;
    LINK            :: 1;
    SOUND           :: 2;
    FREE_TEXT       :: 3;
    STAMP           :: 4;
    SQUARE          :: 5;
    CIRCLE          :: 6;
    STRIKE_OUT      :: 7;
    HIGHTLIGHT      :: 8;
    UNDERLINE       :: 9;
    INK             :: 10;
    FILE_ATTACHMENT :: 11;
    POPUP           :: 12;
    _3D             :: 13;
    SQUIGGLY        :: 14;
    LINE            :: 15;
    PROJECTION      :: 16;
    WIDGET          :: 17;

    HPDF_ANNOT_TEXT_NOTES      :: TEXT_NOTES;
    HPDF_ANNOT_LINK            :: LINK;
    HPDF_ANNOT_SOUND           :: SOUND;
    HPDF_ANNOT_FREE_TEXT       :: FREE_TEXT;
    HPDF_ANNOT_STAMP           :: STAMP;
    HPDF_ANNOT_SQUARE          :: SQUARE;
    HPDF_ANNOT_CIRCLE          :: CIRCLE;
    HPDF_ANNOT_STRIKE_OUT      :: STRIKE_OUT;
    HPDF_ANNOT_HIGHTLIGHT      :: HIGHTLIGHT;
    HPDF_ANNOT_UNDERLINE       :: UNDERLINE;
    HPDF_ANNOT_INK             :: INK;
    HPDF_ANNOT_FILE_ATTACHMENT :: FILE_ATTACHMENT;
    HPDF_ANNOT_POPUP           :: POPUP;
    HPDF_ANNOT_3D              :: _3D;
    HPDF_ANNOT_SQUIGGLY        :: SQUIGGLY;
    HPDF_ANNOT_LINE            :: LINE;
    HPDF_ANNOT_PROJECTION      :: PROJECTION;
    HPDF_ANNOT_WIDGET          :: WIDGET;
}

AnnotFlgs :: enum u32 {
    INVISIBLE :: 0;
    HIDDEN    :: 1;
    PRINT     :: 2;
    NOZOOM    :: 3;
    NOROTATE  :: 4;
    NOVIEW    :: 5;
    READONLY  :: 6;

    HPDF_ANNOT_INVISIBLE :: INVISIBLE;
    HPDF_ANNOT_HIDDEN    :: HIDDEN;
    HPDF_ANNOT_PRINT     :: PRINT;
    HPDF_ANNOT_NOZOOM    :: NOZOOM;
    HPDF_ANNOT_NOROTATE  :: NOROTATE;
    HPDF_ANNOT_NOVIEW    :: NOVIEW;
    HPDF_ANNOT_READONLY  :: READONLY;
}

AnnotHighlightMode :: enum u32 {
    NO_HIGHTLIGHT       :: 0;
    INVERT_BOX          :: 1;
    INVERT_BORDER       :: 2;
    DOWN_APPEARANCE     :: 3;
    HIGHTLIGHT_MODE_EOF :: 4;

    HPDF_ANNOT_NO_HIGHTLIGHT       :: NO_HIGHTLIGHT;
    HPDF_ANNOT_INVERT_BOX          :: INVERT_BOX;
    HPDF_ANNOT_INVERT_BORDER       :: INVERT_BORDER;
    HPDF_ANNOT_DOWN_APPEARANCE     :: DOWN_APPEARANCE;
    HPDF_ANNOT_HIGHTLIGHT_MODE_EOF :: HIGHTLIGHT_MODE_EOF;
}

AnnotIcon :: enum u32 {
    COMMENT       :: 0;
    KEY           :: 1;
    NOTE          :: 2;
    HELP          :: 3;
    NEW_PARAGRAPH :: 4;
    PARAGRAPH     :: 5;
    INSERT        :: 6;
    EOF           :: 7;

    HPDF_ANNOT_ICON_COMMENT       :: COMMENT;
    HPDF_ANNOT_ICON_KEY           :: KEY;
    HPDF_ANNOT_ICON_NOTE          :: NOTE;
    HPDF_ANNOT_ICON_HELP          :: HELP;
    HPDF_ANNOT_ICON_NEW_PARAGRAPH :: NEW_PARAGRAPH;
    HPDF_ANNOT_ICON_PARAGRAPH     :: PARAGRAPH;
    HPDF_ANNOT_ICON_INSERT        :: INSERT;
    HPDF_ANNOT_ICON_EOF           :: EOF;
}

AnnotIntent :: enum u32 {
    FREETEXTCALLOUT    :: 0;
    FREETEXTTYPEWRITER :: 1;
    LINEARROW          :: 2;
    LINEDIMENSION      :: 3;
    POLYGONCLOUD       :: 4;
    POLYLINEDIMENSION  :: 5;
    POLYGONDIMENSION   :: 6;

    HPDF_ANNOT_INTENT_FREETEXTCALLOUT    :: FREETEXTCALLOUT;
    HPDF_ANNOT_INTENT_FREETEXTTYPEWRITER :: FREETEXTTYPEWRITER;
    HPDF_ANNOT_INTENT_LINEARROW          :: LINEARROW;
    HPDF_ANNOT_INTENT_LINEDIMENSION      :: LINEDIMENSION;
    HPDF_ANNOT_INTENT_POLYGONCLOUD       :: POLYGONCLOUD;
    HPDF_ANNOT_INTENT_POLYLINEDIMENSION  :: POLYLINEDIMENSION;
    HPDF_ANNOT_INTENT_POLYGONDIMENSION   :: POLYGONDIMENSION;
}

LineAnnotEndingStyle :: enum u32 {
    NONE         :: 0;
    SQUARE       :: 1;
    CIRCLE       :: 2;
    DIAMOND      :: 3;
    OPENARROW    :: 4;
    CLOSEDARROW  :: 5;
    BUTT         :: 6;
    ROPENARROW   :: 7;
    RCLOSEDARROW :: 8;
    SLASH        :: 9;

    HPDF_LINE_ANNOT_NONE         :: NONE;
    HPDF_LINE_ANNOT_SQUARE       :: SQUARE;
    HPDF_LINE_ANNOT_CIRCLE       :: CIRCLE;
    HPDF_LINE_ANNOT_DIAMOND      :: DIAMOND;
    HPDF_LINE_ANNOT_OPENARROW    :: OPENARROW;
    HPDF_LINE_ANNOT_CLOSEDARROW  :: CLOSEDARROW;
    HPDF_LINE_ANNOT_BUTT         :: BUTT;
    HPDF_LINE_ANNOT_ROPENARROW   :: ROPENARROW;
    HPDF_LINE_ANNOT_RCLOSEDARROW :: RCLOSEDARROW;
    HPDF_LINE_ANNOT_SLASH        :: SLASH;
}

LineAnnotCapPosition :: enum u32 {
    INLINE :: 0;
    TOP    :: 1;

    HPDF_LINE_ANNOT_CAP_INLINE :: INLINE;
    HPDF_LINE_ANNOT_CAP_TOP    :: TOP;
}

StampAnnotName :: enum u32 {
    APPROVED            :: 0;
    EXPERIMENTAL        :: 1;
    NOTAPPROVED         :: 2;
    ASIS                :: 3;
    EXPIRED             :: 4;
    NOTFORPUBLICRELEASE :: 5;
    CONFIDENTIAL        :: 6;
    FINAL               :: 7;
    SOLD                :: 8;
    DEPARTMENTAL        :: 9;
    FORCOMMENT          :: 10;
    TOPSECRET           :: 11;
    DRAFT               :: 12;
    FORPUBLICRELEASE    :: 13;

    HPDF_STAMP_ANNOT_APPROVED            :: APPROVED;
    HPDF_STAMP_ANNOT_EXPERIMENTAL        :: EXPERIMENTAL;
    HPDF_STAMP_ANNOT_NOTAPPROVED         :: NOTAPPROVED;
    HPDF_STAMP_ANNOT_ASIS                :: ASIS;
    HPDF_STAMP_ANNOT_EXPIRED             :: EXPIRED;
    HPDF_STAMP_ANNOT_NOTFORPUBLICRELEASE :: NOTFORPUBLICRELEASE;
    HPDF_STAMP_ANNOT_CONFIDENTIAL        :: CONFIDENTIAL;
    HPDF_STAMP_ANNOT_FINAL               :: FINAL;
    HPDF_STAMP_ANNOT_SOLD                :: SOLD;
    HPDF_STAMP_ANNOT_DEPARTMENTAL        :: DEPARTMENTAL;
    HPDF_STAMP_ANNOT_FORCOMMENT          :: FORCOMMENT;
    HPDF_STAMP_ANNOT_TOPSECRET           :: TOPSECRET;
    HPDF_STAMP_ANNOT_DRAFT               :: DRAFT;
    HPDF_STAMP_ANNOT_FORPUBLICRELEASE    :: FORPUBLICRELEASE;
}

/*----------------------------------------------------------------------------*/
/*------ border stype --------------------------------------------------------*/
BSSubtype :: enum u32 {
    SOLID      :: 0;
    DASHED     :: 1;
    BEVELED    :: 2;
    INSET      :: 3;
    UNDERLINED :: 4;

    HPDF_BS_SOLID      :: SOLID;
    HPDF_BS_DASHED     :: DASHED;
    HPDF_BS_BEVELED    :: BEVELED;
    HPDF_BS_INSET      :: INSET;
    HPDF_BS_UNDERLINED :: UNDERLINED;
}

/*----- blend modes ----------------------------------------------------------*/
BlendMode :: enum u32 {
    NORMAL      :: 0;
    MULTIPLY    :: 1;
    SCREEN      :: 2;
    OVERLAY     :: 3;
    DARKEN      :: 4;
    LIGHTEN     :: 5;
    COLOR_DODGE :: 6;
    COLOR_BUM   :: 7;
    HARD_LIGHT  :: 8;
    SOFT_LIGHT  :: 9;
    DIFFERENCE  :: 10;
    EXCLUSHON   :: 11;
    EOF         :: 12;

    HPDF_BM_NORMAL      :: NORMAL;
    HPDF_BM_MULTIPLY    :: MULTIPLY;
    HPDF_BM_SCREEN      :: SCREEN;
    HPDF_BM_OVERLAY     :: OVERLAY;
    HPDF_BM_DARKEN      :: DARKEN;
    HPDF_BM_LIGHTEN     :: LIGHTEN;
    HPDF_BM_COLOR_DODGE :: COLOR_DODGE;
    HPDF_BM_COLOR_BUM   :: COLOR_BUM;
    HPDF_BM_HARD_LIGHT  :: HARD_LIGHT;
    HPDF_BM_SOFT_LIGHT  :: SOFT_LIGHT;
    HPDF_BM_DIFFERENCE  :: DIFFERENCE;
    HPDF_BM_EXCLUSHON   :: EXCLUSHON;
    HPDF_BM_EOF         :: EOF;
}

/*----- slide show -----------------------------------------------------------*/
TransitionStyle :: enum u32 {
    WIPE_RIGHT                       :: 0;
    WIPE_UP                          :: 1;
    WIPE_LEFT                        :: 2;
    WIPE_DOWN                        :: 3;
    BARN_DOORS_HORIZONTAL_OUT        :: 4;
    BARN_DOORS_HORIZONTAL_IN         :: 5;
    BARN_DOORS_VERTICAL_OUT          :: 6;
    BARN_DOORS_VERTICAL_IN           :: 7;
    BOX_OUT                          :: 8;
    BOX_IN                           :: 9;
    BLINDS_HORIZONTAL                :: 10;
    BLINDS_VERTICAL                  :: 11;
    DISSOLVE                         :: 12;
    GLITTER_RIGHT                    :: 13;
    GLITTER_DOWN                     :: 14;
    GLITTER_TOP_LEFT_TO_BOTTOM_RIGHT :: 15;
    REPLACE                          :: 16;
    EOF                              :: 17;

    HPDF_TS_WIPE_RIGHT                       :: WIPE_RIGHT;
    HPDF_TS_WIPE_UP                          :: WIPE_UP;
    HPDF_TS_WIPE_LEFT                        :: WIPE_LEFT;
    HPDF_TS_WIPE_DOWN                        :: WIPE_DOWN;
    HPDF_TS_BARN_DOORS_HORIZONTAL_OUT        :: BARN_DOORS_HORIZONTAL_OUT;
    HPDF_TS_BARN_DOORS_HORIZONTAL_IN         :: BARN_DOORS_HORIZONTAL_IN;
    HPDF_TS_BARN_DOORS_VERTICAL_OUT          :: BARN_DOORS_VERTICAL_OUT;
    HPDF_TS_BARN_DOORS_VERTICAL_IN           :: BARN_DOORS_VERTICAL_IN;
    HPDF_TS_BOX_OUT                          :: BOX_OUT;
    HPDF_TS_BOX_IN                           :: BOX_IN;
    HPDF_TS_BLINDS_HORIZONTAL                :: BLINDS_HORIZONTAL;
    HPDF_TS_BLINDS_VERTICAL                  :: BLINDS_VERTICAL;
    HPDF_TS_DISSOLVE                         :: DISSOLVE;
    HPDF_TS_GLITTER_RIGHT                    :: GLITTER_RIGHT;
    HPDF_TS_GLITTER_DOWN                     :: GLITTER_DOWN;
    HPDF_TS_GLITTER_TOP_LEFT_TO_BOTTOM_RIGHT :: GLITTER_TOP_LEFT_TO_BOTTOM_RIGHT;
    HPDF_TS_REPLACE                          :: REPLACE;
    HPDF_TS_EOF                              :: EOF;
}

/*----------------------------------------------------------------------------*/
PageSizes :: enum u32 {
    LETTER    :: 0;
    LEGAL     :: 1;
    A3        :: 2;
    A4        :: 3;
    A5        :: 4;
    B4        :: 5;
    B5        :: 6;
    EXECUTIVE :: 7;
    US4x6     :: 8;
    US4x8     :: 9;
    US5x7     :: 10;
    COMM10    :: 11;
    EOF       :: 12;

    HPDF_PAGE_SIZE_LETTER    :: LETTER;
    HPDF_PAGE_SIZE_LEGAL     :: LEGAL;
    HPDF_PAGE_SIZE_A3        :: A3;
    HPDF_PAGE_SIZE_A4        :: A4;
    HPDF_PAGE_SIZE_A5        :: A5;
    HPDF_PAGE_SIZE_B4        :: B4;
    HPDF_PAGE_SIZE_B5        :: B5;
    HPDF_PAGE_SIZE_EXECUTIVE :: EXECUTIVE;
    HPDF_PAGE_SIZE_US4x6     :: US4x6;
    HPDF_PAGE_SIZE_US4x8     :: US4x8;
    HPDF_PAGE_SIZE_US5x7     :: US5x7;
    HPDF_PAGE_SIZE_COMM10    :: COMM10;
    HPDF_PAGE_SIZE_EOF       :: EOF;
}

PageDirection :: enum u32 {
    PORTRAIT  :: 0;
    LANDSCAPE :: 1;

    HPDF_PAGE_PORTRAIT  :: PORTRAIT;
    HPDF_PAGE_LANDSCAPE :: LANDSCAPE;
}

EncoderType :: enum u32 {
    TYPE_SINGLE_BYTE   :: 0;
    TYPE_DOUBLE_BYTE   :: 1;
    TYPE_UNINITIALIZED :: 2;
    UNKNOWN            :: 3;

    HPDF_ENCODER_TYPE_SINGLE_BYTE   :: TYPE_SINGLE_BYTE;
    HPDF_ENCODER_TYPE_DOUBLE_BYTE   :: TYPE_DOUBLE_BYTE;
    HPDF_ENCODER_TYPE_UNINITIALIZED :: TYPE_UNINITIALIZED;
    HPDF_ENCODER_UNKNOWN            :: UNKNOWN;
}

ByteType :: enum u32 {
    SINGLE  :: 0;
    LEAD    :: 1;
    TRAIL   :: 2;
    UNKNOWN :: 3;

    HPDF_BYTE_TYPE_SINGLE  :: SINGLE;
    HPDF_BYTE_TYPE_LEAD    :: LEAD;
    HPDF_BYTE_TYPE_TRAIL   :: TRAIL;
    HPDF_BYTE_TYPE_UNKNOWN :: UNKNOWN;
}

TextAlignment :: enum u32 {
    LEFT    :: 0;
    RIGHT   :: 1;
    CENTER  :: 2;
    JUSTIFY :: 3;

    HPDF_TALIGN_LEFT    :: LEFT;
    HPDF_TALIGN_RIGHT   :: RIGHT;
    HPDF_TALIGN_CENTER  :: CENTER;
    HPDF_TALIGN_JUSTIFY :: JUSTIFY;
}

/* Name Dictionary values -- see PDF reference section 7.7.4 */
NameDictKey :: enum u32 {
    EMBEDDED_FILES :: 0;
    EOF            :: 1;

    HPDF_NAME_EMBEDDED_FILES :: EMBEDDED_FILES;
    HPDF_NAME_EOF            :: EOF;
}

/*----------------------------------------------------------------------------*/
PageBoundary :: enum u32 {
    MEDIABOX :: 0;
    CROPBOX  :: 1;
    BLEEDBOX :: 2;
    TRIMBOX  :: 3;
    ARTBOX   :: 4;

    HPDF_PAGE_MEDIABOX :: MEDIABOX;
    HPDF_PAGE_CROPBOX  :: CROPBOX;
    HPDF_PAGE_BLEEDBOX :: BLEEDBOX;
    HPDF_PAGE_TRIMBOX  :: TRIMBOX;
    HPDF_PAGE_ARTBOX   :: ARTBOX;
}

/*----------------------------------------------------------------------------*/
ShadingType :: enum u32 {
    SHADING_FREE_FORM_TRIANGLE_MESH :: 4;
    HPDF_SHADING_FREE_FORM_TRIANGLE_MESH :: SHADING_FREE_FORM_TRIANGLE_MESH;
}

Shading_FreeFormTriangleMeshEdgeFlag :: enum u32 {
    NO_CONNECTION :: 0;
    BC            :: 1;
    AC            :: 2;

    HPDF_FREE_FORM_TRI_MESH_EDGEFLAG_NO_CONNECTION :: NO_CONNECTION;
    HPDF_FREE_FORM_TRI_MESH_EDGEFLAG_BC            :: BC;
    HPDF_FREE_FORM_TRI_MESH_EDGEFLAG_AC            :: AC;
}

/*---------------------------------------------------------------------------*/
/*----- HPDF_Error ----------------------------------------------------------*/
Error :: *Error_Rec;

Error_Rec :: struct {
    error_no:  STATUS;
    detail_no: STATUS;
    error_fn:  Error_Handler;
    user_data: *void;
}

/*  HPDF_Error_init
*
*  if error_fn is NULL, the default-handlers are set as error-handler.
*  user_data is used to identify the object which threw an error.
*
*/
Error_Init :: (error: Error, user_data: *void) -> void #foreign libhpdf "HPDF_Error_Init";

Error_Reset :: (error: Error) -> void #foreign libhpdf "HPDF_Error_Reset";

Error_GetCode :: (error: Error) -> STATUS #foreign libhpdf "HPDF_Error_GetCode";

Error_GetDetailCode :: (error: Error) -> STATUS #foreign libhpdf "HPDF_Error_GetDetailCode";

SetError :: (error: Error, error_no: STATUS, detail_no: STATUS) -> STATUS #foreign libhpdf "HPDF_SetError";

RaiseError :: (error: Error, error_no: STATUS, detail_no: STATUS) -> STATUS #foreign libhpdf "HPDF_RaiseError";

MPool_Node :: *MPool_Node_Rec;

MPool_Node_Rec :: struct {
    buf:       *BYTE;
    size:      UINT;
    used_size: UINT;
    next_node: MPool_Node;
}

MMgr :: *MMgr_Rec;

MMgr_Rec :: struct {
    error:    Error;
    alloc_fn: Alloc_Func;
    free_fn:  Free_Func;
    mpool:    MPool_Node;
    buf_size: UINT;
}

/*  HPDF_mpool_new
*
*  create new HPDF_mpool object. when memory allocation goes wrong,
*  it returns NULL and error handling function will be called.
*  if buf_size is non-zero, mmgr is configured to be using memory-pool
*/
MMgr_New :: (error: Error, buf_size: UINT, alloc_fn: Alloc_Func, free_fn: Free_Func) -> MMgr #foreign libhpdf "HPDF_MMgr_New";

MMgr_Free :: (mmgr: MMgr) -> void #foreign libhpdf "HPDF_MMgr_Free";

GetMem :: (mmgr: MMgr, size: UINT) -> *void #foreign libhpdf "HPDF_GetMem";

FreeMem :: (mmgr: MMgr, aptr: *void) -> void #foreign libhpdf "HPDF_FreeMem";

List :: *List_Rec;

List_Rec :: struct {
    mmgr:            MMgr;
    error:           Error;
    block_siz:       UINT;
    items_per_block: UINT;
    count:           UINT;
    obj:             **void;
}

List_New :: (mmgr: MMgr, items_per_block: UINT) -> List #foreign libhpdf "HPDF_List_New";

List_Free :: (list: List) -> void #foreign libhpdf "HPDF_List_Free";

List_Add :: (list: List, item: *void) -> STATUS #foreign libhpdf "HPDF_List_Add";

List_Insert :: (list: List, target: *void, item: *void) -> STATUS #foreign libhpdf "HPDF_List_Insert";

List_Remove :: (list: List, item: *void) -> STATUS #foreign libhpdf "HPDF_List_Remove";

List_RemoveByIndex :: (list: List, index: UINT) -> *void #foreign libhpdf "HPDF_List_RemoveByIndex";

List_ItemAt :: (list: List, index: UINT) -> *void #foreign libhpdf "HPDF_List_ItemAt";

List_Find :: (list: List, item: *void) -> INT32 #foreign libhpdf "HPDF_List_Find";

List_Clear :: (list: List) -> void #foreign libhpdf "HPDF_List_Clear";

MD5Context :: struct {
    buf:  [4] UINT32;
    bits: [2] UINT32;
    in:   [64] BYTE;
}

MD5_CTX :: MD5Context;

ARC4_Ctx_Rec :: struct {
    idx1:  BYTE;
    idx2:  BYTE;
    state: [256] BYTE;
}

Encrypt :: *Encrypt_Rec;

Encrypt_Rec :: struct {
    mode:               EncryptMode;

    /* key_len must be a multiple of 8, and between 40 to 128 */
    key_len:            UINT;

    /* owner-password (not encrypted) */
    owner_passwd:       [32] BYTE;

    /* user-password (not encrypted) */
    user_passwd:        [32] BYTE;

    /* owner-password (encrypted) */
    owner_key:          [32] BYTE;

    /* user-password (encrypted) */
    user_key:           [32] BYTE;

    permission:         INT;
    encrypt_id:         [16] BYTE;
    encryption_key:     [21] BYTE;
    md5_encryption_key: [16] BYTE;
    arc4ctx:            ARC4_Ctx_Rec;
}

MD5Init :: (ctx: *MD5Context) -> void #foreign libhpdf "HPDF_MD5Init";

MD5Update :: (ctx: *MD5Context, buf: *BYTE, len: UINT32) -> void #foreign libhpdf "HPDF_MD5Update";

MD5Final :: (digest: *[16] BYTE, ctx: *MD5Context) -> void #foreign libhpdf "HPDF_MD5Final";

PadOrTrancatePasswd :: (pwd: *u8, new_pwd: *BYTE) -> void #foreign libhpdf "HPDF_PadOrTrancatePasswd";

Encrypt_Init :: (attr: Encrypt) -> void #foreign libhpdf "HPDF_Encrypt_Init";

Encrypt_CreateUserKey :: (attr: Encrypt) -> void #foreign libhpdf "HPDF_Encrypt_CreateUserKey";

Encrypt_CreateOwnerKey :: (attr: Encrypt) -> void #foreign libhpdf "HPDF_Encrypt_CreateOwnerKey";

Encrypt_CreateEncryptionKey :: (attr: Encrypt) -> void #foreign libhpdf "HPDF_Encrypt_CreateEncryptionKey";

Encrypt_InitKey :: (attr: Encrypt, object_id: UINT32, gen_no: UINT16) -> void #foreign libhpdf "HPDF_Encrypt_InitKey";

Encrypt_Reset :: (attr: Encrypt) -> void #foreign libhpdf "HPDF_Encrypt_Reset";

Encrypt_CryptBuf :: (attr: Encrypt, src: *BYTE, dst: *BYTE, len: UINT) -> void #foreign libhpdf "HPDF_Encrypt_CryptBuf";

StreamType :: enum u32 {
    UNKNOWN  :: 0;
    CALLBACK :: 1;
    FILE     :: 2;
    MEMORY   :: 3;

    HPDF_STREAM_UNKNOWN  :: UNKNOWN;
    HPDF_STREAM_CALLBACK :: CALLBACK;
    HPDF_STREAM_FILE     :: FILE;
    HPDF_STREAM_MEMORY   :: MEMORY;
}

WhenceMode :: enum u32 {
    SET :: 0;
    CUR :: 1;
    END :: 2;

    HPDF_SEEK_SET :: SET;
    HPDF_SEEK_CUR :: CUR;
    HPDF_SEEK_END :: END;
}

Stream :: *Stream_Rec;

Stream_Write_Func :: #type (stream: Stream, ptr: *BYTE, siz: UINT) -> STATUS #c_call;

Stream_Read_Func :: #type (stream: Stream, ptr: *BYTE, siz: *UINT) -> STATUS #c_call;

Stream_Seek_Func :: #type (stream: Stream, pos: INT, mode: WhenceMode) -> STATUS #c_call;

Stream_Tell_Func :: #type (stream: Stream) -> INT32 #c_call;

Stream_Free_Func :: #type (stream: Stream) -> void #c_call;

Stream_Size_Func :: #type (stream: Stream) -> UINT32 #c_call;

MemStreamAttr :: *MemStreamAttr_Rec;

MemStreamAttr_Rec :: struct {
    buf:       List;
    buf_siz:   UINT;
    w_pos:     UINT;
    w_ptr:     *BYTE;
    r_ptr_idx: UINT;
    r_pos:     UINT;
    r_ptr:     *BYTE;
}

Stream_Rec :: struct {
    sig_bytes: UINT32;
    type:      StreamType;
    mmgr:      MMgr;
    error:     Error;
    size:      UINT;
    write_fn:  Stream_Write_Func;
    read_fn:   Stream_Read_Func;
    seek_fn:   Stream_Seek_Func;
    free_fn:   Stream_Free_Func;
    tell_fn:   Stream_Tell_Func;
    size_fn:   Stream_Size_Func;
    attr:      *void;
}

MemStream_New :: (mmgr: MMgr, buf_siz: UINT) -> Stream #foreign libhpdf "HPDF_MemStream_New";

MemStream_GetBufPtr :: (stream: Stream, index: UINT, length: *UINT) -> *BYTE #foreign libhpdf "HPDF_MemStream_GetBufPtr";

MemStream_GetBufSize :: (stream: Stream) -> UINT #foreign libhpdf "HPDF_MemStream_GetBufSize";

MemStream_GetBufCount :: (stream: Stream) -> UINT #foreign libhpdf "HPDF_MemStream_GetBufCount";

MemStream_Rewrite :: (stream: Stream, buf: *BYTE, size: UINT) -> STATUS #foreign libhpdf "HPDF_MemStream_Rewrite";

MemStream_FreeData :: (stream: Stream) -> void #foreign libhpdf "HPDF_MemStream_FreeData";

Stream_WriteToStream :: (src: Stream, dst: Stream, filter: UINT, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Stream_WriteToStream";

FileReader_New :: (mmgr: MMgr, fname: *u8) -> Stream #foreign libhpdf "HPDF_FileReader_New";

FileWriter_New :: (mmgr: MMgr, fname: *u8) -> Stream #foreign libhpdf "HPDF_FileWriter_New";

CallbackReader_New :: (mmgr: MMgr, read_fn: Stream_Read_Func, seek_fn: Stream_Seek_Func, tell_fn: Stream_Tell_Func, size_fn: Stream_Size_Func, data: *void) -> Stream #foreign libhpdf "HPDF_CallbackReader_New";

CallbackWriter_New :: (mmgr: MMgr, write_fn: Stream_Write_Func, data: *void) -> Stream #foreign libhpdf "HPDF_CallbackWriter_New";

Stream_Free :: (stream: Stream) -> void #foreign libhpdf "HPDF_Stream_Free";

Stream_WriteChar :: (stream: Stream, value: u8) -> STATUS #foreign libhpdf "HPDF_Stream_WriteChar";

Stream_WriteStr :: (stream: Stream, value: *u8) -> STATUS #foreign libhpdf "HPDF_Stream_WriteStr";

Stream_WriteUChar :: (stream: Stream, value: BYTE) -> STATUS #foreign libhpdf "HPDF_Stream_WriteUChar";

Stream_WriteInt :: (stream: Stream, value: INT) -> STATUS #foreign libhpdf "HPDF_Stream_WriteInt";

Stream_WriteUInt :: (stream: Stream, value: UINT) -> STATUS #foreign libhpdf "HPDF_Stream_WriteUInt";

Stream_WriteReal :: (stream: Stream, value: REAL) -> STATUS #foreign libhpdf "HPDF_Stream_WriteReal";

Stream_Write :: (stream: Stream, ptr: *BYTE, size: UINT) -> STATUS #foreign libhpdf "HPDF_Stream_Write";

Stream_Read :: (stream: Stream, ptr: *BYTE, size: *UINT) -> STATUS #foreign libhpdf "HPDF_Stream_Read";

Stream_ReadLn :: (stream: Stream, s: *u8, size: *UINT) -> STATUS #foreign libhpdf "HPDF_Stream_ReadLn";

Stream_Tell :: (stream: Stream) -> INT32 #foreign libhpdf "HPDF_Stream_Tell";

Stream_Seek :: (stream: Stream, pos: INT, mode: WhenceMode) -> STATUS #foreign libhpdf "HPDF_Stream_Seek";

Stream_Size :: (stream: Stream) -> UINT32 #foreign libhpdf "HPDF_Stream_Size";

Stream_WriteEscapeName :: (stream: Stream, value: *u8) -> STATUS #foreign libhpdf "HPDF_Stream_WriteEscapeName";

Stream_WriteEscapeText2 :: (stream: Stream, text: *u8, len: UINT) -> STATUS #foreign libhpdf "HPDF_Stream_WriteEscapeText2";

Stream_WriteEscapeText :: (stream: Stream, text: *u8) -> STATUS #foreign libhpdf "HPDF_Stream_WriteEscapeText";

Stream_WriteBinary :: (stream: Stream, data: *BYTE, len: UINT, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Stream_WriteBinary";

Stream_Validate :: (stream: Stream) -> STATUS #foreign libhpdf "HPDF_Stream_Validate";

EncodingType :: enum u32 {
    STANDARD_ENCODING  :: 0;
    MAC_ROMAN_ENCODING :: 1;
    WIN_ANSI_ENCODING  :: 2;
    FONT_SPECIFIC      :: 3;
    ENCODING_EOF       :: 4;

    HPDF_STANDARD_ENCODING  :: STANDARD_ENCODING;
    HPDF_MAC_ROMAN_ENCODING :: MAC_ROMAN_ENCODING;
    HPDF_WIN_ANSI_ENCODING  :: WIN_ANSI_ENCODING;
    HPDF_FONT_SPECIFIC      :: FONT_SPECIFIC;
    HPDF_ENCODING_EOF       :: ENCODING_EOF;
}

ParseText_Rec :: struct {
    text:      *BYTE;
    index:     UINT;
    len:       UINT;
    byte_type: ByteType;
}

Encoder :: *Encoder_Rec;

Encoder_ByteType_Func :: #type (encoder: Encoder, state: *ParseText_Rec) -> ByteType #c_call;

Encoder_ToUnicode_Func :: #type (encoder: Encoder, code: UINT16) -> UNICODE #c_call;

Encoder_EncodeText_Func :: #type (encoder: Encoder, text: *u8, len: UINT, encoded_length: *UINT) -> *u8 #c_call;

Encoder_Write_Func :: #type (encoder: Encoder, out: Stream) -> STATUS #c_call;

Encoder_Init_Func :: #type (encoder: Encoder) -> STATUS #c_call;

Encoder_Free_Func :: #type (encoder: Encoder) -> void #c_call;

Encoder_Rec :: struct {
    sig_bytes:      UINT32;
    name:           [128] u8;
    mmgr:           MMgr;
    error:          Error;
    type:           EncoderType;

    byte_type_fn:   Encoder_ByteType_Func;
    to_unicode_fn:  Encoder_ToUnicode_Func;
    encode_text_fn: Encoder_EncodeText_Func;
    write_fn:       Encoder_Write_Func;
    free_fn:        Encoder_Free_Func;
    init_fn:        Encoder_Init_Func;

    /*
    char                         lang_code[3];
    char                         country_code[3];
    */
    attr:           *void;
}

BaseEncodings :: enum u32 {
    STANDARD      :: 0;
    WIN_ANSI      :: 1;
    MAC_ROMAN     :: 2;
    FONT_SPECIFIC :: 3;
    EOF           :: 4;

    HPDF_BASE_ENCODING_STANDARD      :: STANDARD;
    HPDF_BASE_ENCODING_WIN_ANSI      :: WIN_ANSI;
    HPDF_BASE_ENCODING_MAC_ROMAN     :: MAC_ROMAN;
    HPDF_BASE_ENCODING_FONT_SPECIFIC :: FONT_SPECIFIC;
    HPDF_BASE_ENCODING_EOF           :: EOF;
}

Encoder_Validate :: (encoder: Encoder) -> STATUS #foreign libhpdf "HPDF_Encoder_Validate";

Encoder_SetParseText :: (encoder: Encoder, state: *ParseText_Rec, text: *BYTE, len: UINT) -> void #foreign libhpdf "HPDF_Encoder_SetParseText";

Encoder_ByteType :: (encoder: Encoder, state: *ParseText_Rec) -> ByteType #foreign libhpdf "HPDF_Encoder_ByteType";

Encoder_ToUnicode :: (encoder: Encoder, code: UINT16) -> UNICODE #foreign libhpdf "HPDF_Encoder_ToUnicode";

Encoder_Free :: (encoder: Encoder) -> void #foreign libhpdf "HPDF_Encoder_Free";

/*-- HPDF_BasicEncoder ----------------------------------*/
BasicEncoderAttr :: *BasicEncoderAttr_Rec;

BasicEncoderAttr_Rec :: struct {
    base_encoding:   [128] u8;
    first_char:      BYTE;
    last_char:       BYTE;
    unicode_map:     [256] UNICODE;
    has_differences: BOOL;
    differences:     [256] BYTE;
}

BasicEncoder_New :: (mmgr: MMgr, encoding_name: *u8) -> Encoder #foreign libhpdf "HPDF_BasicEncoder_New";

BasicEncoder_Free :: (encoder: Encoder) -> void #foreign libhpdf "HPDF_BasicEncoder_Free";

BasicEncoder_Write :: (encoder: Encoder, out: Stream) -> STATUS #foreign libhpdf "HPDF_BasicEncoder_Write";

BasicEncoder_ToUnicode :: (encoder: Encoder, code: UINT16) -> UNICODE #foreign libhpdf "HPDF_BasicEncoder_ToUnicode";

/*-- HPDF_CMapEncoder ----------------------------------*/
CMapEncoder_ByteType_Func :: #type (encoder: Encoder, b: BYTE) -> BOOL #c_call;

CidRange_Rec :: struct {
    from: UINT16;
    to:   UINT16;
    cid:  UINT16;
}

UnicodeMap_Rec :: struct {
    code:    UINT16;
    unicode: UINT16;
}

CMapEncoderAttr :: *CMapEncoderAttr_Rec;

CMapEncoderAttr_Rec :: struct {
    unicode_map:      [256] [256] UNICODE;
    cid_map:          [256] [256] UINT16;
    jww_line_head:    [128] UINT16;
    cmap_range:       List;
    notdef_range:     List;
    code_space_range: List;
    writing_mode:     WritingMode;
    registry:         [128] u8;
    ordering:         [128] u8;
    suppliment:       INT;
    is_lead_byte_fn:  CMapEncoder_ByteType_Func;
    is_trial_byte_fn: CMapEncoder_ByteType_Func;
    uid_offset:       INT;
    xuid:             [3] UINT;
}

CMapEncoder_New :: (mmgr: MMgr, name: *u8, init_fn: Encoder_Init_Func) -> Encoder #foreign libhpdf "HPDF_CMapEncoder_New";

CMapEncoder_InitAttr :: (encoder: Encoder) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_InitAttr";

CMapEncoder_Free :: (encoder: Encoder) -> void #foreign libhpdf "HPDF_CMapEncoder_Free";

CMapEncoder_Write :: (encoder: Encoder, out: Stream) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_Write";

CMapEncoder_ToUnicode :: (encoder: Encoder, code: UINT16) -> UNICODE #foreign libhpdf "HPDF_CMapEncoder_ToUnicode";

CMapEncoder_ToCID :: (encoder: Encoder, code: UINT16) -> UINT16 #foreign libhpdf "HPDF_CMapEncoder_ToCID";

CMapEncoder_ByteType :: (encoder: Encoder, state: *ParseText_Rec) -> ByteType #foreign libhpdf "HPDF_CMapEncoder_ByteType";

CMapEncoder_AddCMap :: (encoder: Encoder, range: *CidRange_Rec) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_AddCMap";

CMapEncoder_AddNotDefRange :: (encoder: Encoder, range: CidRange_Rec) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_AddNotDefRange";

CMapEncoder_AddCodeSpaceRange :: (encoder: Encoder, range: CidRange_Rec) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_AddCodeSpaceRange";

CMapEncoder_SetUnicodeArray :: (encoder: Encoder, array1: *UnicodeMap_Rec) -> void #foreign libhpdf "HPDF_CMapEncoder_SetUnicodeArray";

CMapEncoder_AddJWWLineHead :: (encoder: Encoder, code: *UINT16) -> STATUS #foreign libhpdf "HPDF_CMapEncoder_AddJWWLineHead";

Encoder_CheckJWWLineHead :: (encoder: Encoder, code: UINT16) -> BOOL #foreign libhpdf "HPDF_Encoder_CheckJWWLineHead";

/*-- utility functions ----------------------------------*/
UnicodeToGryphName :: (unicode: UNICODE) -> *u8 #foreign libhpdf "HPDF_UnicodeToGryphName";

GryphNameToUnicode :: (gryph_name: *u8) -> UNICODE #foreign libhpdf "HPDF_GryphNameToUnicode";

/*
*  structure of Object-ID
*
*  1       direct-object
*  2       indirect-object
*  3       reserved
*  4       shadow-object
*  5-8     reserved
*  9-32    object-id
*
*  the real Object-ID is described "obj_id & 0x00FFFFFF"
*/
Obj_Header :: struct {
    obj_id:    UINT32;
    gen_no:    UINT16;
    obj_class: UINT16;
}

Obj_WriteValue :: (obj: *void, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Obj_WriteValue";

Obj_Write :: (obj: *void, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Obj_Write";

Obj_Free :: (mmgr: MMgr, obj: *void) -> void #foreign libhpdf "HPDF_Obj_Free";

Obj_ForceFree :: (mmgr: MMgr, obj: *void) -> void #foreign libhpdf "HPDF_Obj_ForceFree";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Null -----------------------------------------------------------*/
Null :: *Null_Rec;

Null_Rec :: struct {
    header: Obj_Header;
}

Null_New :: (mmgr: MMgr) -> Null #foreign libhpdf "HPDF_Null_New";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Boolean --------------------------------------------------------*/
Boolean :: *Boolean_Rec;

Boolean_Rec :: struct {
    header: Obj_Header;
    value:  BOOL;
}

Boolean_New :: (mmgr: MMgr, value: BOOL) -> Boolean #foreign libhpdf "HPDF_Boolean_New";

Boolean_Write :: (obj: Boolean, stream: Stream) -> STATUS #foreign libhpdf "HPDF_Boolean_Write";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Number ---------------------------------------------------------*/
Number :: *Number_Rec;

Number_Rec :: struct {
    header: Obj_Header;
    value:  INT32;
}

Number_New :: (mmgr: MMgr, value: INT32) -> Number #foreign libhpdf "HPDF_Number_New";

Number_SetValue :: (obj: Number, value: INT32) -> void #foreign libhpdf "HPDF_Number_SetValue";

Number_Write :: (obj: Number, stream: Stream) -> STATUS #foreign libhpdf "HPDF_Number_Write";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Real -----------------------------------------------------------*/
Real :: *Real_Rec;

Real_Rec :: struct {
    header: Obj_Header;
    error:  Error;
    value:  REAL;
}

Real_New :: (mmgr: MMgr, value: REAL) -> Real #foreign libhpdf "HPDF_Real_New";

Real_Write :: (obj: Real, stream: Stream) -> STATUS #foreign libhpdf "HPDF_Real_Write";

Real_SetValue :: (obj: Real, value: REAL) -> STATUS #foreign libhpdf "HPDF_Real_SetValue";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Name -----------------------------------------------------------*/
Name :: *Name_Rec;

Name_Rec :: struct {
    header: Obj_Header;
    error:  Error;
    value:  [128] u8;
}

Name_New :: (mmgr: MMgr, value: *u8) -> Name #foreign libhpdf "HPDF_Name_New";

Name_SetValue :: (obj: Name, value: *u8) -> STATUS #foreign libhpdf "HPDF_Name_SetValue";

Name_Write :: (obj: Name, stream: Stream) -> STATUS #foreign libhpdf "HPDF_Name_Write";

Name_GetValue :: (obj: Name) -> *u8 #foreign libhpdf "HPDF_Name_GetValue";

/*---------------------------------------------------------------------------*/
/*----- HPDF_String ---------------------------------------------------------*/
String :: *String_Rec;

String_Rec :: struct {
    header:  Obj_Header;
    mmgr:    MMgr;
    error:   Error;
    encoder: Encoder;
    value:   *BYTE;
    len:     UINT;
}

String_New :: (mmgr: MMgr, value: *u8, encoder: Encoder) -> String #foreign libhpdf "HPDF_String_New";

String_SetValue :: (obj: String, value: *u8) -> STATUS #foreign libhpdf "HPDF_String_SetValue";

String_Free :: (obj: String) -> void #foreign libhpdf "HPDF_String_Free";

String_Write :: (obj: String, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_String_Write";

String_Cmp :: (s1: String, s2: String) -> INT32 #foreign libhpdf "HPDF_String_Cmp";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Binary ---------------------------------------------------------*/
Binary :: *Binary_Rec;

Binary_Rec :: struct {
    header: Obj_Header;
    mmgr:   MMgr;
    error:  Error;
    value:  *BYTE;
    len:    UINT;
}

Binary_New :: (mmgr: MMgr, value: *BYTE, len: UINT) -> Binary #foreign libhpdf "HPDF_Binary_New";

Binary_SetValue :: (obj: Binary, value: *BYTE, len: UINT) -> STATUS #foreign libhpdf "HPDF_Binary_SetValue";

Binary_GetValue :: (obj: Binary) -> *BYTE #foreign libhpdf "HPDF_Binary_GetValue";

Binary_Free :: (obj: Binary) -> void #foreign libhpdf "HPDF_Binary_Free";

Binary_Write :: (obj: Binary, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Binary_Write";

Binary_GetLen :: (obj: Binary) -> UINT #foreign libhpdf "HPDF_Binary_GetLen";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Array ----------------------------------------------------------*/
Array :: *Array_Rec;

Array_Rec :: struct {
    header: Obj_Header;
    mmgr:   MMgr;
    error:  Error;
    list:   List;
}

Array_New :: (mmgr: MMgr) -> Array #foreign libhpdf "HPDF_Array_New";

Box_Array_New :: (mmgr: MMgr, box: Box) -> Array #foreign libhpdf "HPDF_Box_Array_New";

Array_Free :: (array: Array) -> void #foreign libhpdf "HPDF_Array_Free";

Array_Write :: (array: Array, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Array_Write";

Array_Add :: (array: Array, obj: *void) -> STATUS #foreign libhpdf "HPDF_Array_Add";

Array_Insert :: (array: Array, target: *void, obj: *void) -> STATUS #foreign libhpdf "HPDF_Array_Insert";

Array_GetItem :: (array: Array, index: UINT, obj_class: UINT16) -> *void #foreign libhpdf "HPDF_Array_GetItem";

Array_AddNumber :: (array: Array, value: INT32) -> STATUS #foreign libhpdf "HPDF_Array_AddNumber";

Array_AddReal :: (array: Array, value: REAL) -> STATUS #foreign libhpdf "HPDF_Array_AddReal";

Array_AddNull :: (array: Array) -> STATUS #foreign libhpdf "HPDF_Array_AddNull";

Array_AddName :: (array: Array, value: *u8) -> STATUS #foreign libhpdf "HPDF_Array_AddName";

Array_Clear :: (array: Array) -> void #foreign libhpdf "HPDF_Array_Clear";

Array_Items :: (array: Array) -> UINT #foreign libhpdf "HPDF_Array_Items";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Dict -----------------------------------------------------------*/
Xref :: *Xref_Rec;

Dict :: *Dict_Rec;

Dict_FreeFunc :: #type (obj: Dict) -> void #c_call;

Dict_BeforeWriteFunc :: #type (obj: Dict) -> STATUS #c_call;

Dict_AfterWriteFunc :: #type (obj: Dict) -> STATUS #c_call;

Dict_OnWriteFunc :: #type (obj: Dict, stream: Stream) -> STATUS #c_call;

Dict_Rec :: struct {
    header:          Obj_Header;
    mmgr:            MMgr;
    error:           Error;
    list:            List;
    before_write_fn: Dict_BeforeWriteFunc;
    write_fn:        Dict_OnWriteFunc;
    after_write_fn:  Dict_AfterWriteFunc;
    free_fn:         Dict_FreeFunc;
    stream:          Stream;
    filter:          UINT;
    filterParams:    Dict;
    attr:            *void;
}

DictElement :: *DictElement_Rec;

DictElement_Rec :: struct {
    key:   [128] u8;
    value: *void;
}

Dict_New :: (mmgr: MMgr) -> Dict #foreign libhpdf "HPDF_Dict_New";

DictStream_New :: (mmgr: MMgr, xref: Xref) -> Dict #foreign libhpdf "HPDF_DictStream_New";

Dict_Free :: (dict: Dict) -> void #foreign libhpdf "HPDF_Dict_Free";

Dict_Write :: (dict: Dict, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Dict_Write";

Dict_GetKeyByObj :: (dict: Dict, obj: *void) -> *u8 #foreign libhpdf "HPDF_Dict_GetKeyByObj";

Dict_Add :: (dict: Dict, key: *u8, obj: *void) -> STATUS #foreign libhpdf "HPDF_Dict_Add";

Dict_GetItem :: (dict: Dict, key: *u8, obj_class: UINT16) -> *void #foreign libhpdf "HPDF_Dict_GetItem";

Dict_AddName :: (dict: Dict, key: *u8, value: *u8) -> STATUS #foreign libhpdf "HPDF_Dict_AddName";

Dict_AddNumber :: (dict: Dict, key: *u8, value: INT32) -> STATUS #foreign libhpdf "HPDF_Dict_AddNumber";

Dict_AddReal :: (dict: Dict, key: *u8, value: REAL) -> STATUS #foreign libhpdf "HPDF_Dict_AddReal";

Dict_AddBoolean :: (dict: Dict, key: *u8, value: BOOL) -> STATUS #foreign libhpdf "HPDF_Dict_AddBoolean";

Dict_RemoveElement :: (dict: Dict, key: *u8) -> STATUS #foreign libhpdf "HPDF_Dict_RemoveElement";

/*---------------------------------------------------------------------------*/
/*----- HPDF_ProxyObject ----------------------------------------------------*/
Proxy :: *Proxy_Rec;

Proxy_Rec :: struct {
    header: Obj_Header;
    obj:    *void;
}

Proxy_New :: (mmgr: MMgr, obj: *void) -> Proxy #foreign libhpdf "HPDF_Proxy_New";

/*---------------------------------------------------------------------------*/
/*----- HPDF_Xref -----------------------------------------------------------*/
XrefEntry :: *XrefEntry_Rec;

XrefEntry_Rec :: struct {
    entry_typ:   u8;
    byte_offset: UINT;
    gen_no:      UINT16;
    obj:         *void;
}

Xref_Rec :: struct {
    mmgr:         MMgr;
    error:        Error;
    start_offset: UINT32;
    entries:      List;
    addr:         UINT;
    prev:         Xref;
    trailer:      Dict;
}

Xref_New :: (mmgr: MMgr, offset: UINT32) -> Xref #foreign libhpdf "HPDF_Xref_New";

Xref_Free :: (xref: Xref) -> void #foreign libhpdf "HPDF_Xref_Free";

Xref_Add :: (xref: Xref, obj: *void) -> STATUS #foreign libhpdf "HPDF_Xref_Add";

Xref_GetEntry :: (xref: Xref, index: UINT) -> XrefEntry #foreign libhpdf "HPDF_Xref_GetEntry";

Xref_WriteToStream :: (xref: Xref, stream: Stream, e: Encrypt) -> STATUS #foreign libhpdf "HPDF_Xref_WriteToStream";

Xref_GetEntryByObjectId :: (xref: Xref, obj_id: UINT) -> XrefEntry #foreign libhpdf "HPDF_Xref_GetEntryByObjectId";

EmbeddedFile :: Dict;
NameDict :: Dict;
NameTree :: Dict;
Pages :: Dict;
Page :: Dict;
Annotation :: Dict;
_3DMeasure :: Dict;
ExData :: Dict;
XObject :: Dict;
Image :: Dict;
Outline :: Dict;
EncryptDict :: Dict;
Action :: Dict;
ExtGState :: Dict;
Destination :: Array;
U3D :: Dict;
OutputIntent :: Dict;
JavaScript :: Dict;
Shading :: Dict;

/*---------------------------------------------------------------------------*/
/*----- HPDF_Direct ---------------------------------------------------------*/
Direct :: *Direct_Rec;

Direct_Rec :: struct {
    header: Obj_Header;
    mmgr:   MMgr;
    error:  Error;
    value:  *BYTE;
    len:    UINT;
}

Direct_New :: (mmgr: MMgr, value: *BYTE, len: UINT) -> Direct #foreign libhpdf "HPDF_Direct_New";

Direct_SetValue :: (obj: Direct, value: *BYTE, len: UINT) -> STATUS #foreign libhpdf "HPDF_Direct_SetValue";

Direct_Free :: (obj: Direct) -> void #foreign libhpdf "HPDF_Direct_Free";

Direct_Write :: (obj: Direct, stream: Stream) -> STATUS #foreign libhpdf "HPDF_Direct_Write";

Catalog :: Dict;

Catalog_New :: (mmgr: MMgr, xref: Xref) -> Catalog #foreign libhpdf "HPDF_Catalog_New";

Catalog_GetNames :: (catalog: Catalog) -> NameDict #foreign libhpdf "HPDF_Catalog_GetNames";

Catalog_SetNames :: (catalog: Catalog, dict: NameDict) -> STATUS #foreign libhpdf "HPDF_Catalog_SetNames";

Catalog_GetRoot :: (catalog: Catalog) -> Pages #foreign libhpdf "HPDF_Catalog_GetRoot";

Catalog_GetPageLayout :: (catalog: Catalog) -> PageLayout #foreign libhpdf "HPDF_Catalog_GetPageLayout";

Catalog_SetPageLayout :: (catalog: Catalog, layout: PageLayout) -> STATUS #foreign libhpdf "HPDF_Catalog_SetPageLayout";

Catalog_GetPageMode :: (catalog: Catalog) -> PageMode #foreign libhpdf "HPDF_Catalog_GetPageMode";

Catalog_SetPageMode :: (catalog: Catalog, mode: PageMode) -> STATUS #foreign libhpdf "HPDF_Catalog_SetPageMode";

Catalog_SetOpenAction :: (catalog: Catalog, open_action: Destination) -> STATUS #foreign libhpdf "HPDF_Catalog_SetOpenAction";

Catalog_AddPageLabel :: (catalog: Catalog, page_num: UINT, page_label: Dict) -> STATUS #foreign libhpdf "HPDF_Catalog_AddPageLabel";

Catalog_GetViewerPreference :: (catalog: Catalog) -> UINT #foreign libhpdf "HPDF_Catalog_GetViewerPreference";

Catalog_SetViewerPreference :: (catalog: Catalog, value: UINT) -> STATUS #foreign libhpdf "HPDF_Catalog_SetViewerPreference";

Catalog_Validate :: (catalog: Catalog) -> BOOL #foreign libhpdf "HPDF_Catalog_Validate";

Image_Load1BitImageFromMem :: (mmgr: MMgr, buf: *BYTE, xref: Xref, width: UINT, height: UINT, line_width: UINT, top_is_first: BOOL) -> Image #foreign libhpdf "HPDF_Image_Load1BitImageFromMem";

Image_LoadPngImage :: (mmgr: MMgr, png_data: Stream, xref: Xref, delayed_loading: BOOL) -> Image #foreign libhpdf "HPDF_Image_LoadPngImage";

Image_LoadJpegImage :: (mmgr: MMgr, jpeg_data: Stream, xref: Xref) -> Image #foreign libhpdf "HPDF_Image_LoadJpegImage";

Image_LoadJpegImageFromMem :: (mmgr: MMgr, buf: *BYTE, size: UINT, xref: Xref) -> Image #foreign libhpdf "HPDF_Image_LoadJpegImageFromMem";

Image_LoadRawImage :: (mmgr: MMgr, stream: Stream, xref: Xref, width: UINT, height: UINT, color_space: ColorSpace) -> Image #foreign libhpdf "HPDF_Image_LoadRawImage";

Image_LoadRawImageFromMem :: (mmgr: MMgr, buf: *BYTE, xref: Xref, width: UINT, height: UINT, color_space: ColorSpace, bits_per_component: UINT) -> Image #foreign libhpdf "HPDF_Image_LoadRawImageFromMem";

Image_Validate :: (image: Image) -> BOOL #foreign libhpdf "HPDF_Image_Validate";

Image_SetMask :: (image: Image, mask: BOOL) -> STATUS #foreign libhpdf "HPDF_Image_SetMask";

Image_SetColorSpace :: (image: Image, colorspace: Array) -> STATUS #foreign libhpdf "HPDF_Image_SetColorSpace";

Image_SetRenderingIntent :: (image: Image, intent: *u8) -> STATUS #foreign libhpdf "HPDF_Image_SetRenderingIntent";

/*-- HPDF_FontDef ---------------------------------------*/
CharData :: struct {
    char_cd: INT16;
    unicode: UNICODE;
    width:   INT16;
}

FontDefType :: enum u32 {
    TYPE1         :: 0;
    TRUETYPE      :: 1;
    CID           :: 2;
    UNINITIALIZED :: 3;
    EOF           :: 4;

    HPDF_FONTDEF_TYPE_TYPE1         :: TYPE1;
    HPDF_FONTDEF_TYPE_TRUETYPE      :: TRUETYPE;
    HPDF_FONTDEF_TYPE_CID           :: CID;
    HPDF_FONTDEF_TYPE_UNINITIALIZED :: UNINITIALIZED;
    HPDF_FONTDEF_TYPE_EOF           :: EOF;
}

CID_Width :: struct {
    cid:   UINT16;
    width: INT16;
}

/*----------------------------------------------------------------------------*/
/*----- HPDF_FontDef ---------------------------------------------------------*/
FontDef :: *FontDef_Rec;

FontDef_FreeFunc :: #type (fontdef: FontDef) -> void #c_call;

FontDef_CleanFunc :: #type (fontdef: FontDef) -> void #c_call;

FontDef_InitFunc :: #type (fontdef: FontDef) -> STATUS #c_call;

FontDef_Rec :: struct {
    sig_bytes:     UINT32;
    base_font:     [128] u8;
    mmgr:          MMgr;
    error:         Error;
    type:          FontDefType;
    clean_fn:      FontDef_CleanFunc;
    free_fn:       FontDef_FreeFunc;
    init_fn:       FontDef_InitFunc;

    ascent:        INT16;
    descent:       INT16;
    flags:         UINT;
    font_bbox:     Box;
    italic_angle:  INT16;
    stemv:         UINT16;
    avg_width:     INT16;
    max_width:     INT16;
    missing_width: INT16;
    stemh:         UINT16;
    x_height:      UINT16;
    cap_height:    UINT16;

    /*  the initial value of descriptor entry is NULL.
    *  when first font-object based on the fontdef object is created,
    *  the font-descriptor object is created and descriptor entry is set.
    */
    descriptor:    Dict;
    data:          Stream;

    valid:         BOOL;
    attr:          *void;
}

FontDef_Free :: (fontdef: FontDef) -> void #foreign libhpdf "HPDF_FontDef_Free";

FontDef_Cleanup :: (fontdef: FontDef) -> void #foreign libhpdf "HPDF_FontDef_Cleanup";

FontDef_Validate :: (fontdef: FontDef) -> BOOL #foreign libhpdf "HPDF_FontDef_Validate";

/*----------------------------------------------------------------------------*/
/*----- HPDF_Type1FontDef  ---------------------------------------------------*/
Type1FontDefAttr :: *_HPDF_Type1FontDefAttrRec;

_HPDF_Type1FontDefAttrRec :: struct {
    first_char:      BYTE; /* Required */
    last_char:       BYTE; /* Required */
    widths:          *CharData; /* Required */
    widths_count:    UINT;

    leading:         INT16;
    char_set:        *u8;
    encoding_scheme: [128] u8;
    length1:         UINT;
    length2:         UINT;
    length3:         UINT;
    is_base14font:   BOOL;
    is_fixed_pitch:  BOOL;

    font_data:       Stream;
}

Type1FontDefAttr_Rec :: _HPDF_Type1FontDefAttrRec;

Type1FontDef_New :: (mmgr: MMgr) -> FontDef #foreign libhpdf "HPDF_Type1FontDef_New";

Type1FontDef_Load :: (mmgr: MMgr, afm: Stream, font_data: Stream) -> FontDef #foreign libhpdf "HPDF_Type1FontDef_Load";

Type1FontDef_Duplicate :: (mmgr: MMgr, src: FontDef) -> FontDef #foreign libhpdf "HPDF_Type1FontDef_Duplicate";

Type1FontDef_SetWidths :: (fontdef: FontDef, widths: *CharData) -> STATUS #foreign libhpdf "HPDF_Type1FontDef_SetWidths";

Type1FontDef_GetWidthByName :: (fontdef: FontDef, gryph_name: *u8) -> INT16 #foreign libhpdf "HPDF_Type1FontDef_GetWidthByName";

Type1FontDef_GetWidth :: (fontdef: FontDef, unicode: UNICODE) -> INT16 #foreign libhpdf "HPDF_Type1FontDef_GetWidth";

Base14FontDef_New :: (mmgr: MMgr, font_name: *u8) -> FontDef #foreign libhpdf "HPDF_Base14FontDef_New";

_HPDF_TTF_Table :: struct {
    tag:       [4] u8;
    check_sum: UINT32;
    offset:    UINT32;
    length:    UINT32;
}

TTFTable :: _HPDF_TTF_Table;

TTF_OffsetTbl :: struct {
    sfnt_version:   UINT32;
    num_tables:     UINT16;
    search_range:   UINT16;
    entry_selector: UINT16;
    range_shift:    UINT16;
    table:          *TTFTable;
}

TTF_CmapRange :: struct {
    format:               UINT16;
    length:               UINT16;
    language:             UINT16;
    seg_count_x2:         UINT16;
    search_range:         UINT16;
    entry_selector:       UINT16;
    range_shift:          UINT16;
    end_count:            *UINT16;
    reserved_pad:         UINT16;
    start_count:          *UINT16;
    id_delta:             *INT16;
    id_range_offset:      *UINT16;
    glyph_id_array:       *UINT16;
    glyph_id_array_count: UINT;
}

TTF_GryphOffsets :: struct {
    base_offset: UINT32;
    offsets:     *UINT32;
    flgs:        *BYTE; /* 0: unused, 1: used */
}

TTF_LongHorMetric :: struct {
    advance_width: UINT16;
    lsb:           INT16;
}

TTF_FontHeader :: struct {
    version_number:       [4] BYTE;
    font_revision:        UINT32;
    check_sum_adjustment: UINT32;
    magic_number:         UINT32;
    flags:                UINT16;
    units_per_em:         UINT16;
    created:              [8] BYTE;
    modified:             [8] BYTE;
    x_min:                INT16;
    y_min:                INT16;
    x_max:                INT16;
    y_max:                INT16;
    mac_style:            UINT16;
    lowest_rec_ppem:      UINT16;
    font_direction_hint:  INT16;
    index_to_loc_format:  INT16;
    glyph_data_format:    INT16;
}

TTF_NameRecord :: struct {
    platform_id: UINT16;
    encoding_id: UINT16;
    language_id: UINT16;
    name_id:     UINT16;
    length:      UINT16;
    offset:      UINT16;
}

TTF_NamingTable :: struct {
    format:        UINT16;
    count:         UINT16;
    string_offset: UINT16;
    name_records:  *TTF_NameRecord;
}

TTFontDefAttr :: *TTFontDefAttr_Rec;

TTFontDefAttr_Rec :: struct {
    base_font:        [128] u8;
    first_char:       BYTE;
    last_char:        BYTE;
    char_set:         *u8;
    tag_name:         [7] u8;
    tag_name2:        [14] u8;
    header:           TTF_FontHeader;
    glyph_tbl:        TTF_GryphOffsets;
    num_glyphs:       UINT16;
    name_tbl:         TTF_NamingTable;
    h_metric:         *TTF_LongHorMetric;
    num_h_metric:     UINT16;
    offset_tbl:       TTF_OffsetTbl;
    cmap:             TTF_CmapRange;
    fs_type:          UINT16;
    sfamilyclass:     [2] BYTE;
    panose:           [10] BYTE;
    code_page_range1: UINT32;
    code_page_range2: UINT32;

    length1:          UINT;

    embedding:        BOOL;
    is_cidfont:       BOOL;

    stream:           Stream;
}

TTFontDef_New :: (mmgr: MMgr) -> FontDef #foreign libhpdf "HPDF_TTFontDef_New";

TTFontDef_Load :: (mmgr: MMgr, stream: Stream, embedding: BOOL) -> FontDef #foreign libhpdf "HPDF_TTFontDef_Load";

TTFontDef_Load2 :: (mmgr: MMgr, stream: Stream, index: UINT, embedding: BOOL) -> FontDef #foreign libhpdf "HPDF_TTFontDef_Load2";

TTFontDef_GetGlyphid :: (fontdef: FontDef, unicode: UINT16) -> UINT16 #foreign libhpdf "HPDF_TTFontDef_GetGlyphid";

TTFontDef_GetCharWidth :: (fontdef: FontDef, unicode: UINT16) -> INT16 #foreign libhpdf "HPDF_TTFontDef_GetCharWidth";

TTFontDef_GetGidWidth :: (fontdef: FontDef, gid: UINT16) -> INT16 #foreign libhpdf "HPDF_TTFontDef_GetGidWidth";

TTFontDef_SaveFontData :: (fontdef: FontDef, stream: Stream) -> STATUS #foreign libhpdf "HPDF_TTFontDef_SaveFontData";

TTFontDef_GetCharBBox :: (fontdef: FontDef, unicode: UINT16) -> Box #foreign libhpdf "HPDF_TTFontDef_GetCharBBox";

TTFontDef_SetTagName :: (fontdef: FontDef, tag: *u8) -> void #foreign libhpdf "HPDF_TTFontDef_SetTagName";

/*----------------------------------------------------------------------------*/
/*----- HPDF_CIDFontDef  -----------------------------------------------------*/
CIDFontDefAttr :: *_HPDF_CIDFontDefAttrRec;

_HPDF_CIDFontDefAttrRec :: struct {
    widths: List;
    DW:     INT16;
    DW2:    [2] INT16;
}

CIDFontDefAttr_Rec :: _HPDF_CIDFontDefAttrRec;

CIDFontDef_New :: (mmgr: MMgr, name: *u8, init_fn: FontDef_InitFunc) -> FontDef #foreign libhpdf "HPDF_CIDFontDef_New";

CIDFontDef_AddWidth :: (fontdef: FontDef, widths: *CID_Width) -> STATUS #foreign libhpdf "HPDF_CIDFontDef_AddWidth";

CIDFontDef_GetCIDWidth :: (fontdef: FontDef, cid: UINT16) -> INT16 #foreign libhpdf "HPDF_CIDFontDef_GetCIDWidth";

CIDFontDef_ChangeStyle :: (fontdef: FontDef, bold: BOOL, italic: BOOL) -> STATUS #foreign libhpdf "HPDF_CIDFontDef_ChangeStyle";

/*----------------------------------------------------------------------------*/
/*----- Writing Mode ---------------------------------------------------------*/
FontType :: enum u32 {
    TYPE1     :: 0;
    TRUETYPE  :: 1;
    TYPE3     :: 2;
    TYPE0_CID :: 3;
    TYPE0_TT  :: 4;
    CID_TYPE0 :: 5;
    CID_TYPE2 :: 6;
    MMTYPE1   :: 7;

    HPDF_FONT_TYPE1     :: TYPE1;
    HPDF_FONT_TRUETYPE  :: TRUETYPE;
    HPDF_FONT_TYPE3     :: TYPE3;
    HPDF_FONT_TYPE0_CID :: TYPE0_CID;
    HPDF_FONT_TYPE0_TT  :: TYPE0_TT;
    HPDF_FONT_CID_TYPE0 :: CID_TYPE0;
    HPDF_FONT_CID_TYPE2 :: CID_TYPE2;
    HPDF_FONT_MMTYPE1   :: MMTYPE1;
}

Font :: Dict;

Font_TextWidths_Func :: #type (font: Font, text: *BYTE, len: UINT) -> TextWidth #c_call;

Font_MeasureText_Func :: #type (font: Font, text: *BYTE, len: UINT, width: REAL, fontsize: REAL, charspace: REAL, wordspace: REAL, wordwrap: BOOL, real_width: *REAL) -> UINT #c_call;

FontAttr :: *FontAttr_Rec;

FontAttr_Rec :: struct {
    type:            FontType;
    writing_mode:    WritingMode;
    text_width_fn:   Font_TextWidths_Func;
    measure_text_fn: Font_MeasureText_Func;
    fontdef:         FontDef;
    encoder:         Encoder;

    /* if the encoding-type is HPDF_ENCODER_TYPE_SINGLE_BYTE, the width of
    * each characters are cashed in 'widths'.
    * when HPDF_ENCODER_TYPE_DOUBLE_BYTE the width is calculate each time.
    */
    widths:          *INT16;
    used:            *BYTE;

    xref:            Xref;
    descendant_font: Font;
    map_stream:      Dict;
    cmap_stream:     Dict;
}

Type1Font_New :: (mmgr: MMgr, fontdef: FontDef, encoder: Encoder, xref: Xref) -> Font #foreign libhpdf "HPDF_Type1Font_New";

TTFont_New :: (mmgr: MMgr, fontdef: FontDef, encoder: Encoder, xref: Xref) -> Font #foreign libhpdf "HPDF_TTFont_New";

Type0Font_New :: (mmgr: MMgr, fontdef: FontDef, encoder: Encoder, xref: Xref) -> Font #foreign libhpdf "HPDF_Type0Font_New";

Font_Validate :: (font: Font) -> BOOL #foreign libhpdf "HPDF_Font_Validate";

/*----------------------------------------------------------------------------*/
/*------ graphic state stack -------------------------------------------------*/
GState :: *GState_Rec;

GState_Rec :: struct {
    trans_matrix:   TransMatrix;
    line_width:     REAL;
    line_cap:       LineCap;
    line_join:      LineJoin;
    miter_limit:    REAL;
    dash_mode:      DashMode;
    flatness:       REAL;

    char_space:     REAL;
    word_space:     REAL;
    h_scalling:     REAL;
    text_leading:   REAL;
    rendering_mode: TextRenderingMode;
    text_rise:      REAL;

    cs_fill:        ColorSpace;
    cs_stroke:      ColorSpace;
    rgb_fill:       RGBColor;
    rgb_stroke:     RGBColor;
    cmyk_fill:      CMYKColor;
    cmyk_stroke:    CMYKColor;
    gray_fill:      REAL;
    gray_stroke:    REAL;

    font:           Font;
    font_size:      REAL;
    writing_mode:   WritingMode;

    prev:           GState;
    depth:          UINT;
}

/*----------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/
GState_New :: (mmgr: MMgr, current: GState) -> GState #foreign libhpdf "HPDF_GState_New";

GState_Free :: (mmgr: MMgr, gstate: GState) -> GState #foreign libhpdf "HPDF_GState_Free";

ExtGState_New :: (mmgr: MMgr, xref: Xref) -> Dict #foreign libhpdf "HPDF_ExtGState_New";

ExtGState_Validate :: (ext_gstate: ExtGState) -> BOOL #foreign libhpdf "HPDF_ExtGState_Validate";

/*----------------------------------------------------------------------------*/
/*----- HPDF_Pages -----------------------------------------------------------*/
Pages_New :: (mmgr: MMgr, parent: Pages, xref: Xref) -> Pages #foreign libhpdf "HPDF_Pages_New";

Pages_Validate :: (pages: Pages) -> BOOL #foreign libhpdf "HPDF_Pages_Validate";

Pages_AddKids :: (parent: Pages, kid: Dict) -> STATUS #foreign libhpdf "HPDF_Pages_AddKids";

Page_InsertBefore :: (page: Page, target: Page) -> STATUS #foreign libhpdf "HPDF_Page_InsertBefore";

PageAttr :: *PageAttr_Rec;

PageAttr_Rec :: struct {
    parent:           Pages;
    fonts:            Dict;
    xobjects:         Dict;
    ext_gstates:      Dict;
    shadings:         Dict;
    gstate:           GState;
    str_pos:          Point;
    cur_pos:          Point;
    text_pos:         Point;
    text_matrix:      TransMatrix;
    gmode:            UINT16;
    contents:         Dict;
    stream:           Stream;
    xref:             Xref;
    compression_mode: UINT;
    ver:              *PDFVer;
}

/*----------------------------------------------------------------------------*/
/*----- HPDF_Page ------------------------------------------------------------*/
Page_Validate :: (page: Page) -> BOOL #foreign libhpdf "HPDF_Page_Validate";

Page_New :: (mmgr: MMgr, xref: Xref) -> Page #foreign libhpdf "HPDF_Page_New";

Page_GetInheritableItem :: (page: Page, key: *u8, obj_class: UINT16) -> *void #foreign libhpdf "HPDF_Page_GetInheritableItem";

Page_GetXObjectName :: (page: Page, xobj: XObject) -> *u8 #foreign libhpdf "HPDF_Page_GetXObjectName";

Page_GetLocalFontName :: (page: Page, font: Font) -> *u8 #foreign libhpdf "HPDF_Page_GetLocalFontName";

Page_GetExtGStateName :: (page: Page, gstate: ExtGState) -> *u8 #foreign libhpdf "HPDF_Page_GetExtGStateName";

Page_GetShadingName :: (page: Page, shading: Shading) -> *u8 #foreign libhpdf "HPDF_Page_GetShadingName";

Page_GetMediaBox :: (page: Page) -> Box #foreign libhpdf "HPDF_Page_GetMediaBox";

Page_SetBoxValue :: (page: Page, name: *u8, index: UINT, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetBoxValue";

Page_SetFilter :: (page: Page, filter: UINT) -> void #foreign libhpdf "HPDF_Page_SetFilter";

Page_CheckState :: (page: Page, mode: UINT) -> STATUS #foreign libhpdf "HPDF_Page_CheckState";

/*----------------------------------------------------------------------------*/
/*----- HPDF_Outline ---------------------------------------------------------*/
OutlineRoot_New :: (mmgr: MMgr, xref: Xref) -> Outline #foreign libhpdf "HPDF_OutlineRoot_New";

Outline_New :: (mmgr: MMgr, parent: Outline, title: *u8, encoder: Encoder, xref: Xref) -> Outline #foreign libhpdf "HPDF_Outline_New";

Outline_GetFirst :: (outline: Outline) -> Outline #foreign libhpdf "HPDF_Outline_GetFirst";

Outline_GetLast :: (outline: Outline) -> Outline #foreign libhpdf "HPDF_Outline_GetLast";

Outline_GetPrev :: (outline: Outline) -> Outline #foreign libhpdf "HPDF_Outline_GetPrev";

Outline_GetNext :: (outline: Outline) -> Outline #foreign libhpdf "HPDF_Outline_GetNext";

Outline_GetParent :: (outline: Outline) -> Outline #foreign libhpdf "HPDF_Outline_GetParent";

Outline_GetOpened :: (outline: Outline) -> BOOL #foreign libhpdf "HPDF_Outline_GetOpened";

Outline_Validate :: (obj: Outline) -> BOOL #foreign libhpdf "HPDF_Outline_Validate";

Doc_Rec :: struct {
    sig_bytes:        UINT32;
    pdf_version:      PDFVer;

    mmgr:             MMgr;
    catalog:          Catalog;
    outlines:         Outline;
    xref:             Xref;
    root_pages:       Pages;
    cur_pages:        Pages;
    cur_page:         Page;
    page_list:        List;
    error:            Error_Rec;
    info:             Dict;
    trailer:          Dict;

    font_mgr:         List;
    ttfont_tag:       [6] BYTE;

    /* list for loaded fontdefs */
    fontdef_list:     List;

    /* list for loaded encodings */
    encoder_list:     List;

    cur_encoder:      Encoder;

    /* default compression mode */
    compression_mode: BOOL;

    encrypt_on:       BOOL;
    encrypt_dict:     EncryptDict;

    def_encoder:      Encoder;

    page_per_pages:   UINT;
    cur_page_num:     UINT;

    /* buffer for saving into memory stream */
    stream:           Stream;
}

Doc :: *Doc_Rec;

Doc_FindEncoder :: (pdf: Doc, encoding_name: *u8) -> Encoder #foreign libhpdf "HPDF_Doc_FindEncoder";

Doc_FindFontDef :: (pdf: Doc, font_name: *u8) -> FontDef #foreign libhpdf "HPDF_Doc_FindFontDef";

Doc_FindFont :: (pdf: Doc, font_name: *u8, encoding_name: *u8) -> Font #foreign libhpdf "HPDF_Doc_FindFont";

Doc_Validate :: (pdf: Doc) -> BOOL #foreign libhpdf "HPDF_Doc_Validate";

/*----- page handling -------------------------------------------------------*/
Doc_GetCurrentPages :: (pdf: Doc) -> Pages #foreign libhpdf "HPDF_Doc_GetCurrentPages";

Doc_AddPagesTo :: (pdf: Doc, parent: Pages) -> Pages #foreign libhpdf "HPDF_Doc_AddPagesTo";

Doc_SetCurrentPages :: (pdf: Doc, pages: Pages) -> STATUS #foreign libhpdf "HPDF_Doc_SetCurrentPages";

Doc_SetCurrentPage :: (pdf: Doc, page: Page) -> STATUS #foreign libhpdf "HPDF_Doc_SetCurrentPage";

/*----- font handling -------------------------------------------------------*/
GetFontDef :: (pdf: Doc, font_name: *u8) -> FontDef #foreign libhpdf "HPDF_GetFontDef";

Doc_RegisterFontDef :: (pdf: Doc, fontdef: FontDef) -> STATUS #foreign libhpdf "HPDF_Doc_RegisterFontDef";

/*----- encoding handling ---------------------------------------------------*/
Doc_RegisterEncoder :: (pdf: Doc, encoder: Encoder) -> STATUS #foreign libhpdf "HPDF_Doc_RegisterEncoder";

/*----- encryptio------------------------------------------------------------*/
Doc_SetEncryptOn :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_Doc_SetEncryptOn";

Doc_SetEncryptOff :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_Doc_SetEncryptOff";

Doc_PrepareEncryption :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_Doc_PrepareEncryption";

PDFA_AppendOutputIntents :: (pdf: Doc, iccname: *u8, iccdict: Dict) -> STATUS #foreign libhpdf "HPDF_PDFA_AppendOutputIntents";

PDFA_SetPDFAConformance :: (pdf: Doc, pdfatype: PDFAType) -> STATUS #foreign libhpdf "HPDF_PDFA_SetPDFAConformance";

PDFA_GenerateID :: (unknown0: Doc) -> STATUS #foreign libhpdf "HPDF_PDFA_GenerateID";

GetVersion :: () -> *u8 #foreign libhpdf "HPDF_GetVersion";

NewEx :: (user_error_fn: Error_Handler, user_alloc_fn: Alloc_Func, user_free_fn: Free_Func, mem_pool_buf_size: UINT, user_data: *void) -> Doc #foreign libhpdf "HPDF_NewEx";

New :: (user_error_fn: Error_Handler, user_data: *void) -> Doc #foreign libhpdf "HPDF_New";

SetErrorHandler :: (pdf: Doc, user_error_fn: Error_Handler) -> STATUS #foreign libhpdf "HPDF_SetErrorHandler";

Free :: (pdf: Doc) -> void #foreign libhpdf "HPDF_Free";

GetDocMMgr :: (doc: Doc) -> MMgr #foreign libhpdf "HPDF_GetDocMMgr";

NewDoc :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_NewDoc";

FreeDoc :: (pdf: Doc) -> void #foreign libhpdf "HPDF_FreeDoc";

HasDoc :: (pdf: Doc) -> BOOL #foreign libhpdf "HPDF_HasDoc";

FreeDocAll :: (pdf: Doc) -> void #foreign libhpdf "HPDF_FreeDocAll";

SaveToStream :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_SaveToStream";

GetContents :: (pdf: Doc, buf: *BYTE, size: *UINT32) -> STATUS #foreign libhpdf "HPDF_GetContents";

GetStreamSize :: (pdf: Doc) -> UINT32 #foreign libhpdf "HPDF_GetStreamSize";

ReadFromStream :: (pdf: Doc, buf: *BYTE, size: *UINT32) -> STATUS #foreign libhpdf "HPDF_ReadFromStream";

ResetStream :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_ResetStream";

SaveToFile :: (pdf: Doc, file_name: *u8) -> STATUS #foreign libhpdf "HPDF_SaveToFile";

GetError :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_GetError";

GetErrorDetail :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_GetErrorDetail";

ResetError :: (pdf: Doc) -> void #foreign libhpdf "HPDF_ResetError";

CheckError :: (error: Error) -> STATUS #foreign libhpdf "HPDF_CheckError";

SetPagesConfiguration :: (pdf: Doc, page_per_pages: UINT) -> STATUS #foreign libhpdf "HPDF_SetPagesConfiguration";

GetPageByIndex :: (pdf: Doc, index: UINT) -> Page #foreign libhpdf "HPDF_GetPageByIndex";

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/
GetPageMMgr :: (page: Page) -> MMgr #foreign libhpdf "HPDF_GetPageMMgr";

GetPageLayout :: (pdf: Doc) -> PageLayout #foreign libhpdf "HPDF_GetPageLayout";

SetPageLayout :: (pdf: Doc, layout: PageLayout) -> STATUS #foreign libhpdf "HPDF_SetPageLayout";

GetPageMode :: (pdf: Doc) -> PageMode #foreign libhpdf "HPDF_GetPageMode";

SetPageMode :: (pdf: Doc, mode: PageMode) -> STATUS #foreign libhpdf "HPDF_SetPageMode";

GetViewerPreference :: (pdf: Doc) -> UINT #foreign libhpdf "HPDF_GetViewerPreference";

SetViewerPreference :: (pdf: Doc, value: UINT) -> STATUS #foreign libhpdf "HPDF_SetViewerPreference";

SetOpenAction :: (pdf: Doc, open_action: Destination) -> STATUS #foreign libhpdf "HPDF_SetOpenAction";

/*---------------------------------------------------------------------------*/
/*----- page handling -------------------------------------------------------*/
GetCurrentPage :: (pdf: Doc) -> Page #foreign libhpdf "HPDF_GetCurrentPage";

AddPage :: (pdf: Doc) -> Page #foreign libhpdf "HPDF_AddPage";

InsertPage :: (pdf: Doc, page: Page) -> Page #foreign libhpdf "HPDF_InsertPage";

Page_SetWidth :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetWidth";

Page_SetHeight :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetHeight";

Page_SetBoundary :: (page: Page, boundary: PageBoundary, left: REAL, bottom: REAL, right: REAL, top: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetBoundary";

Page_SetSize :: (page: Page, size: PageSizes, direction: PageDirection) -> STATUS #foreign libhpdf "HPDF_Page_SetSize";

Page_SetRotate :: (page: Page, angle: UINT16) -> STATUS #foreign libhpdf "HPDF_Page_SetRotate";

Page_SetZoom :: (page: Page, zoom: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetZoom";

/*---------------------------------------------------------------------------*/
/*----- font handling -------------------------------------------------------*/
GetFont :: (pdf: Doc, font_name: *u8, encoding_name: *u8) -> Font #foreign libhpdf "HPDF_GetFont";

LoadType1FontFromFile :: (pdf: Doc, afm_file_name: *u8, data_file_name: *u8) -> *u8 #foreign libhpdf "HPDF_LoadType1FontFromFile";

GetTTFontDefFromFile :: (pdf: Doc, file_name: *u8, embedding: BOOL) -> FontDef #foreign libhpdf "HPDF_GetTTFontDefFromFile";

LoadTTFontFromFile :: (pdf: Doc, file_name: *u8, embedding: BOOL) -> *u8 #foreign libhpdf "HPDF_LoadTTFontFromFile";

LoadTTFontFromFile2 :: (pdf: Doc, file_name: *u8, index: UINT, embedding: BOOL) -> *u8 #foreign libhpdf "HPDF_LoadTTFontFromFile2";

AddPageLabel :: (pdf: Doc, page_num: UINT, style: PageNumStyle, first_page: UINT, prefix: *u8) -> STATUS #foreign libhpdf "HPDF_AddPageLabel";

UseJPFonts :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseJPFonts";

UseKRFonts :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseKRFonts";

UseCNSFonts :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseCNSFonts";

UseCNTFonts :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseCNTFonts";

/*--------------------------------------------------------------------------*/
/*----- outline ------------------------------------------------------------*/
CreateOutline :: (pdf: Doc, parent: Outline, title: *u8, encoder: Encoder) -> Outline #foreign libhpdf "HPDF_CreateOutline";

Outline_SetOpened :: (outline: Outline, opened: BOOL) -> STATUS #foreign libhpdf "HPDF_Outline_SetOpened";

Outline_SetDestination :: (outline: Outline, dst: Destination) -> STATUS #foreign libhpdf "HPDF_Outline_SetDestination";

/*--------------------------------------------------------------------------*/
/*----- destination --------------------------------------------------------*/
Page_CreateDestination :: (page: Page) -> Destination #foreign libhpdf "HPDF_Page_CreateDestination";

Destination_SetXYZ :: (dst: Destination, left: REAL, top: REAL, zoom: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetXYZ";

Destination_SetFit :: (dst: Destination) -> STATUS #foreign libhpdf "HPDF_Destination_SetFit";

Destination_SetFitH :: (dst: Destination, top: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitH";

Destination_SetFitV :: (dst: Destination, left: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitV";

Destination_SetFitR :: (dst: Destination, left: REAL, bottom: REAL, right: REAL, top: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitR";

Destination_SetFitB :: (dst: Destination) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitB";

Destination_SetFitBH :: (dst: Destination, top: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitBH";

Destination_SetFitBV :: (dst: Destination, left: REAL) -> STATUS #foreign libhpdf "HPDF_Destination_SetFitBV";

/*--------------------------------------------------------------------------*/
/*----- encoder ------------------------------------------------------------*/
GetEncoder :: (pdf: Doc, encoding_name: *u8) -> Encoder #foreign libhpdf "HPDF_GetEncoder";

GetCurrentEncoder :: (pdf: Doc) -> Encoder #foreign libhpdf "HPDF_GetCurrentEncoder";

SetCurrentEncoder :: (pdf: Doc, encoding_name: *u8) -> STATUS #foreign libhpdf "HPDF_SetCurrentEncoder";

Encoder_GetType :: (encoder: Encoder) -> EncoderType #foreign libhpdf "HPDF_Encoder_GetType";

Encoder_GetByteType :: (encoder: Encoder, text: *u8, index: UINT) -> ByteType #foreign libhpdf "HPDF_Encoder_GetByteType";

Encoder_GetUnicode :: (encoder: Encoder, code: UINT16) -> UNICODE #foreign libhpdf "HPDF_Encoder_GetUnicode";

Encoder_GetWritingMode :: (encoder: Encoder) -> WritingMode #foreign libhpdf "HPDF_Encoder_GetWritingMode";

UseJPEncodings :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseJPEncodings";

UseKREncodings :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseKREncodings";

UseCNSEncodings :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseCNSEncodings";

UseCNTEncodings :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseCNTEncodings";

UseUTFEncodings :: (pdf: Doc) -> STATUS #foreign libhpdf "HPDF_UseUTFEncodings";

/*--------------------------------------------------------------------------*/
/*----- XObject ------------------------------------------------------------*/
Page_CreateXObjectFromImage :: (pdf: Doc, page: Page, rect: Rect, image: Image, zoom: BOOL) -> XObject #foreign libhpdf "HPDF_Page_CreateXObjectFromImage";

Page_CreateXObjectAsWhiteRect :: (pdf: Doc, page: Page, rect: Rect) -> XObject #foreign libhpdf "HPDF_Page_CreateXObjectAsWhiteRect";

/*--------------------------------------------------------------------------*/
/*----- annotation ---------------------------------------------------------*/
Page_Create3DAnnot :: (page: Page, rect: Rect, tb: BOOL, np: BOOL, u3d: U3D, ap: Image) -> Annotation #foreign libhpdf "HPDF_Page_Create3DAnnot";

Page_CreateTextAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateTextAnnot";

Page_CreateFreeTextAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateFreeTextAnnot";

Page_CreateLineAnnot :: (page: Page, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateLineAnnot";

Page_CreateWidgetAnnot_WhiteOnlyWhilePrint :: (pdf: Doc, page: Page, rect: Rect) -> Annotation #foreign libhpdf "HPDF_Page_CreateWidgetAnnot_WhiteOnlyWhilePrint";

Page_CreateWidgetAnnot :: (page: Page, rect: Rect) -> Annotation #foreign libhpdf "HPDF_Page_CreateWidgetAnnot";

Page_CreateLinkAnnot :: (page: Page, rect: Rect, dst: Destination) -> Annotation #foreign libhpdf "HPDF_Page_CreateLinkAnnot";

Page_CreateURILinkAnnot :: (page: Page, rect: Rect, uri: *u8) -> Annotation #foreign libhpdf "HPDF_Page_CreateURILinkAnnot";

Page_CreateTextMarkupAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder, subType: AnnotType) -> Annotation #foreign libhpdf "HPDF_Page_CreateTextMarkupAnnot";

Page_CreateHighlightAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateHighlightAnnot";

Page_CreateUnderlineAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateUnderlineAnnot";

Page_CreateSquigglyAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateSquigglyAnnot";

Page_CreateStrikeOutAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateStrikeOutAnnot";

Page_CreatePopupAnnot :: (page: Page, rect: Rect, parent: Annotation) -> Annotation #foreign libhpdf "HPDF_Page_CreatePopupAnnot";

Page_CreateStampAnnot :: (page: Page, rect: Rect, name: StampAnnotName, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateStampAnnot";

Page_CreateProjectionAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateProjectionAnnot";

Page_CreateSquareAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateSquareAnnot";

Page_CreateCircleAnnot :: (page: Page, rect: Rect, text: *u8, encoder: Encoder) -> Annotation #foreign libhpdf "HPDF_Page_CreateCircleAnnot";

LinkAnnot_SetHighlightMode :: (annot: Annotation, mode: AnnotHighlightMode) -> STATUS #foreign libhpdf "HPDF_LinkAnnot_SetHighlightMode";

LinkAnnot_SetJavaScript :: (annot: Annotation, javascript: JavaScript) -> STATUS #foreign libhpdf "HPDF_LinkAnnot_SetJavaScript";

LinkAnnot_SetBorderStyle :: (annot: Annotation, width: REAL, dash_on: UINT16, dash_off: UINT16) -> STATUS #foreign libhpdf "HPDF_LinkAnnot_SetBorderStyle";

TextAnnot_SetIcon :: (annot: Annotation, icon: AnnotIcon) -> STATUS #foreign libhpdf "HPDF_TextAnnot_SetIcon";

TextAnnot_SetOpened :: (annot: Annotation, opened: BOOL) -> STATUS #foreign libhpdf "HPDF_TextAnnot_SetOpened";

Annot_SetRGBColor :: (annot: Annotation, color: RGBColor) -> STATUS #foreign libhpdf "HPDF_Annot_SetRGBColor";

Annot_SetCMYKColor :: (annot: Annotation, color: CMYKColor) -> STATUS #foreign libhpdf "HPDF_Annot_SetCMYKColor";

Annot_SetGrayColor :: (annot: Annotation, color: REAL) -> STATUS #foreign libhpdf "HPDF_Annot_SetGrayColor";

Annot_SetNoColor :: (annot: Annotation) -> STATUS #foreign libhpdf "HPDF_Annot_SetNoColor";

MarkupAnnot_SetTitle :: (annot: Annotation, name: *u8) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetTitle";

MarkupAnnot_SetSubject :: (annot: Annotation, name: *u8) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetSubject";

MarkupAnnot_SetCreationDate :: (annot: Annotation, value: Date) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetCreationDate";

MarkupAnnot_SetTransparency :: (annot: Annotation, value: REAL) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetTransparency";

MarkupAnnot_SetIntent :: (annot: Annotation, intent: AnnotIntent) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetIntent";

MarkupAnnot_SetPopup :: (annot: Annotation, popup: Annotation) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetPopup";

MarkupAnnot_SetRectDiff :: (annot: Annotation, rect: Rect) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetRectDiff";

MarkupAnnot_SetCloudEffect :: (annot: Annotation, cloudIntensity: INT) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetCloudEffect";

MarkupAnnot_SetInteriorRGBColor :: (annot: Annotation, color: RGBColor) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetInteriorRGBColor";

MarkupAnnot_SetInteriorCMYKColor :: (annot: Annotation, color: CMYKColor) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetInteriorCMYKColor";

MarkupAnnot_SetInteriorGrayColor :: (annot: Annotation, color: REAL) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetInteriorGrayColor";

MarkupAnnot_SetInteriorTransparent :: (annot: Annotation) -> STATUS #foreign libhpdf "HPDF_MarkupAnnot_SetInteriorTransparent";

TextMarkupAnnot_SetQuadPoints :: (annot: Annotation, lb: Point, rb: Point, rt: Point, lt: Point) -> STATUS #foreign libhpdf "HPDF_TextMarkupAnnot_SetQuadPoints";

Annot_Set3DView :: (mmgr: MMgr, annot: Annotation, annot3d: Annotation, view: Dict) -> STATUS #foreign libhpdf "HPDF_Annot_Set3DView";

PopupAnnot_SetOpened :: (annot: Annotation, opened: BOOL) -> STATUS #foreign libhpdf "HPDF_PopupAnnot_SetOpened";

FreeTextAnnot_SetLineEndingStyle :: (annot: Annotation, startStyle: LineAnnotEndingStyle, endStyle: LineAnnotEndingStyle) -> STATUS #foreign libhpdf "HPDF_FreeTextAnnot_SetLineEndingStyle";

FreeTextAnnot_Set3PointCalloutLine :: (annot: Annotation, startPoint: Point, kneePoint: Point, endPoint: Point) -> STATUS #foreign libhpdf "HPDF_FreeTextAnnot_Set3PointCalloutLine";

FreeTextAnnot_Set2PointCalloutLine :: (annot: Annotation, startPoint: Point, endPoint: Point) -> STATUS #foreign libhpdf "HPDF_FreeTextAnnot_Set2PointCalloutLine";

FreeTextAnnot_SetDefaultStyle :: (annot: Annotation, style: *u8) -> STATUS #foreign libhpdf "HPDF_FreeTextAnnot_SetDefaultStyle";

LineAnnot_SetPosition :: (annot: Annotation, startPoint: Point, startStyle: LineAnnotEndingStyle, endPoint: Point, endStyle: LineAnnotEndingStyle) -> STATUS #foreign libhpdf "HPDF_LineAnnot_SetPosition";

LineAnnot_SetLeader :: (annot: Annotation, leaderLen: INT, leaderExtLen: INT, leaderOffsetLen: INT) -> STATUS #foreign libhpdf "HPDF_LineAnnot_SetLeader";

LineAnnot_SetCaption :: (annot: Annotation, showCaption: BOOL, position: LineAnnotCapPosition, horzOffset: INT, vertOffset: INT) -> STATUS #foreign libhpdf "HPDF_LineAnnot_SetCaption";

Annotation_SetBorderStyle :: (annot: Annotation, subtype: BSSubtype, width: REAL, dash_on: UINT16, dash_off: UINT16, dash_phase: UINT16) -> STATUS #foreign libhpdf "HPDF_Annotation_SetBorderStyle";

ProjectionAnnot_SetExData :: (annot: Annotation, exdata: ExData) -> STATUS #foreign libhpdf "HPDF_ProjectionAnnot_SetExData";

/*--------------------------------------------------------------------------*/
/*----- 3D Measure ---------------------------------------------------------*/
Page_Create3DC3DMeasure :: (page: Page, firstanchorpoint: Point3D, textanchorpoint: Point3D) -> _3DMeasure #foreign libhpdf "HPDF_Page_Create3DC3DMeasure";

Page_CreatePD33DMeasure :: (page: Page, annotationPlaneNormal: Point3D, firstAnchorPoint: Point3D, secondAnchorPoint: Point3D, leaderLinesDirection: Point3D, measurementValuePoint: Point3D, textYDirection: Point3D, value: REAL, unitsString: *u8) -> _3DMeasure #foreign libhpdf "HPDF_Page_CreatePD33DMeasure";

_3DMeasure_SetName :: (measure: _3DMeasure, name: *u8) -> STATUS #foreign libhpdf "HPDF_3DMeasure_SetName";

_3DMeasure_SetColor :: (measure: _3DMeasure, color: RGBColor) -> STATUS #foreign libhpdf "HPDF_3DMeasure_SetColor";

_3DMeasure_SetTextSize :: (measure: _3DMeasure, textsize: REAL) -> STATUS #foreign libhpdf "HPDF_3DMeasure_SetTextSize";

_3DC3DMeasure_SetTextBoxSize :: (measure: _3DMeasure, x: INT32, y: INT32) -> STATUS #foreign libhpdf "HPDF_3DC3DMeasure_SetTextBoxSize";

_3DC3DMeasure_SetText :: (measure: _3DMeasure, text: *u8, encoder: Encoder) -> STATUS #foreign libhpdf "HPDF_3DC3DMeasure_SetText";

_3DC3DMeasure_SetProjectionAnotation :: (measure: _3DMeasure, projectionanotation: Annotation) -> STATUS #foreign libhpdf "HPDF_3DC3DMeasure_SetProjectionAnotation";

/*--------------------------------------------------------------------------*/
/*----- External Data ---------------------------------------------------------*/
Page_Create3DAnnotExData :: (page: Page) -> ExData #foreign libhpdf "HPDF_Page_Create3DAnnotExData";

_3DAnnotExData_Set3DMeasurement :: (exdata: ExData, measure: _3DMeasure) -> STATUS #foreign libhpdf "HPDF_3DAnnotExData_Set3DMeasurement";

/*--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------*/
/*----- 3D View ---------------------------------------------------------*/
Page_Create3DView :: (page: Page, u3d: U3D, annot3d: Annotation, name: *u8) -> Dict #foreign libhpdf "HPDF_Page_Create3DView";

_3DView_Add3DC3DMeasure :: (view: Dict, measure: _3DMeasure) -> STATUS #foreign libhpdf "HPDF_3DView_Add3DC3DMeasure";

/*--------------------------------------------------------------------------*/
/*----- image data ---------------------------------------------------------*/
LoadPngImageFromMem :: (pdf: Doc, buffer: *BYTE, size: UINT) -> Image #foreign libhpdf "HPDF_LoadPngImageFromMem";

LoadPngImageFromFile :: (pdf: Doc, filename: *u8) -> Image #foreign libhpdf "HPDF_LoadPngImageFromFile";

LoadPngImageFromFile2 :: (pdf: Doc, filename: *u8) -> Image #foreign libhpdf "HPDF_LoadPngImageFromFile2";

LoadJpegImageFromFile :: (pdf: Doc, filename: *u8) -> Image #foreign libhpdf "HPDF_LoadJpegImageFromFile";

LoadJpegImageFromMem :: (pdf: Doc, buffer: *BYTE, size: UINT) -> Image #foreign libhpdf "HPDF_LoadJpegImageFromMem";

LoadU3DFromFile :: (pdf: Doc, filename: *u8) -> Image #foreign libhpdf "HPDF_LoadU3DFromFile";

LoadU3DFromMem :: (pdf: Doc, buffer: *BYTE, size: UINT) -> Image #foreign libhpdf "HPDF_LoadU3DFromMem";

Image_LoadRaw1BitImageFromMem :: (pdf: Doc, buf: *BYTE, width: UINT, height: UINT, line_width: UINT, black_is1: BOOL, top_is_first: BOOL) -> Image #foreign libhpdf "HPDF_Image_LoadRaw1BitImageFromMem";

LoadRawImageFromFile :: (pdf: Doc, filename: *u8, width: UINT, height: UINT, color_space: ColorSpace) -> Image #foreign libhpdf "HPDF_LoadRawImageFromFile";

LoadRawImageFromMem :: (pdf: Doc, buf: *BYTE, width: UINT, height: UINT, color_space: ColorSpace, bits_per_component: UINT) -> Image #foreign libhpdf "HPDF_LoadRawImageFromMem";

Image_AddSMask :: (image: Image, smask: Image) -> STATUS #foreign libhpdf "HPDF_Image_AddSMask";

Image_GetSize :: (image: Image) -> Point #foreign libhpdf "HPDF_Image_GetSize";

Image_GetSize2 :: (image: Image, size: *Point) -> STATUS #foreign libhpdf "HPDF_Image_GetSize2";

Image_GetWidth :: (image: Image) -> UINT #foreign libhpdf "HPDF_Image_GetWidth";

Image_GetHeight :: (image: Image) -> UINT #foreign libhpdf "HPDF_Image_GetHeight";

Image_GetBitsPerComponent :: (image: Image) -> UINT #foreign libhpdf "HPDF_Image_GetBitsPerComponent";

Image_GetColorSpace :: (image: Image) -> *u8 #foreign libhpdf "HPDF_Image_GetColorSpace";

Image_SetColorMask :: (image: Image, rmin: UINT, rmax: UINT, gmin: UINT, gmax: UINT, bmin: UINT, bmax: UINT) -> STATUS #foreign libhpdf "HPDF_Image_SetColorMask";

Image_SetMaskImage :: (image: Image, mask_image: Image) -> STATUS #foreign libhpdf "HPDF_Image_SetMaskImage";

/*--------------------------------------------------------------------------*/
/*----- info dictionary ----------------------------------------------------*/
SetInfoAttr :: (pdf: Doc, type: InfoType, value: *u8) -> STATUS #foreign libhpdf "HPDF_SetInfoAttr";

GetInfoAttr :: (pdf: Doc, type: InfoType) -> *u8 #foreign libhpdf "HPDF_GetInfoAttr";

SetInfoDateAttr :: (pdf: Doc, type: InfoType, value: Date) -> STATUS #foreign libhpdf "HPDF_SetInfoDateAttr";

/*--------------------------------------------------------------------------*/
/*----- encryption ---------------------------------------------------------*/
SetPassword :: (pdf: Doc, owner_passwd: *u8, user_passwd: *u8) -> STATUS #foreign libhpdf "HPDF_SetPassword";

SetPermission :: (pdf: Doc, permission: UINT) -> STATUS #foreign libhpdf "HPDF_SetPermission";

SetEncryptionMode :: (pdf: Doc, mode: EncryptMode, key_len: UINT) -> STATUS #foreign libhpdf "HPDF_SetEncryptionMode";

/*--------------------------------------------------------------------------*/
/*----- compression --------------------------------------------------------*/
SetCompressionMode :: (pdf: Doc, mode: UINT) -> STATUS #foreign libhpdf "HPDF_SetCompressionMode";

/*--------------------------------------------------------------------------*/
/*----- font ---------------------------------------------------------------*/
Font_GetFontName :: (font: Font) -> *u8 #foreign libhpdf "HPDF_Font_GetFontName";

Font_GetEncodingName :: (font: Font) -> *u8 #foreign libhpdf "HPDF_Font_GetEncodingName";

Font_GetUnicodeWidth :: (font: Font, code: UNICODE) -> INT #foreign libhpdf "HPDF_Font_GetUnicodeWidth";

Font_GetBBox :: (font: Font) -> Box #foreign libhpdf "HPDF_Font_GetBBox";

Font_GetAscent :: (font: Font) -> INT #foreign libhpdf "HPDF_Font_GetAscent";

Font_GetDescent :: (font: Font) -> INT #foreign libhpdf "HPDF_Font_GetDescent";

Font_GetXHeight :: (font: Font) -> UINT #foreign libhpdf "HPDF_Font_GetXHeight";

Font_GetCapHeight :: (font: Font) -> UINT #foreign libhpdf "HPDF_Font_GetCapHeight";

Font_TextWidth :: (font: Font, text: *BYTE, len: UINT) -> TextWidth #foreign libhpdf "HPDF_Font_TextWidth";

Font_MeasureText :: (font: Font, text: *BYTE, len: UINT, width: REAL, font_size: REAL, char_space: REAL, word_space: REAL, wordwrap: BOOL, real_width: *REAL) -> UINT #foreign libhpdf "HPDF_Font_MeasureText";

/*--------------------------------------------------------------------------*/
/*----- attachments -------------------------------------------------------*/
AttachFile :: (pdf: Doc, file: *u8) -> EmbeddedFile #foreign libhpdf "HPDF_AttachFile";

/*--------------------------------------------------------------------------*/
/*----- extended graphics state --------------------------------------------*/
CreateExtGState :: (pdf: Doc) -> ExtGState #foreign libhpdf "HPDF_CreateExtGState";

ExtGState_SetAlphaStroke :: (ext_gstate: ExtGState, value: REAL) -> STATUS #foreign libhpdf "HPDF_ExtGState_SetAlphaStroke";

ExtGState_SetAlphaFill :: (ext_gstate: ExtGState, value: REAL) -> STATUS #foreign libhpdf "HPDF_ExtGState_SetAlphaFill";

ExtGState_SetBlendMode :: (ext_gstate: ExtGState, mode: BlendMode) -> STATUS #foreign libhpdf "HPDF_ExtGState_SetBlendMode";

/*--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------*/
Page_TextWidth :: (page: Page, text: *u8) -> REAL #foreign libhpdf "HPDF_Page_TextWidth";

Page_MeasureText :: (page: Page, text: *u8, width: REAL, wordwrap: BOOL, real_width: *REAL) -> UINT #foreign libhpdf "HPDF_Page_MeasureText";

Page_GetWidth :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetWidth";

Page_GetHeight :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetHeight";

Page_GetGMode :: (page: Page) -> UINT16 #foreign libhpdf "HPDF_Page_GetGMode";

Page_GetCurrentPos :: (page: Page) -> Point #foreign libhpdf "HPDF_Page_GetCurrentPos";

Page_GetCurrentPos2 :: (page: Page, pos: *Point) -> STATUS #foreign libhpdf "HPDF_Page_GetCurrentPos2";

Page_GetCurrentTextPos :: (page: Page) -> Point #foreign libhpdf "HPDF_Page_GetCurrentTextPos";

Page_GetCurrentTextPos2 :: (page: Page, pos: *Point) -> STATUS #foreign libhpdf "HPDF_Page_GetCurrentTextPos2";

Page_GetCurrentFont :: (page: Page) -> Font #foreign libhpdf "HPDF_Page_GetCurrentFont";

Page_GetCurrentFontSize :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetCurrentFontSize";

Page_GetTransMatrix :: (page: Page) -> TransMatrix #foreign libhpdf "HPDF_Page_GetTransMatrix";

Page_GetLineWidth :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetLineWidth";

Page_GetLineCap :: (page: Page) -> LineCap #foreign libhpdf "HPDF_Page_GetLineCap";

Page_GetLineJoin :: (page: Page) -> LineJoin #foreign libhpdf "HPDF_Page_GetLineJoin";

Page_GetMiterLimit :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetMiterLimit";

Page_GetDash :: (page: Page) -> DashMode #foreign libhpdf "HPDF_Page_GetDash";

Page_GetFlat :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetFlat";

Page_GetCharSpace :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetCharSpace";

Page_GetWordSpace :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetWordSpace";

Page_GetHorizontalScalling :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetHorizontalScalling";

Page_GetTextLeading :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetTextLeading";

Page_GetTextRenderingMode :: (page: Page) -> TextRenderingMode #foreign libhpdf "HPDF_Page_GetTextRenderingMode";

/* This function is obsolete. Use HPDF_Page_GetTextRise.  */
Page_GetTextRaise :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetTextRaise";

Page_GetTextRise :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetTextRise";

Page_GetRGBFill :: (page: Page) -> RGBColor #foreign libhpdf "HPDF_Page_GetRGBFill";

Page_GetRGBStroke :: (page: Page) -> RGBColor #foreign libhpdf "HPDF_Page_GetRGBStroke";

Page_GetCMYKFill :: (page: Page) -> CMYKColor #foreign libhpdf "HPDF_Page_GetCMYKFill";

Page_GetCMYKStroke :: (page: Page) -> CMYKColor #foreign libhpdf "HPDF_Page_GetCMYKStroke";

Page_GetGrayFill :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetGrayFill";

Page_GetGrayStroke :: (page: Page) -> REAL #foreign libhpdf "HPDF_Page_GetGrayStroke";

Page_GetStrokingColorSpace :: (page: Page) -> ColorSpace #foreign libhpdf "HPDF_Page_GetStrokingColorSpace";

Page_GetFillingColorSpace :: (page: Page) -> ColorSpace #foreign libhpdf "HPDF_Page_GetFillingColorSpace";

Page_GetTextMatrix :: (page: Page) -> TransMatrix #foreign libhpdf "HPDF_Page_GetTextMatrix";

Page_GetGStateDepth :: (page: Page) -> UINT #foreign libhpdf "HPDF_Page_GetGStateDepth";

/* w */
Page_SetLineWidth :: (page: Page, line_width: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetLineWidth";

/* J */
Page_SetLineCap :: (page: Page, line_cap: LineCap) -> STATUS #foreign libhpdf "HPDF_Page_SetLineCap";

/* j */
Page_SetLineJoin :: (page: Page, line_join: LineJoin) -> STATUS #foreign libhpdf "HPDF_Page_SetLineJoin";

/* M */
Page_SetMiterLimit :: (page: Page, miter_limit: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetMiterLimit";

/* d */
Page_SetDash :: (page: Page, dash_ptn: *REAL, num_param: UINT, phase: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetDash";

/* i */
Page_SetFlat :: (page: Page, flatness: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetFlat";

/* gs */
Page_SetExtGState :: (page: Page, ext_gstate: ExtGState) -> STATUS #foreign libhpdf "HPDF_Page_SetExtGState";

/* sh */
Page_SetShading :: (page: Page, shading: Shading) -> STATUS #foreign libhpdf "HPDF_Page_SetShading";

/* q */
Page_GSave :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_GSave";

/* Q */
Page_GRestore :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_GRestore";

/* cm */
Page_Concat :: (page: Page, a: REAL, b: REAL, c: REAL, d: REAL, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_Concat";

/* m */
Page_MoveTo :: (page: Page, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_MoveTo";

/* l */
Page_LineTo :: (page: Page, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_LineTo";

/* c */
Page_CurveTo :: (page: Page, x1: REAL, y1: REAL, x2: REAL, y2: REAL, x3: REAL, y3: REAL) -> STATUS #foreign libhpdf "HPDF_Page_CurveTo";

/* v */
Page_CurveTo2 :: (page: Page, x2: REAL, y2: REAL, x3: REAL, y3: REAL) -> STATUS #foreign libhpdf "HPDF_Page_CurveTo2";

/* y */
Page_CurveTo3 :: (page: Page, x1: REAL, y1: REAL, x3: REAL, y3: REAL) -> STATUS #foreign libhpdf "HPDF_Page_CurveTo3";

/* h */
Page_ClosePath :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_ClosePath";

/* re */
Page_Rectangle :: (page: Page, x: REAL, y: REAL, width: REAL, height: REAL) -> STATUS #foreign libhpdf "HPDF_Page_Rectangle";

/* S */
Page_Stroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_Stroke";

/* s */
Page_ClosePathStroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_ClosePathStroke";

/* f */
Page_Fill :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_Fill";

/* f* */
Page_Eofill :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_Eofill";

/* B */
Page_FillStroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_FillStroke";

/* B* */
Page_EofillStroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_EofillStroke";

/* b */
Page_ClosePathFillStroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_ClosePathFillStroke";

/* b* */
Page_ClosePathEofillStroke :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_ClosePathEofillStroke";

/* n */
Page_EndPath :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_EndPath";

/* W */
Page_Clip :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_Clip";

/* W* */
Page_Eoclip :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_Eoclip";

/* BT */
Page_BeginText :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_BeginText";

/* ET */
Page_EndText :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_EndText";

/* Tc */
Page_SetCharSpace :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetCharSpace";

/* Tw */
Page_SetWordSpace :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetWordSpace";

/* Tz */
Page_SetHorizontalScalling :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetHorizontalScalling";

/* TL */
Page_SetTextLeading :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetTextLeading";

/* Tf */
Page_SetFontAndSize :: (page: Page, font: Font, size: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetFontAndSize";

/* Tr */
Page_SetTextRenderingMode :: (page: Page, mode: TextRenderingMode) -> STATUS #foreign libhpdf "HPDF_Page_SetTextRenderingMode";

/* Ts */
Page_SetTextRise :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetTextRise";

/* This function is obsolete. Use HPDF_Page_SetTextRise.  */
Page_SetTextRaise :: (page: Page, value: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetTextRaise";

/* Td */
Page_MoveTextPos :: (page: Page, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_MoveTextPos";

/* TD */
Page_MoveTextPos2 :: (page: Page, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_MoveTextPos2";

/* Tm */
Page_SetTextMatrix :: (page: Page, a: REAL, b: REAL, c: REAL, d: REAL, x: REAL, y: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetTextMatrix";

/* T* */
Page_MoveToNextLine :: (page: Page) -> STATUS #foreign libhpdf "HPDF_Page_MoveToNextLine";

/* Tj */
Page_ShowText :: (page: Page, text: *u8) -> STATUS #foreign libhpdf "HPDF_Page_ShowText";

/* ' */
Page_ShowTextNextLine :: (page: Page, text: *u8) -> STATUS #foreign libhpdf "HPDF_Page_ShowTextNextLine";

/* " */
Page_ShowTextNextLineEx :: (page: Page, word_space: REAL, char_space: REAL, text: *u8) -> STATUS #foreign libhpdf "HPDF_Page_ShowTextNextLineEx";

/* g */
Page_SetGrayFill :: (page: Page, gray: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetGrayFill";

/* G */
Page_SetGrayStroke :: (page: Page, gray: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetGrayStroke";

/* rg */
Page_SetRGBFill :: (page: Page, r: REAL, g: REAL, b: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetRGBFill";

/* RG */
Page_SetRGBStroke :: (page: Page, r: REAL, g: REAL, b: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetRGBStroke";

/* k */
Page_SetCMYKFill :: (page: Page, c: REAL, m: REAL, y: REAL, k: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetCMYKFill";

/* K */
Page_SetCMYKStroke :: (page: Page, c: REAL, m: REAL, y: REAL, k: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetCMYKStroke";

/* Notes for docs:
* - ShadingType must be HPDF_SHADING_FREE_FORM_TRIANGLE_MESH (the only
*   defined option...)
* - colorSpace must be HPDF_CS_DEVICE_RGB for now.
*/
Shading_New :: (pdf: Doc, type: ShadingType, colorSpace: ColorSpace, xMin: REAL, xMax: REAL, yMin: REAL, yMax: REAL) -> Shading #foreign libhpdf "HPDF_Shading_New";

Shading_AddVertexRGB :: (shading: Shading, edgeFlag: Shading_FreeFormTriangleMeshEdgeFlag, x: REAL, y: REAL, r: UINT8, g: UINT8, b: UINT8) -> STATUS #foreign libhpdf "HPDF_Shading_AddVertexRGB";

/* Do */
Page_ExecuteXObject :: (page: Page, obj: XObject) -> STATUS #foreign libhpdf "HPDF_Page_ExecuteXObject";

/*--- Content streams ----------------------------------------------------*/
Page_New_Content_Stream :: (page: Page, new_stream: *Dict) -> STATUS #foreign libhpdf "HPDF_Page_New_Content_Stream";

Page_Insert_Shared_Content_Stream :: (page: Page, shared_stream: Dict) -> STATUS #foreign libhpdf "HPDF_Page_Insert_Shared_Content_Stream";

/* BX --not implemented yet */
/* EX --not implemented yet */
Page_DrawImage :: (page: Page, image: Image, x: REAL, y: REAL, width: REAL, height: REAL) -> STATUS #foreign libhpdf "HPDF_Page_DrawImage";

Page_Circle :: (page: Page, x: REAL, y: REAL, ray: REAL) -> STATUS #foreign libhpdf "HPDF_Page_Circle";

Page_Ellipse :: (page: Page, x: REAL, y: REAL, xray: REAL, yray: REAL) -> STATUS #foreign libhpdf "HPDF_Page_Ellipse";

Page_Arc :: (page: Page, x: REAL, y: REAL, ray: REAL, ang1: REAL, ang2: REAL) -> STATUS #foreign libhpdf "HPDF_Page_Arc";

Page_TextOut :: (page: Page, xpos: REAL, ypos: REAL, text: *u8) -> STATUS #foreign libhpdf "HPDF_Page_TextOut";

Page_TextRect :: (page: Page, left: REAL, top: REAL, right: REAL, bottom: REAL, text: *u8, align: TextAlignment, len: *UINT) -> STATUS #foreign libhpdf "HPDF_Page_TextRect";

Page_SetSlideShow :: (page: Page, type: TransitionStyle, disp_time: REAL, trans_time: REAL) -> STATUS #foreign libhpdf "HPDF_Page_SetSlideShow";

ICC_LoadIccFromMem :: (pdf: Doc, mmgr: MMgr, iccdata: Stream, xref: Xref, numcomponent: s32) -> OutputIntent #foreign libhpdf "HPDF_ICC_LoadIccFromMem";

LoadIccProfileFromFile :: (pdf: Doc, icc_file_name: *u8, numcomponent: s32) -> OutputIntent #foreign libhpdf "HPDF_LoadIccProfileFromFile";

#scope_file

#import "Basic"; // For assert


#run {
    {
        instance: Point;
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 0, "Point.x has unexpected offset % instead of 0", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(Point.x)) == 4, "Point.x has unexpected size % instead of 4", size_of(type_of(Point.x)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 4, "Point.y has unexpected offset % instead of 4", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(Point.y)) == 4, "Point.y has unexpected size % instead of 4", size_of(type_of(Point.y)));
        assert(size_of(Point) == 8, "Point has size % instead of 8", size_of(Point));
    }

    {
        instance: Rect;
        assert(((cast(*void)(*instance.left)) - cast(*void)(*instance)) == 0, "Rect.left has unexpected offset % instead of 0", ((cast(*void)(*instance.left)) - cast(*void)(*instance)));
        assert(size_of(type_of(Rect.left)) == 4, "Rect.left has unexpected size % instead of 4", size_of(type_of(Rect.left)));
        assert(((cast(*void)(*instance.bottom)) - cast(*void)(*instance)) == 4, "Rect.bottom has unexpected offset % instead of 4", ((cast(*void)(*instance.bottom)) - cast(*void)(*instance)));
        assert(size_of(type_of(Rect.bottom)) == 4, "Rect.bottom has unexpected size % instead of 4", size_of(type_of(Rect.bottom)));
        assert(((cast(*void)(*instance.right)) - cast(*void)(*instance)) == 8, "Rect.right has unexpected offset % instead of 8", ((cast(*void)(*instance.right)) - cast(*void)(*instance)));
        assert(size_of(type_of(Rect.right)) == 4, "Rect.right has unexpected size % instead of 4", size_of(type_of(Rect.right)));
        assert(((cast(*void)(*instance.top)) - cast(*void)(*instance)) == 12, "Rect.top has unexpected offset % instead of 12", ((cast(*void)(*instance.top)) - cast(*void)(*instance)));
        assert(size_of(type_of(Rect.top)) == 4, "Rect.top has unexpected size % instead of 4", size_of(type_of(Rect.top)));
        assert(size_of(Rect) == 16, "Rect has size % instead of 16", size_of(Rect));
    }

    {
        instance: Point3D;
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 0, "Point3D.x has unexpected offset % instead of 0", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(Point3D.x)) == 4, "Point3D.x has unexpected size % instead of 4", size_of(type_of(Point3D.x)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 4, "Point3D.y has unexpected offset % instead of 4", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(Point3D.y)) == 4, "Point3D.y has unexpected size % instead of 4", size_of(type_of(Point3D.y)));
        assert(((cast(*void)(*instance.z)) - cast(*void)(*instance)) == 8, "Point3D.z has unexpected offset % instead of 8", ((cast(*void)(*instance.z)) - cast(*void)(*instance)));
        assert(size_of(type_of(Point3D.z)) == 4, "Point3D.z has unexpected size % instead of 4", size_of(type_of(Point3D.z)));
        assert(size_of(Point3D) == 12, "Point3D has size % instead of 12", size_of(Point3D));
    }

    {
        instance: Date;
        assert(((cast(*void)(*instance.year)) - cast(*void)(*instance)) == 0, "Date.year has unexpected offset % instead of 0", ((cast(*void)(*instance.year)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.year)) == 4, "Date.year has unexpected size % instead of 4", size_of(type_of(Date.year)));
        assert(((cast(*void)(*instance.month)) - cast(*void)(*instance)) == 4, "Date.month has unexpected offset % instead of 4", ((cast(*void)(*instance.month)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.month)) == 4, "Date.month has unexpected size % instead of 4", size_of(type_of(Date.month)));
        assert(((cast(*void)(*instance.day)) - cast(*void)(*instance)) == 8, "Date.day has unexpected offset % instead of 8", ((cast(*void)(*instance.day)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.day)) == 4, "Date.day has unexpected size % instead of 4", size_of(type_of(Date.day)));
        assert(((cast(*void)(*instance.hour)) - cast(*void)(*instance)) == 12, "Date.hour has unexpected offset % instead of 12", ((cast(*void)(*instance.hour)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.hour)) == 4, "Date.hour has unexpected size % instead of 4", size_of(type_of(Date.hour)));
        assert(((cast(*void)(*instance.minutes)) - cast(*void)(*instance)) == 16, "Date.minutes has unexpected offset % instead of 16", ((cast(*void)(*instance.minutes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.minutes)) == 4, "Date.minutes has unexpected size % instead of 4", size_of(type_of(Date.minutes)));
        assert(((cast(*void)(*instance.seconds)) - cast(*void)(*instance)) == 20, "Date.seconds has unexpected offset % instead of 20", ((cast(*void)(*instance.seconds)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.seconds)) == 4, "Date.seconds has unexpected size % instead of 4", size_of(type_of(Date.seconds)));
        assert(((cast(*void)(*instance.ind)) - cast(*void)(*instance)) == 24, "Date.ind has unexpected offset % instead of 24", ((cast(*void)(*instance.ind)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.ind)) == 1, "Date.ind has unexpected size % instead of 1", size_of(type_of(Date.ind)));
        assert(((cast(*void)(*instance.off_hour)) - cast(*void)(*instance)) == 28, "Date.off_hour has unexpected offset % instead of 28", ((cast(*void)(*instance.off_hour)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.off_hour)) == 4, "Date.off_hour has unexpected size % instead of 4", size_of(type_of(Date.off_hour)));
        assert(((cast(*void)(*instance.off_minutes)) - cast(*void)(*instance)) == 32, "Date.off_minutes has unexpected offset % instead of 32", ((cast(*void)(*instance.off_minutes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Date.off_minutes)) == 4, "Date.off_minutes has unexpected size % instead of 4", size_of(type_of(Date.off_minutes)));
        assert(size_of(Date) == 36, "Date has size % instead of 36", size_of(Date));
    }

    {
        instance: TextWidth;
        assert(((cast(*void)(*instance.numchars)) - cast(*void)(*instance)) == 0, "TextWidth.numchars has unexpected offset % instead of 0", ((cast(*void)(*instance.numchars)) - cast(*void)(*instance)));
        assert(size_of(type_of(TextWidth.numchars)) == 4, "TextWidth.numchars has unexpected size % instead of 4", size_of(type_of(TextWidth.numchars)));
        assert(((cast(*void)(*instance.numwords)) - cast(*void)(*instance)) == 4, "TextWidth.numwords has unexpected offset % instead of 4", ((cast(*void)(*instance.numwords)) - cast(*void)(*instance)));
        assert(size_of(type_of(TextWidth.numwords)) == 4, "TextWidth.numwords has unexpected size % instead of 4", size_of(type_of(TextWidth.numwords)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 8, "TextWidth.width has unexpected offset % instead of 8", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(TextWidth.width)) == 4, "TextWidth.width has unexpected size % instead of 4", size_of(type_of(TextWidth.width)));
        assert(((cast(*void)(*instance.numspace)) - cast(*void)(*instance)) == 12, "TextWidth.numspace has unexpected offset % instead of 12", ((cast(*void)(*instance.numspace)) - cast(*void)(*instance)));
        assert(size_of(type_of(TextWidth.numspace)) == 4, "TextWidth.numspace has unexpected size % instead of 4", size_of(type_of(TextWidth.numspace)));
        assert(size_of(TextWidth) == 16, "TextWidth has size % instead of 16", size_of(TextWidth));
    }

    {
        instance: DashMode;
        assert(((cast(*void)(*instance.ptn)) - cast(*void)(*instance)) == 0, "DashMode.ptn has unexpected offset % instead of 0", ((cast(*void)(*instance.ptn)) - cast(*void)(*instance)));
        assert(size_of(type_of(DashMode.ptn)) == 32, "DashMode.ptn has unexpected size % instead of 32", size_of(type_of(DashMode.ptn)));
        assert(((cast(*void)(*instance.num_ptn)) - cast(*void)(*instance)) == 32, "DashMode.num_ptn has unexpected offset % instead of 32", ((cast(*void)(*instance.num_ptn)) - cast(*void)(*instance)));
        assert(size_of(type_of(DashMode.num_ptn)) == 4, "DashMode.num_ptn has unexpected size % instead of 4", size_of(type_of(DashMode.num_ptn)));
        assert(((cast(*void)(*instance.phase)) - cast(*void)(*instance)) == 36, "DashMode.phase has unexpected offset % instead of 36", ((cast(*void)(*instance.phase)) - cast(*void)(*instance)));
        assert(size_of(type_of(DashMode.phase)) == 4, "DashMode.phase has unexpected size % instead of 4", size_of(type_of(DashMode.phase)));
        assert(size_of(DashMode) == 40, "DashMode has size % instead of 40", size_of(DashMode));
    }

    {
        instance: TransMatrix;
        assert(((cast(*void)(*instance.a)) - cast(*void)(*instance)) == 0, "TransMatrix.a has unexpected offset % instead of 0", ((cast(*void)(*instance.a)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.a)) == 4, "TransMatrix.a has unexpected size % instead of 4", size_of(type_of(TransMatrix.a)));
        assert(((cast(*void)(*instance.b)) - cast(*void)(*instance)) == 4, "TransMatrix.b has unexpected offset % instead of 4", ((cast(*void)(*instance.b)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.b)) == 4, "TransMatrix.b has unexpected size % instead of 4", size_of(type_of(TransMatrix.b)));
        assert(((cast(*void)(*instance.c)) - cast(*void)(*instance)) == 8, "TransMatrix.c has unexpected offset % instead of 8", ((cast(*void)(*instance.c)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.c)) == 4, "TransMatrix.c has unexpected size % instead of 4", size_of(type_of(TransMatrix.c)));
        assert(((cast(*void)(*instance.d)) - cast(*void)(*instance)) == 12, "TransMatrix.d has unexpected offset % instead of 12", ((cast(*void)(*instance.d)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.d)) == 4, "TransMatrix.d has unexpected size % instead of 4", size_of(type_of(TransMatrix.d)));
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 16, "TransMatrix.x has unexpected offset % instead of 16", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.x)) == 4, "TransMatrix.x has unexpected size % instead of 4", size_of(type_of(TransMatrix.x)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 20, "TransMatrix.y has unexpected offset % instead of 20", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(TransMatrix.y)) == 4, "TransMatrix.y has unexpected size % instead of 4", size_of(type_of(TransMatrix.y)));
        assert(size_of(TransMatrix) == 24, "TransMatrix has size % instead of 24", size_of(TransMatrix));
    }

    {
        instance: _3DMatrix;
        assert(((cast(*void)(*instance.a)) - cast(*void)(*instance)) == 0, "_3DMatrix.a has unexpected offset % instead of 0", ((cast(*void)(*instance.a)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.a)) == 4, "_3DMatrix.a has unexpected size % instead of 4", size_of(type_of(_3DMatrix.a)));
        assert(((cast(*void)(*instance.b)) - cast(*void)(*instance)) == 4, "_3DMatrix.b has unexpected offset % instead of 4", ((cast(*void)(*instance.b)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.b)) == 4, "_3DMatrix.b has unexpected size % instead of 4", size_of(type_of(_3DMatrix.b)));
        assert(((cast(*void)(*instance.c)) - cast(*void)(*instance)) == 8, "_3DMatrix.c has unexpected offset % instead of 8", ((cast(*void)(*instance.c)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.c)) == 4, "_3DMatrix.c has unexpected size % instead of 4", size_of(type_of(_3DMatrix.c)));
        assert(((cast(*void)(*instance.d)) - cast(*void)(*instance)) == 12, "_3DMatrix.d has unexpected offset % instead of 12", ((cast(*void)(*instance.d)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.d)) == 4, "_3DMatrix.d has unexpected size % instead of 4", size_of(type_of(_3DMatrix.d)));
        assert(((cast(*void)(*instance.e)) - cast(*void)(*instance)) == 16, "_3DMatrix.e has unexpected offset % instead of 16", ((cast(*void)(*instance.e)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.e)) == 4, "_3DMatrix.e has unexpected size % instead of 4", size_of(type_of(_3DMatrix.e)));
        assert(((cast(*void)(*instance.f)) - cast(*void)(*instance)) == 20, "_3DMatrix.f has unexpected offset % instead of 20", ((cast(*void)(*instance.f)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.f)) == 4, "_3DMatrix.f has unexpected size % instead of 4", size_of(type_of(_3DMatrix.f)));
        assert(((cast(*void)(*instance.g)) - cast(*void)(*instance)) == 24, "_3DMatrix.g has unexpected offset % instead of 24", ((cast(*void)(*instance.g)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.g)) == 4, "_3DMatrix.g has unexpected size % instead of 4", size_of(type_of(_3DMatrix.g)));
        assert(((cast(*void)(*instance.h)) - cast(*void)(*instance)) == 28, "_3DMatrix.h has unexpected offset % instead of 28", ((cast(*void)(*instance.h)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.h)) == 4, "_3DMatrix.h has unexpected size % instead of 4", size_of(type_of(_3DMatrix.h)));
        assert(((cast(*void)(*instance.i)) - cast(*void)(*instance)) == 32, "_3DMatrix.i has unexpected offset % instead of 32", ((cast(*void)(*instance.i)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.i)) == 4, "_3DMatrix.i has unexpected size % instead of 4", size_of(type_of(_3DMatrix.i)));
        assert(((cast(*void)(*instance.tx)) - cast(*void)(*instance)) == 36, "_3DMatrix.tx has unexpected offset % instead of 36", ((cast(*void)(*instance.tx)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.tx)) == 4, "_3DMatrix.tx has unexpected size % instead of 4", size_of(type_of(_3DMatrix.tx)));
        assert(((cast(*void)(*instance.ty)) - cast(*void)(*instance)) == 40, "_3DMatrix.ty has unexpected offset % instead of 40", ((cast(*void)(*instance.ty)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.ty)) == 4, "_3DMatrix.ty has unexpected size % instead of 4", size_of(type_of(_3DMatrix.ty)));
        assert(((cast(*void)(*instance.tz)) - cast(*void)(*instance)) == 44, "_3DMatrix.tz has unexpected offset % instead of 44", ((cast(*void)(*instance.tz)) - cast(*void)(*instance)));
        assert(size_of(type_of(_3DMatrix.tz)) == 4, "_3DMatrix.tz has unexpected size % instead of 4", size_of(type_of(_3DMatrix.tz)));
        assert(size_of(_3DMatrix) == 48, "_3DMatrix has size % instead of 48", size_of(_3DMatrix));
    }

    {
        instance: RGBColor;
        assert(((cast(*void)(*instance.r)) - cast(*void)(*instance)) == 0, "RGBColor.r has unexpected offset % instead of 0", ((cast(*void)(*instance.r)) - cast(*void)(*instance)));
        assert(size_of(type_of(RGBColor.r)) == 4, "RGBColor.r has unexpected size % instead of 4", size_of(type_of(RGBColor.r)));
        assert(((cast(*void)(*instance.g)) - cast(*void)(*instance)) == 4, "RGBColor.g has unexpected offset % instead of 4", ((cast(*void)(*instance.g)) - cast(*void)(*instance)));
        assert(size_of(type_of(RGBColor.g)) == 4, "RGBColor.g has unexpected size % instead of 4", size_of(type_of(RGBColor.g)));
        assert(((cast(*void)(*instance.b)) - cast(*void)(*instance)) == 8, "RGBColor.b has unexpected offset % instead of 8", ((cast(*void)(*instance.b)) - cast(*void)(*instance)));
        assert(size_of(type_of(RGBColor.b)) == 4, "RGBColor.b has unexpected size % instead of 4", size_of(type_of(RGBColor.b)));
        assert(size_of(RGBColor) == 12, "RGBColor has size % instead of 12", size_of(RGBColor));
    }

    {
        instance: CMYKColor;
        assert(((cast(*void)(*instance.c)) - cast(*void)(*instance)) == 0, "CMYKColor.c has unexpected offset % instead of 0", ((cast(*void)(*instance.c)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMYKColor.c)) == 4, "CMYKColor.c has unexpected size % instead of 4", size_of(type_of(CMYKColor.c)));
        assert(((cast(*void)(*instance.m)) - cast(*void)(*instance)) == 4, "CMYKColor.m has unexpected offset % instead of 4", ((cast(*void)(*instance.m)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMYKColor.m)) == 4, "CMYKColor.m has unexpected size % instead of 4", size_of(type_of(CMYKColor.m)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 8, "CMYKColor.y has unexpected offset % instead of 8", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMYKColor.y)) == 4, "CMYKColor.y has unexpected size % instead of 4", size_of(type_of(CMYKColor.y)));
        assert(((cast(*void)(*instance.k)) - cast(*void)(*instance)) == 12, "CMYKColor.k has unexpected offset % instead of 12", ((cast(*void)(*instance.k)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMYKColor.k)) == 4, "CMYKColor.k has unexpected size % instead of 4", size_of(type_of(CMYKColor.k)));
        assert(size_of(CMYKColor) == 16, "CMYKColor has size % instead of 16", size_of(CMYKColor));
    }

    {
        instance: Error_Rec;
        assert(((cast(*void)(*instance.error_no)) - cast(*void)(*instance)) == 0, "Error_Rec.error_no has unexpected offset % instead of 0", ((cast(*void)(*instance.error_no)) - cast(*void)(*instance)));
        assert(size_of(type_of(Error_Rec.error_no)) == 8, "Error_Rec.error_no has unexpected size % instead of 8", size_of(type_of(Error_Rec.error_no)));
        assert(((cast(*void)(*instance.detail_no)) - cast(*void)(*instance)) == 8, "Error_Rec.detail_no has unexpected offset % instead of 8", ((cast(*void)(*instance.detail_no)) - cast(*void)(*instance)));
        assert(size_of(type_of(Error_Rec.detail_no)) == 8, "Error_Rec.detail_no has unexpected size % instead of 8", size_of(type_of(Error_Rec.detail_no)));
        assert(((cast(*void)(*instance.error_fn)) - cast(*void)(*instance)) == 16, "Error_Rec.error_fn has unexpected offset % instead of 16", ((cast(*void)(*instance.error_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Error_Rec.error_fn)) == 8, "Error_Rec.error_fn has unexpected size % instead of 8", size_of(type_of(Error_Rec.error_fn)));
        assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 24, "Error_Rec.user_data has unexpected offset % instead of 24", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(Error_Rec.user_data)) == 8, "Error_Rec.user_data has unexpected size % instead of 8", size_of(type_of(Error_Rec.user_data)));
        assert(size_of(Error_Rec) == 32, "Error_Rec has size % instead of 32", size_of(Error_Rec));
    }

    {
        instance: MPool_Node_Rec;
        assert(((cast(*void)(*instance.buf)) - cast(*void)(*instance)) == 0, "MPool_Node_Rec.buf has unexpected offset % instead of 0", ((cast(*void)(*instance.buf)) - cast(*void)(*instance)));
        assert(size_of(type_of(MPool_Node_Rec.buf)) == 8, "MPool_Node_Rec.buf has unexpected size % instead of 8", size_of(type_of(MPool_Node_Rec.buf)));
        assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 8, "MPool_Node_Rec.size has unexpected offset % instead of 8", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
        assert(size_of(type_of(MPool_Node_Rec.size)) == 4, "MPool_Node_Rec.size has unexpected size % instead of 4", size_of(type_of(MPool_Node_Rec.size)));
        assert(((cast(*void)(*instance.used_size)) - cast(*void)(*instance)) == 12, "MPool_Node_Rec.used_size has unexpected offset % instead of 12", ((cast(*void)(*instance.used_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(MPool_Node_Rec.used_size)) == 4, "MPool_Node_Rec.used_size has unexpected size % instead of 4", size_of(type_of(MPool_Node_Rec.used_size)));
        assert(((cast(*void)(*instance.next_node)) - cast(*void)(*instance)) == 16, "MPool_Node_Rec.next_node has unexpected offset % instead of 16", ((cast(*void)(*instance.next_node)) - cast(*void)(*instance)));
        assert(size_of(type_of(MPool_Node_Rec.next_node)) == 8, "MPool_Node_Rec.next_node has unexpected size % instead of 8", size_of(type_of(MPool_Node_Rec.next_node)));
        assert(size_of(MPool_Node_Rec) == 24, "MPool_Node_Rec has size % instead of 24", size_of(MPool_Node_Rec));
    }

    {
        instance: MMgr_Rec;
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 0, "MMgr_Rec.error has unexpected offset % instead of 0", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(MMgr_Rec.error)) == 8, "MMgr_Rec.error has unexpected size % instead of 8", size_of(type_of(MMgr_Rec.error)));
        assert(((cast(*void)(*instance.alloc_fn)) - cast(*void)(*instance)) == 8, "MMgr_Rec.alloc_fn has unexpected offset % instead of 8", ((cast(*void)(*instance.alloc_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(MMgr_Rec.alloc_fn)) == 8, "MMgr_Rec.alloc_fn has unexpected size % instead of 8", size_of(type_of(MMgr_Rec.alloc_fn)));
        assert(((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)) == 16, "MMgr_Rec.free_fn has unexpected offset % instead of 16", ((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(MMgr_Rec.free_fn)) == 8, "MMgr_Rec.free_fn has unexpected size % instead of 8", size_of(type_of(MMgr_Rec.free_fn)));
        assert(((cast(*void)(*instance.mpool)) - cast(*void)(*instance)) == 24, "MMgr_Rec.mpool has unexpected offset % instead of 24", ((cast(*void)(*instance.mpool)) - cast(*void)(*instance)));
        assert(size_of(type_of(MMgr_Rec.mpool)) == 8, "MMgr_Rec.mpool has unexpected size % instead of 8", size_of(type_of(MMgr_Rec.mpool)));
        assert(((cast(*void)(*instance.buf_size)) - cast(*void)(*instance)) == 32, "MMgr_Rec.buf_size has unexpected offset % instead of 32", ((cast(*void)(*instance.buf_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(MMgr_Rec.buf_size)) == 4, "MMgr_Rec.buf_size has unexpected size % instead of 4", size_of(type_of(MMgr_Rec.buf_size)));
        assert(size_of(MMgr_Rec) == 40, "MMgr_Rec has size % instead of 40", size_of(MMgr_Rec));
    }

    {
        instance: List_Rec;
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 0, "List_Rec.mmgr has unexpected offset % instead of 0", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.mmgr)) == 8, "List_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(List_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 8, "List_Rec.error has unexpected offset % instead of 8", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.error)) == 8, "List_Rec.error has unexpected size % instead of 8", size_of(type_of(List_Rec.error)));
        assert(((cast(*void)(*instance.block_siz)) - cast(*void)(*instance)) == 16, "List_Rec.block_siz has unexpected offset % instead of 16", ((cast(*void)(*instance.block_siz)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.block_siz)) == 4, "List_Rec.block_siz has unexpected size % instead of 4", size_of(type_of(List_Rec.block_siz)));
        assert(((cast(*void)(*instance.items_per_block)) - cast(*void)(*instance)) == 20, "List_Rec.items_per_block has unexpected offset % instead of 20", ((cast(*void)(*instance.items_per_block)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.items_per_block)) == 4, "List_Rec.items_per_block has unexpected size % instead of 4", size_of(type_of(List_Rec.items_per_block)));
        assert(((cast(*void)(*instance.count)) - cast(*void)(*instance)) == 24, "List_Rec.count has unexpected offset % instead of 24", ((cast(*void)(*instance.count)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.count)) == 4, "List_Rec.count has unexpected size % instead of 4", size_of(type_of(List_Rec.count)));
        assert(((cast(*void)(*instance.obj)) - cast(*void)(*instance)) == 32, "List_Rec.obj has unexpected offset % instead of 32", ((cast(*void)(*instance.obj)) - cast(*void)(*instance)));
        assert(size_of(type_of(List_Rec.obj)) == 8, "List_Rec.obj has unexpected size % instead of 8", size_of(type_of(List_Rec.obj)));
        assert(size_of(List_Rec) == 40, "List_Rec has size % instead of 40", size_of(List_Rec));
    }

    {
        instance: MD5Context;
        assert(((cast(*void)(*instance.buf)) - cast(*void)(*instance)) == 0, "MD5Context.buf has unexpected offset % instead of 0", ((cast(*void)(*instance.buf)) - cast(*void)(*instance)));
        assert(size_of(type_of(MD5Context.buf)) == 16, "MD5Context.buf has unexpected size % instead of 16", size_of(type_of(MD5Context.buf)));
        assert(((cast(*void)(*instance.bits)) - cast(*void)(*instance)) == 16, "MD5Context.bits has unexpected offset % instead of 16", ((cast(*void)(*instance.bits)) - cast(*void)(*instance)));
        assert(size_of(type_of(MD5Context.bits)) == 8, "MD5Context.bits has unexpected size % instead of 8", size_of(type_of(MD5Context.bits)));
        assert(((cast(*void)(*instance.in)) - cast(*void)(*instance)) == 24, "MD5Context.in has unexpected offset % instead of 24", ((cast(*void)(*instance.in)) - cast(*void)(*instance)));
        assert(size_of(type_of(MD5Context.in)) == 64, "MD5Context.in has unexpected size % instead of 64", size_of(type_of(MD5Context.in)));
        assert(size_of(MD5Context) == 88, "MD5Context has size % instead of 88", size_of(MD5Context));
    }

    {
        instance: ARC4_Ctx_Rec;
        assert(((cast(*void)(*instance.idx1)) - cast(*void)(*instance)) == 0, "ARC4_Ctx_Rec.idx1 has unexpected offset % instead of 0", ((cast(*void)(*instance.idx1)) - cast(*void)(*instance)));
        assert(size_of(type_of(ARC4_Ctx_Rec.idx1)) == 1, "ARC4_Ctx_Rec.idx1 has unexpected size % instead of 1", size_of(type_of(ARC4_Ctx_Rec.idx1)));
        assert(((cast(*void)(*instance.idx2)) - cast(*void)(*instance)) == 1, "ARC4_Ctx_Rec.idx2 has unexpected offset % instead of 1", ((cast(*void)(*instance.idx2)) - cast(*void)(*instance)));
        assert(size_of(type_of(ARC4_Ctx_Rec.idx2)) == 1, "ARC4_Ctx_Rec.idx2 has unexpected size % instead of 1", size_of(type_of(ARC4_Ctx_Rec.idx2)));
        assert(((cast(*void)(*instance.state)) - cast(*void)(*instance)) == 2, "ARC4_Ctx_Rec.state has unexpected offset % instead of 2", ((cast(*void)(*instance.state)) - cast(*void)(*instance)));
        assert(size_of(type_of(ARC4_Ctx_Rec.state)) == 256, "ARC4_Ctx_Rec.state has unexpected size % instead of 256", size_of(type_of(ARC4_Ctx_Rec.state)));
        assert(size_of(ARC4_Ctx_Rec) == 258, "ARC4_Ctx_Rec has size % instead of 258", size_of(ARC4_Ctx_Rec));
    }

    {
        instance: Encrypt_Rec;
        assert(((cast(*void)(*instance.mode)) - cast(*void)(*instance)) == 0, "Encrypt_Rec.mode has unexpected offset % instead of 0", ((cast(*void)(*instance.mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.mode)) == 4, "Encrypt_Rec.mode has unexpected size % instead of 4", size_of(type_of(Encrypt_Rec.mode)));
        assert(((cast(*void)(*instance.key_len)) - cast(*void)(*instance)) == 4, "Encrypt_Rec.key_len has unexpected offset % instead of 4", ((cast(*void)(*instance.key_len)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.key_len)) == 4, "Encrypt_Rec.key_len has unexpected size % instead of 4", size_of(type_of(Encrypt_Rec.key_len)));
        assert(((cast(*void)(*instance.owner_passwd)) - cast(*void)(*instance)) == 8, "Encrypt_Rec.owner_passwd has unexpected offset % instead of 8", ((cast(*void)(*instance.owner_passwd)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.owner_passwd)) == 32, "Encrypt_Rec.owner_passwd has unexpected size % instead of 32", size_of(type_of(Encrypt_Rec.owner_passwd)));
        assert(((cast(*void)(*instance.user_passwd)) - cast(*void)(*instance)) == 40, "Encrypt_Rec.user_passwd has unexpected offset % instead of 40", ((cast(*void)(*instance.user_passwd)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.user_passwd)) == 32, "Encrypt_Rec.user_passwd has unexpected size % instead of 32", size_of(type_of(Encrypt_Rec.user_passwd)));
        assert(((cast(*void)(*instance.owner_key)) - cast(*void)(*instance)) == 72, "Encrypt_Rec.owner_key has unexpected offset % instead of 72", ((cast(*void)(*instance.owner_key)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.owner_key)) == 32, "Encrypt_Rec.owner_key has unexpected size % instead of 32", size_of(type_of(Encrypt_Rec.owner_key)));
        assert(((cast(*void)(*instance.user_key)) - cast(*void)(*instance)) == 104, "Encrypt_Rec.user_key has unexpected offset % instead of 104", ((cast(*void)(*instance.user_key)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.user_key)) == 32, "Encrypt_Rec.user_key has unexpected size % instead of 32", size_of(type_of(Encrypt_Rec.user_key)));
        assert(((cast(*void)(*instance.permission)) - cast(*void)(*instance)) == 136, "Encrypt_Rec.permission has unexpected offset % instead of 136", ((cast(*void)(*instance.permission)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.permission)) == 4, "Encrypt_Rec.permission has unexpected size % instead of 4", size_of(type_of(Encrypt_Rec.permission)));
        assert(((cast(*void)(*instance.encrypt_id)) - cast(*void)(*instance)) == 140, "Encrypt_Rec.encrypt_id has unexpected offset % instead of 140", ((cast(*void)(*instance.encrypt_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.encrypt_id)) == 16, "Encrypt_Rec.encrypt_id has unexpected size % instead of 16", size_of(type_of(Encrypt_Rec.encrypt_id)));
        assert(((cast(*void)(*instance.encryption_key)) - cast(*void)(*instance)) == 156, "Encrypt_Rec.encryption_key has unexpected offset % instead of 156", ((cast(*void)(*instance.encryption_key)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.encryption_key)) == 21, "Encrypt_Rec.encryption_key has unexpected size % instead of 21", size_of(type_of(Encrypt_Rec.encryption_key)));
        assert(((cast(*void)(*instance.md5_encryption_key)) - cast(*void)(*instance)) == 177, "Encrypt_Rec.md5_encryption_key has unexpected offset % instead of 177", ((cast(*void)(*instance.md5_encryption_key)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.md5_encryption_key)) == 16, "Encrypt_Rec.md5_encryption_key has unexpected size % instead of 16", size_of(type_of(Encrypt_Rec.md5_encryption_key)));
        assert(((cast(*void)(*instance.arc4ctx)) - cast(*void)(*instance)) == 193, "Encrypt_Rec.arc4ctx has unexpected offset % instead of 193", ((cast(*void)(*instance.arc4ctx)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encrypt_Rec.arc4ctx)) == 258, "Encrypt_Rec.arc4ctx has unexpected size % instead of 258", size_of(type_of(Encrypt_Rec.arc4ctx)));
        assert(size_of(Encrypt_Rec) == 452, "Encrypt_Rec has size % instead of 452", size_of(Encrypt_Rec));
    }

    {
        instance: MemStreamAttr_Rec;
        assert(((cast(*void)(*instance.buf)) - cast(*void)(*instance)) == 0, "MemStreamAttr_Rec.buf has unexpected offset % instead of 0", ((cast(*void)(*instance.buf)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.buf)) == 8, "MemStreamAttr_Rec.buf has unexpected size % instead of 8", size_of(type_of(MemStreamAttr_Rec.buf)));
        assert(((cast(*void)(*instance.buf_siz)) - cast(*void)(*instance)) == 8, "MemStreamAttr_Rec.buf_siz has unexpected offset % instead of 8", ((cast(*void)(*instance.buf_siz)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.buf_siz)) == 4, "MemStreamAttr_Rec.buf_siz has unexpected size % instead of 4", size_of(type_of(MemStreamAttr_Rec.buf_siz)));
        assert(((cast(*void)(*instance.w_pos)) - cast(*void)(*instance)) == 12, "MemStreamAttr_Rec.w_pos has unexpected offset % instead of 12", ((cast(*void)(*instance.w_pos)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.w_pos)) == 4, "MemStreamAttr_Rec.w_pos has unexpected size % instead of 4", size_of(type_of(MemStreamAttr_Rec.w_pos)));
        assert(((cast(*void)(*instance.w_ptr)) - cast(*void)(*instance)) == 16, "MemStreamAttr_Rec.w_ptr has unexpected offset % instead of 16", ((cast(*void)(*instance.w_ptr)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.w_ptr)) == 8, "MemStreamAttr_Rec.w_ptr has unexpected size % instead of 8", size_of(type_of(MemStreamAttr_Rec.w_ptr)));
        assert(((cast(*void)(*instance.r_ptr_idx)) - cast(*void)(*instance)) == 24, "MemStreamAttr_Rec.r_ptr_idx has unexpected offset % instead of 24", ((cast(*void)(*instance.r_ptr_idx)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.r_ptr_idx)) == 4, "MemStreamAttr_Rec.r_ptr_idx has unexpected size % instead of 4", size_of(type_of(MemStreamAttr_Rec.r_ptr_idx)));
        assert(((cast(*void)(*instance.r_pos)) - cast(*void)(*instance)) == 28, "MemStreamAttr_Rec.r_pos has unexpected offset % instead of 28", ((cast(*void)(*instance.r_pos)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.r_pos)) == 4, "MemStreamAttr_Rec.r_pos has unexpected size % instead of 4", size_of(type_of(MemStreamAttr_Rec.r_pos)));
        assert(((cast(*void)(*instance.r_ptr)) - cast(*void)(*instance)) == 32, "MemStreamAttr_Rec.r_ptr has unexpected offset % instead of 32", ((cast(*void)(*instance.r_ptr)) - cast(*void)(*instance)));
        assert(size_of(type_of(MemStreamAttr_Rec.r_ptr)) == 8, "MemStreamAttr_Rec.r_ptr has unexpected size % instead of 8", size_of(type_of(MemStreamAttr_Rec.r_ptr)));
        assert(size_of(MemStreamAttr_Rec) == 40, "MemStreamAttr_Rec has size % instead of 40", size_of(MemStreamAttr_Rec));
    }

    {
        instance: Stream_Rec;
        assert(((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)) == 0, "Stream_Rec.sig_bytes has unexpected offset % instead of 0", ((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.sig_bytes)) == 4, "Stream_Rec.sig_bytes has unexpected size % instead of 4", size_of(type_of(Stream_Rec.sig_bytes)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 4, "Stream_Rec.type has unexpected offset % instead of 4", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.type)) == 4, "Stream_Rec.type has unexpected size % instead of 4", size_of(type_of(Stream_Rec.type)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Stream_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.mmgr)) == 8, "Stream_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Stream_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "Stream_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.error)) == 8, "Stream_Rec.error has unexpected size % instead of 8", size_of(type_of(Stream_Rec.error)));
        assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 24, "Stream_Rec.size has unexpected offset % instead of 24", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.size)) == 4, "Stream_Rec.size has unexpected size % instead of 4", size_of(type_of(Stream_Rec.size)));
        assert(((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)) == 32, "Stream_Rec.write_fn has unexpected offset % instead of 32", ((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.write_fn)) == 8, "Stream_Rec.write_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.write_fn)));
        assert(((cast(*void)(*instance.read_fn)) - cast(*void)(*instance)) == 40, "Stream_Rec.read_fn has unexpected offset % instead of 40", ((cast(*void)(*instance.read_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.read_fn)) == 8, "Stream_Rec.read_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.read_fn)));
        assert(((cast(*void)(*instance.seek_fn)) - cast(*void)(*instance)) == 48, "Stream_Rec.seek_fn has unexpected offset % instead of 48", ((cast(*void)(*instance.seek_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.seek_fn)) == 8, "Stream_Rec.seek_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.seek_fn)));
        assert(((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)) == 56, "Stream_Rec.free_fn has unexpected offset % instead of 56", ((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.free_fn)) == 8, "Stream_Rec.free_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.free_fn)));
        assert(((cast(*void)(*instance.tell_fn)) - cast(*void)(*instance)) == 64, "Stream_Rec.tell_fn has unexpected offset % instead of 64", ((cast(*void)(*instance.tell_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.tell_fn)) == 8, "Stream_Rec.tell_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.tell_fn)));
        assert(((cast(*void)(*instance.size_fn)) - cast(*void)(*instance)) == 72, "Stream_Rec.size_fn has unexpected offset % instead of 72", ((cast(*void)(*instance.size_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.size_fn)) == 8, "Stream_Rec.size_fn has unexpected size % instead of 8", size_of(type_of(Stream_Rec.size_fn)));
        assert(((cast(*void)(*instance.attr)) - cast(*void)(*instance)) == 80, "Stream_Rec.attr has unexpected offset % instead of 80", ((cast(*void)(*instance.attr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Stream_Rec.attr)) == 8, "Stream_Rec.attr has unexpected size % instead of 8", size_of(type_of(Stream_Rec.attr)));
        assert(size_of(Stream_Rec) == 88, "Stream_Rec has size % instead of 88", size_of(Stream_Rec));
    }

    {
        instance: ParseText_Rec;
        assert(((cast(*void)(*instance.text)) - cast(*void)(*instance)) == 0, "ParseText_Rec.text has unexpected offset % instead of 0", ((cast(*void)(*instance.text)) - cast(*void)(*instance)));
        assert(size_of(type_of(ParseText_Rec.text)) == 8, "ParseText_Rec.text has unexpected size % instead of 8", size_of(type_of(ParseText_Rec.text)));
        assert(((cast(*void)(*instance.index)) - cast(*void)(*instance)) == 8, "ParseText_Rec.index has unexpected offset % instead of 8", ((cast(*void)(*instance.index)) - cast(*void)(*instance)));
        assert(size_of(type_of(ParseText_Rec.index)) == 4, "ParseText_Rec.index has unexpected size % instead of 4", size_of(type_of(ParseText_Rec.index)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 12, "ParseText_Rec.len has unexpected offset % instead of 12", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(ParseText_Rec.len)) == 4, "ParseText_Rec.len has unexpected size % instead of 4", size_of(type_of(ParseText_Rec.len)));
        assert(((cast(*void)(*instance.byte_type)) - cast(*void)(*instance)) == 16, "ParseText_Rec.byte_type has unexpected offset % instead of 16", ((cast(*void)(*instance.byte_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(ParseText_Rec.byte_type)) == 4, "ParseText_Rec.byte_type has unexpected size % instead of 4", size_of(type_of(ParseText_Rec.byte_type)));
        assert(size_of(ParseText_Rec) == 24, "ParseText_Rec has size % instead of 24", size_of(ParseText_Rec));
    }

    {
        instance: Encoder_Rec;
        assert(((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)) == 0, "Encoder_Rec.sig_bytes has unexpected offset % instead of 0", ((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.sig_bytes)) == 4, "Encoder_Rec.sig_bytes has unexpected size % instead of 4", size_of(type_of(Encoder_Rec.sig_bytes)));
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 4, "Encoder_Rec.name has unexpected offset % instead of 4", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.name)) == 128, "Encoder_Rec.name has unexpected size % instead of 128", size_of(type_of(Encoder_Rec.name)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 136, "Encoder_Rec.mmgr has unexpected offset % instead of 136", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.mmgr)) == 8, "Encoder_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 144, "Encoder_Rec.error has unexpected offset % instead of 144", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.error)) == 8, "Encoder_Rec.error has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.error)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 152, "Encoder_Rec.type has unexpected offset % instead of 152", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.type)) == 4, "Encoder_Rec.type has unexpected size % instead of 4", size_of(type_of(Encoder_Rec.type)));
        assert(((cast(*void)(*instance.byte_type_fn)) - cast(*void)(*instance)) == 160, "Encoder_Rec.byte_type_fn has unexpected offset % instead of 160", ((cast(*void)(*instance.byte_type_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.byte_type_fn)) == 8, "Encoder_Rec.byte_type_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.byte_type_fn)));
        assert(((cast(*void)(*instance.to_unicode_fn)) - cast(*void)(*instance)) == 168, "Encoder_Rec.to_unicode_fn has unexpected offset % instead of 168", ((cast(*void)(*instance.to_unicode_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.to_unicode_fn)) == 8, "Encoder_Rec.to_unicode_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.to_unicode_fn)));
        assert(((cast(*void)(*instance.encode_text_fn)) - cast(*void)(*instance)) == 176, "Encoder_Rec.encode_text_fn has unexpected offset % instead of 176", ((cast(*void)(*instance.encode_text_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.encode_text_fn)) == 8, "Encoder_Rec.encode_text_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.encode_text_fn)));
        assert(((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)) == 184, "Encoder_Rec.write_fn has unexpected offset % instead of 184", ((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.write_fn)) == 8, "Encoder_Rec.write_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.write_fn)));
        assert(((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)) == 192, "Encoder_Rec.free_fn has unexpected offset % instead of 192", ((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.free_fn)) == 8, "Encoder_Rec.free_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.free_fn)));
        assert(((cast(*void)(*instance.init_fn)) - cast(*void)(*instance)) == 200, "Encoder_Rec.init_fn has unexpected offset % instead of 200", ((cast(*void)(*instance.init_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.init_fn)) == 8, "Encoder_Rec.init_fn has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.init_fn)));
        assert(((cast(*void)(*instance.attr)) - cast(*void)(*instance)) == 208, "Encoder_Rec.attr has unexpected offset % instead of 208", ((cast(*void)(*instance.attr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Encoder_Rec.attr)) == 8, "Encoder_Rec.attr has unexpected size % instead of 8", size_of(type_of(Encoder_Rec.attr)));
        assert(size_of(Encoder_Rec) == 216, "Encoder_Rec has size % instead of 216", size_of(Encoder_Rec));
    }

    {
        instance: BasicEncoderAttr_Rec;
        assert(((cast(*void)(*instance.base_encoding)) - cast(*void)(*instance)) == 0, "BasicEncoderAttr_Rec.base_encoding has unexpected offset % instead of 0", ((cast(*void)(*instance.base_encoding)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.base_encoding)) == 128, "BasicEncoderAttr_Rec.base_encoding has unexpected size % instead of 128", size_of(type_of(BasicEncoderAttr_Rec.base_encoding)));
        assert(((cast(*void)(*instance.first_char)) - cast(*void)(*instance)) == 128, "BasicEncoderAttr_Rec.first_char has unexpected offset % instead of 128", ((cast(*void)(*instance.first_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.first_char)) == 1, "BasicEncoderAttr_Rec.first_char has unexpected size % instead of 1", size_of(type_of(BasicEncoderAttr_Rec.first_char)));
        assert(((cast(*void)(*instance.last_char)) - cast(*void)(*instance)) == 129, "BasicEncoderAttr_Rec.last_char has unexpected offset % instead of 129", ((cast(*void)(*instance.last_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.last_char)) == 1, "BasicEncoderAttr_Rec.last_char has unexpected size % instead of 1", size_of(type_of(BasicEncoderAttr_Rec.last_char)));
        assert(((cast(*void)(*instance.unicode_map)) - cast(*void)(*instance)) == 130, "BasicEncoderAttr_Rec.unicode_map has unexpected offset % instead of 130", ((cast(*void)(*instance.unicode_map)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.unicode_map)) == 512, "BasicEncoderAttr_Rec.unicode_map has unexpected size % instead of 512", size_of(type_of(BasicEncoderAttr_Rec.unicode_map)));
        assert(((cast(*void)(*instance.has_differences)) - cast(*void)(*instance)) == 644, "BasicEncoderAttr_Rec.has_differences has unexpected offset % instead of 644", ((cast(*void)(*instance.has_differences)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.has_differences)) == 4, "BasicEncoderAttr_Rec.has_differences has unexpected size % instead of 4", size_of(type_of(BasicEncoderAttr_Rec.has_differences)));
        assert(((cast(*void)(*instance.differences)) - cast(*void)(*instance)) == 648, "BasicEncoderAttr_Rec.differences has unexpected offset % instead of 648", ((cast(*void)(*instance.differences)) - cast(*void)(*instance)));
        assert(size_of(type_of(BasicEncoderAttr_Rec.differences)) == 256, "BasicEncoderAttr_Rec.differences has unexpected size % instead of 256", size_of(type_of(BasicEncoderAttr_Rec.differences)));
        assert(size_of(BasicEncoderAttr_Rec) == 904, "BasicEncoderAttr_Rec has size % instead of 904", size_of(BasicEncoderAttr_Rec));
    }

    {
        instance: CidRange_Rec;
        assert(((cast(*void)(*instance.from)) - cast(*void)(*instance)) == 0, "CidRange_Rec.from has unexpected offset % instead of 0", ((cast(*void)(*instance.from)) - cast(*void)(*instance)));
        assert(size_of(type_of(CidRange_Rec.from)) == 2, "CidRange_Rec.from has unexpected size % instead of 2", size_of(type_of(CidRange_Rec.from)));
        assert(((cast(*void)(*instance.to)) - cast(*void)(*instance)) == 2, "CidRange_Rec.to has unexpected offset % instead of 2", ((cast(*void)(*instance.to)) - cast(*void)(*instance)));
        assert(size_of(type_of(CidRange_Rec.to)) == 2, "CidRange_Rec.to has unexpected size % instead of 2", size_of(type_of(CidRange_Rec.to)));
        assert(((cast(*void)(*instance.cid)) - cast(*void)(*instance)) == 4, "CidRange_Rec.cid has unexpected offset % instead of 4", ((cast(*void)(*instance.cid)) - cast(*void)(*instance)));
        assert(size_of(type_of(CidRange_Rec.cid)) == 2, "CidRange_Rec.cid has unexpected size % instead of 2", size_of(type_of(CidRange_Rec.cid)));
        assert(size_of(CidRange_Rec) == 6, "CidRange_Rec has size % instead of 6", size_of(CidRange_Rec));
    }

    {
        instance: UnicodeMap_Rec;
        assert(((cast(*void)(*instance.code)) - cast(*void)(*instance)) == 0, "UnicodeMap_Rec.code has unexpected offset % instead of 0", ((cast(*void)(*instance.code)) - cast(*void)(*instance)));
        assert(size_of(type_of(UnicodeMap_Rec.code)) == 2, "UnicodeMap_Rec.code has unexpected size % instead of 2", size_of(type_of(UnicodeMap_Rec.code)));
        assert(((cast(*void)(*instance.unicode)) - cast(*void)(*instance)) == 2, "UnicodeMap_Rec.unicode has unexpected offset % instead of 2", ((cast(*void)(*instance.unicode)) - cast(*void)(*instance)));
        assert(size_of(type_of(UnicodeMap_Rec.unicode)) == 2, "UnicodeMap_Rec.unicode has unexpected size % instead of 2", size_of(type_of(UnicodeMap_Rec.unicode)));
        assert(size_of(UnicodeMap_Rec) == 4, "UnicodeMap_Rec has size % instead of 4", size_of(UnicodeMap_Rec));
    }

    {
        instance: CMapEncoderAttr_Rec;
        assert(((cast(*void)(*instance.unicode_map)) - cast(*void)(*instance)) == 0, "CMapEncoderAttr_Rec.unicode_map has unexpected offset % instead of 0", ((cast(*void)(*instance.unicode_map)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.unicode_map)) == 131072, "CMapEncoderAttr_Rec.unicode_map has unexpected size % instead of 131072", size_of(type_of(CMapEncoderAttr_Rec.unicode_map)));
        assert(((cast(*void)(*instance.cid_map)) - cast(*void)(*instance)) == 131072, "CMapEncoderAttr_Rec.cid_map has unexpected offset % instead of 131072", ((cast(*void)(*instance.cid_map)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.cid_map)) == 131072, "CMapEncoderAttr_Rec.cid_map has unexpected size % instead of 131072", size_of(type_of(CMapEncoderAttr_Rec.cid_map)));
        assert(((cast(*void)(*instance.jww_line_head)) - cast(*void)(*instance)) == 262144, "CMapEncoderAttr_Rec.jww_line_head has unexpected offset % instead of 262144", ((cast(*void)(*instance.jww_line_head)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.jww_line_head)) == 256, "CMapEncoderAttr_Rec.jww_line_head has unexpected size % instead of 256", size_of(type_of(CMapEncoderAttr_Rec.jww_line_head)));
        assert(((cast(*void)(*instance.cmap_range)) - cast(*void)(*instance)) == 262400, "CMapEncoderAttr_Rec.cmap_range has unexpected offset % instead of 262400", ((cast(*void)(*instance.cmap_range)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.cmap_range)) == 8, "CMapEncoderAttr_Rec.cmap_range has unexpected size % instead of 8", size_of(type_of(CMapEncoderAttr_Rec.cmap_range)));
        assert(((cast(*void)(*instance.notdef_range)) - cast(*void)(*instance)) == 262408, "CMapEncoderAttr_Rec.notdef_range has unexpected offset % instead of 262408", ((cast(*void)(*instance.notdef_range)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.notdef_range)) == 8, "CMapEncoderAttr_Rec.notdef_range has unexpected size % instead of 8", size_of(type_of(CMapEncoderAttr_Rec.notdef_range)));
        assert(((cast(*void)(*instance.code_space_range)) - cast(*void)(*instance)) == 262416, "CMapEncoderAttr_Rec.code_space_range has unexpected offset % instead of 262416", ((cast(*void)(*instance.code_space_range)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.code_space_range)) == 8, "CMapEncoderAttr_Rec.code_space_range has unexpected size % instead of 8", size_of(type_of(CMapEncoderAttr_Rec.code_space_range)));
        assert(((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)) == 262424, "CMapEncoderAttr_Rec.writing_mode has unexpected offset % instead of 262424", ((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.writing_mode)) == 4, "CMapEncoderAttr_Rec.writing_mode has unexpected size % instead of 4", size_of(type_of(CMapEncoderAttr_Rec.writing_mode)));
        assert(((cast(*void)(*instance.registry)) - cast(*void)(*instance)) == 262428, "CMapEncoderAttr_Rec.registry has unexpected offset % instead of 262428", ((cast(*void)(*instance.registry)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.registry)) == 128, "CMapEncoderAttr_Rec.registry has unexpected size % instead of 128", size_of(type_of(CMapEncoderAttr_Rec.registry)));
        assert(((cast(*void)(*instance.ordering)) - cast(*void)(*instance)) == 262556, "CMapEncoderAttr_Rec.ordering has unexpected offset % instead of 262556", ((cast(*void)(*instance.ordering)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.ordering)) == 128, "CMapEncoderAttr_Rec.ordering has unexpected size % instead of 128", size_of(type_of(CMapEncoderAttr_Rec.ordering)));
        assert(((cast(*void)(*instance.suppliment)) - cast(*void)(*instance)) == 262684, "CMapEncoderAttr_Rec.suppliment has unexpected offset % instead of 262684", ((cast(*void)(*instance.suppliment)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.suppliment)) == 4, "CMapEncoderAttr_Rec.suppliment has unexpected size % instead of 4", size_of(type_of(CMapEncoderAttr_Rec.suppliment)));
        assert(((cast(*void)(*instance.is_lead_byte_fn)) - cast(*void)(*instance)) == 262688, "CMapEncoderAttr_Rec.is_lead_byte_fn has unexpected offset % instead of 262688", ((cast(*void)(*instance.is_lead_byte_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.is_lead_byte_fn)) == 8, "CMapEncoderAttr_Rec.is_lead_byte_fn has unexpected size % instead of 8", size_of(type_of(CMapEncoderAttr_Rec.is_lead_byte_fn)));
        assert(((cast(*void)(*instance.is_trial_byte_fn)) - cast(*void)(*instance)) == 262696, "CMapEncoderAttr_Rec.is_trial_byte_fn has unexpected offset % instead of 262696", ((cast(*void)(*instance.is_trial_byte_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.is_trial_byte_fn)) == 8, "CMapEncoderAttr_Rec.is_trial_byte_fn has unexpected size % instead of 8", size_of(type_of(CMapEncoderAttr_Rec.is_trial_byte_fn)));
        assert(((cast(*void)(*instance.uid_offset)) - cast(*void)(*instance)) == 262704, "CMapEncoderAttr_Rec.uid_offset has unexpected offset % instead of 262704", ((cast(*void)(*instance.uid_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.uid_offset)) == 4, "CMapEncoderAttr_Rec.uid_offset has unexpected size % instead of 4", size_of(type_of(CMapEncoderAttr_Rec.uid_offset)));
        assert(((cast(*void)(*instance.xuid)) - cast(*void)(*instance)) == 262708, "CMapEncoderAttr_Rec.xuid has unexpected offset % instead of 262708", ((cast(*void)(*instance.xuid)) - cast(*void)(*instance)));
        assert(size_of(type_of(CMapEncoderAttr_Rec.xuid)) == 12, "CMapEncoderAttr_Rec.xuid has unexpected size % instead of 12", size_of(type_of(CMapEncoderAttr_Rec.xuid)));
        assert(size_of(CMapEncoderAttr_Rec) == 262720, "CMapEncoderAttr_Rec has size % instead of 262720", size_of(CMapEncoderAttr_Rec));
    }

    {
        instance: Obj_Header;
        assert(((cast(*void)(*instance.obj_id)) - cast(*void)(*instance)) == 0, "Obj_Header.obj_id has unexpected offset % instead of 0", ((cast(*void)(*instance.obj_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(Obj_Header.obj_id)) == 4, "Obj_Header.obj_id has unexpected size % instead of 4", size_of(type_of(Obj_Header.obj_id)));
        assert(((cast(*void)(*instance.gen_no)) - cast(*void)(*instance)) == 4, "Obj_Header.gen_no has unexpected offset % instead of 4", ((cast(*void)(*instance.gen_no)) - cast(*void)(*instance)));
        assert(size_of(type_of(Obj_Header.gen_no)) == 2, "Obj_Header.gen_no has unexpected size % instead of 2", size_of(type_of(Obj_Header.gen_no)));
        assert(((cast(*void)(*instance.obj_class)) - cast(*void)(*instance)) == 6, "Obj_Header.obj_class has unexpected offset % instead of 6", ((cast(*void)(*instance.obj_class)) - cast(*void)(*instance)));
        assert(size_of(type_of(Obj_Header.obj_class)) == 2, "Obj_Header.obj_class has unexpected size % instead of 2", size_of(type_of(Obj_Header.obj_class)));
        assert(size_of(Obj_Header) == 8, "Obj_Header has size % instead of 8", size_of(Obj_Header));
    }

    {
        instance: Null_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Null_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Null_Rec.header)) == 8, "Null_Rec.header has unexpected size % instead of 8", size_of(type_of(Null_Rec.header)));
        assert(size_of(Null_Rec) == 8, "Null_Rec has size % instead of 8", size_of(Null_Rec));
    }

    {
        instance: Boolean_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Boolean_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Boolean_Rec.header)) == 8, "Boolean_Rec.header has unexpected size % instead of 8", size_of(type_of(Boolean_Rec.header)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 8, "Boolean_Rec.value has unexpected offset % instead of 8", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Boolean_Rec.value)) == 4, "Boolean_Rec.value has unexpected size % instead of 4", size_of(type_of(Boolean_Rec.value)));
        assert(size_of(Boolean_Rec) == 12, "Boolean_Rec has size % instead of 12", size_of(Boolean_Rec));
    }

    {
        instance: Number_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Number_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Number_Rec.header)) == 8, "Number_Rec.header has unexpected size % instead of 8", size_of(type_of(Number_Rec.header)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 8, "Number_Rec.value has unexpected offset % instead of 8", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Number_Rec.value)) == 4, "Number_Rec.value has unexpected size % instead of 4", size_of(type_of(Number_Rec.value)));
        assert(size_of(Number_Rec) == 12, "Number_Rec has size % instead of 12", size_of(Number_Rec));
    }

    {
        instance: Real_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Real_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Real_Rec.header)) == 8, "Real_Rec.header has unexpected size % instead of 8", size_of(type_of(Real_Rec.header)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 8, "Real_Rec.error has unexpected offset % instead of 8", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Real_Rec.error)) == 8, "Real_Rec.error has unexpected size % instead of 8", size_of(type_of(Real_Rec.error)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 16, "Real_Rec.value has unexpected offset % instead of 16", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Real_Rec.value)) == 4, "Real_Rec.value has unexpected size % instead of 4", size_of(type_of(Real_Rec.value)));
        assert(size_of(Real_Rec) == 24, "Real_Rec has size % instead of 24", size_of(Real_Rec));
    }

    {
        instance: Name_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Name_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Name_Rec.header)) == 8, "Name_Rec.header has unexpected size % instead of 8", size_of(type_of(Name_Rec.header)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 8, "Name_Rec.error has unexpected offset % instead of 8", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Name_Rec.error)) == 8, "Name_Rec.error has unexpected size % instead of 8", size_of(type_of(Name_Rec.error)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 16, "Name_Rec.value has unexpected offset % instead of 16", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Name_Rec.value)) == 128, "Name_Rec.value has unexpected size % instead of 128", size_of(type_of(Name_Rec.value)));
        assert(size_of(Name_Rec) == 144, "Name_Rec has size % instead of 144", size_of(Name_Rec));
    }

    {
        instance: String_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "String_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.header)) == 8, "String_Rec.header has unexpected size % instead of 8", size_of(type_of(String_Rec.header)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "String_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.mmgr)) == 8, "String_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(String_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "String_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.error)) == 8, "String_Rec.error has unexpected size % instead of 8", size_of(type_of(String_Rec.error)));
        assert(((cast(*void)(*instance.encoder)) - cast(*void)(*instance)) == 24, "String_Rec.encoder has unexpected offset % instead of 24", ((cast(*void)(*instance.encoder)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.encoder)) == 8, "String_Rec.encoder has unexpected size % instead of 8", size_of(type_of(String_Rec.encoder)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 32, "String_Rec.value has unexpected offset % instead of 32", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.value)) == 8, "String_Rec.value has unexpected size % instead of 8", size_of(type_of(String_Rec.value)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 40, "String_Rec.len has unexpected offset % instead of 40", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(String_Rec.len)) == 4, "String_Rec.len has unexpected size % instead of 4", size_of(type_of(String_Rec.len)));
        assert(size_of(String_Rec) == 48, "String_Rec has size % instead of 48", size_of(String_Rec));
    }

    {
        instance: Binary_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Binary_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Binary_Rec.header)) == 8, "Binary_Rec.header has unexpected size % instead of 8", size_of(type_of(Binary_Rec.header)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Binary_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Binary_Rec.mmgr)) == 8, "Binary_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Binary_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "Binary_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Binary_Rec.error)) == 8, "Binary_Rec.error has unexpected size % instead of 8", size_of(type_of(Binary_Rec.error)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 24, "Binary_Rec.value has unexpected offset % instead of 24", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Binary_Rec.value)) == 8, "Binary_Rec.value has unexpected size % instead of 8", size_of(type_of(Binary_Rec.value)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 32, "Binary_Rec.len has unexpected offset % instead of 32", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(Binary_Rec.len)) == 4, "Binary_Rec.len has unexpected size % instead of 4", size_of(type_of(Binary_Rec.len)));
        assert(size_of(Binary_Rec) == 40, "Binary_Rec has size % instead of 40", size_of(Binary_Rec));
    }

    {
        instance: Array_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Array_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Array_Rec.header)) == 8, "Array_Rec.header has unexpected size % instead of 8", size_of(type_of(Array_Rec.header)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Array_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Array_Rec.mmgr)) == 8, "Array_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Array_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "Array_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Array_Rec.error)) == 8, "Array_Rec.error has unexpected size % instead of 8", size_of(type_of(Array_Rec.error)));
        assert(((cast(*void)(*instance.list)) - cast(*void)(*instance)) == 24, "Array_Rec.list has unexpected offset % instead of 24", ((cast(*void)(*instance.list)) - cast(*void)(*instance)));
        assert(size_of(type_of(Array_Rec.list)) == 8, "Array_Rec.list has unexpected size % instead of 8", size_of(type_of(Array_Rec.list)));
        assert(size_of(Array_Rec) == 32, "Array_Rec has size % instead of 32", size_of(Array_Rec));
    }

    {
        instance: Dict_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Dict_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.header)) == 8, "Dict_Rec.header has unexpected size % instead of 8", size_of(type_of(Dict_Rec.header)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Dict_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.mmgr)) == 8, "Dict_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Dict_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "Dict_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.error)) == 8, "Dict_Rec.error has unexpected size % instead of 8", size_of(type_of(Dict_Rec.error)));
        assert(((cast(*void)(*instance.list)) - cast(*void)(*instance)) == 24, "Dict_Rec.list has unexpected offset % instead of 24", ((cast(*void)(*instance.list)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.list)) == 8, "Dict_Rec.list has unexpected size % instead of 8", size_of(type_of(Dict_Rec.list)));
        assert(((cast(*void)(*instance.before_write_fn)) - cast(*void)(*instance)) == 32, "Dict_Rec.before_write_fn has unexpected offset % instead of 32", ((cast(*void)(*instance.before_write_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.before_write_fn)) == 8, "Dict_Rec.before_write_fn has unexpected size % instead of 8", size_of(type_of(Dict_Rec.before_write_fn)));
        assert(((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)) == 40, "Dict_Rec.write_fn has unexpected offset % instead of 40", ((cast(*void)(*instance.write_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.write_fn)) == 8, "Dict_Rec.write_fn has unexpected size % instead of 8", size_of(type_of(Dict_Rec.write_fn)));
        assert(((cast(*void)(*instance.after_write_fn)) - cast(*void)(*instance)) == 48, "Dict_Rec.after_write_fn has unexpected offset % instead of 48", ((cast(*void)(*instance.after_write_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.after_write_fn)) == 8, "Dict_Rec.after_write_fn has unexpected size % instead of 8", size_of(type_of(Dict_Rec.after_write_fn)));
        assert(((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)) == 56, "Dict_Rec.free_fn has unexpected offset % instead of 56", ((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.free_fn)) == 8, "Dict_Rec.free_fn has unexpected size % instead of 8", size_of(type_of(Dict_Rec.free_fn)));
        assert(((cast(*void)(*instance.stream)) - cast(*void)(*instance)) == 64, "Dict_Rec.stream has unexpected offset % instead of 64", ((cast(*void)(*instance.stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.stream)) == 8, "Dict_Rec.stream has unexpected size % instead of 8", size_of(type_of(Dict_Rec.stream)));
        assert(((cast(*void)(*instance.filter)) - cast(*void)(*instance)) == 72, "Dict_Rec.filter has unexpected offset % instead of 72", ((cast(*void)(*instance.filter)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.filter)) == 4, "Dict_Rec.filter has unexpected size % instead of 4", size_of(type_of(Dict_Rec.filter)));
        assert(((cast(*void)(*instance.filterParams)) - cast(*void)(*instance)) == 80, "Dict_Rec.filterParams has unexpected offset % instead of 80", ((cast(*void)(*instance.filterParams)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.filterParams)) == 8, "Dict_Rec.filterParams has unexpected size % instead of 8", size_of(type_of(Dict_Rec.filterParams)));
        assert(((cast(*void)(*instance.attr)) - cast(*void)(*instance)) == 88, "Dict_Rec.attr has unexpected offset % instead of 88", ((cast(*void)(*instance.attr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Dict_Rec.attr)) == 8, "Dict_Rec.attr has unexpected size % instead of 8", size_of(type_of(Dict_Rec.attr)));
        assert(size_of(Dict_Rec) == 96, "Dict_Rec has size % instead of 96", size_of(Dict_Rec));
    }

    {
        instance: DictElement_Rec;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "DictElement_Rec.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(DictElement_Rec.key)) == 128, "DictElement_Rec.key has unexpected size % instead of 128", size_of(type_of(DictElement_Rec.key)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 128, "DictElement_Rec.value has unexpected offset % instead of 128", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(DictElement_Rec.value)) == 8, "DictElement_Rec.value has unexpected size % instead of 8", size_of(type_of(DictElement_Rec.value)));
        assert(size_of(DictElement_Rec) == 136, "DictElement_Rec has size % instead of 136", size_of(DictElement_Rec));
    }

    {
        instance: Proxy_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Proxy_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Proxy_Rec.header)) == 8, "Proxy_Rec.header has unexpected size % instead of 8", size_of(type_of(Proxy_Rec.header)));
        assert(((cast(*void)(*instance.obj)) - cast(*void)(*instance)) == 8, "Proxy_Rec.obj has unexpected offset % instead of 8", ((cast(*void)(*instance.obj)) - cast(*void)(*instance)));
        assert(size_of(type_of(Proxy_Rec.obj)) == 8, "Proxy_Rec.obj has unexpected size % instead of 8", size_of(type_of(Proxy_Rec.obj)));
        assert(size_of(Proxy_Rec) == 16, "Proxy_Rec has size % instead of 16", size_of(Proxy_Rec));
    }

    {
        instance: XrefEntry_Rec;
        assert(((cast(*void)(*instance.entry_typ)) - cast(*void)(*instance)) == 0, "XrefEntry_Rec.entry_typ has unexpected offset % instead of 0", ((cast(*void)(*instance.entry_typ)) - cast(*void)(*instance)));
        assert(size_of(type_of(XrefEntry_Rec.entry_typ)) == 1, "XrefEntry_Rec.entry_typ has unexpected size % instead of 1", size_of(type_of(XrefEntry_Rec.entry_typ)));
        assert(((cast(*void)(*instance.byte_offset)) - cast(*void)(*instance)) == 4, "XrefEntry_Rec.byte_offset has unexpected offset % instead of 4", ((cast(*void)(*instance.byte_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(XrefEntry_Rec.byte_offset)) == 4, "XrefEntry_Rec.byte_offset has unexpected size % instead of 4", size_of(type_of(XrefEntry_Rec.byte_offset)));
        assert(((cast(*void)(*instance.gen_no)) - cast(*void)(*instance)) == 8, "XrefEntry_Rec.gen_no has unexpected offset % instead of 8", ((cast(*void)(*instance.gen_no)) - cast(*void)(*instance)));
        assert(size_of(type_of(XrefEntry_Rec.gen_no)) == 2, "XrefEntry_Rec.gen_no has unexpected size % instead of 2", size_of(type_of(XrefEntry_Rec.gen_no)));
        assert(((cast(*void)(*instance.obj)) - cast(*void)(*instance)) == 16, "XrefEntry_Rec.obj has unexpected offset % instead of 16", ((cast(*void)(*instance.obj)) - cast(*void)(*instance)));
        assert(size_of(type_of(XrefEntry_Rec.obj)) == 8, "XrefEntry_Rec.obj has unexpected size % instead of 8", size_of(type_of(XrefEntry_Rec.obj)));
        assert(size_of(XrefEntry_Rec) == 24, "XrefEntry_Rec has size % instead of 24", size_of(XrefEntry_Rec));
    }

    {
        instance: Xref_Rec;
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 0, "Xref_Rec.mmgr has unexpected offset % instead of 0", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.mmgr)) == 8, "Xref_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Xref_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 8, "Xref_Rec.error has unexpected offset % instead of 8", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.error)) == 8, "Xref_Rec.error has unexpected size % instead of 8", size_of(type_of(Xref_Rec.error)));
        assert(((cast(*void)(*instance.start_offset)) - cast(*void)(*instance)) == 16, "Xref_Rec.start_offset has unexpected offset % instead of 16", ((cast(*void)(*instance.start_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.start_offset)) == 4, "Xref_Rec.start_offset has unexpected size % instead of 4", size_of(type_of(Xref_Rec.start_offset)));
        assert(((cast(*void)(*instance.entries)) - cast(*void)(*instance)) == 24, "Xref_Rec.entries has unexpected offset % instead of 24", ((cast(*void)(*instance.entries)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.entries)) == 8, "Xref_Rec.entries has unexpected size % instead of 8", size_of(type_of(Xref_Rec.entries)));
        assert(((cast(*void)(*instance.addr)) - cast(*void)(*instance)) == 32, "Xref_Rec.addr has unexpected offset % instead of 32", ((cast(*void)(*instance.addr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.addr)) == 4, "Xref_Rec.addr has unexpected size % instead of 4", size_of(type_of(Xref_Rec.addr)));
        assert(((cast(*void)(*instance.prev)) - cast(*void)(*instance)) == 40, "Xref_Rec.prev has unexpected offset % instead of 40", ((cast(*void)(*instance.prev)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.prev)) == 8, "Xref_Rec.prev has unexpected size % instead of 8", size_of(type_of(Xref_Rec.prev)));
        assert(((cast(*void)(*instance.trailer)) - cast(*void)(*instance)) == 48, "Xref_Rec.trailer has unexpected offset % instead of 48", ((cast(*void)(*instance.trailer)) - cast(*void)(*instance)));
        assert(size_of(type_of(Xref_Rec.trailer)) == 8, "Xref_Rec.trailer has unexpected size % instead of 8", size_of(type_of(Xref_Rec.trailer)));
        assert(size_of(Xref_Rec) == 56, "Xref_Rec has size % instead of 56", size_of(Xref_Rec));
    }

    {
        instance: Direct_Rec;
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 0, "Direct_Rec.header has unexpected offset % instead of 0", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(Direct_Rec.header)) == 8, "Direct_Rec.header has unexpected size % instead of 8", size_of(type_of(Direct_Rec.header)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Direct_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Direct_Rec.mmgr)) == 8, "Direct_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Direct_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 16, "Direct_Rec.error has unexpected offset % instead of 16", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Direct_Rec.error)) == 8, "Direct_Rec.error has unexpected size % instead of 8", size_of(type_of(Direct_Rec.error)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 24, "Direct_Rec.value has unexpected offset % instead of 24", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(Direct_Rec.value)) == 8, "Direct_Rec.value has unexpected size % instead of 8", size_of(type_of(Direct_Rec.value)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 32, "Direct_Rec.len has unexpected offset % instead of 32", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(Direct_Rec.len)) == 4, "Direct_Rec.len has unexpected size % instead of 4", size_of(type_of(Direct_Rec.len)));
        assert(size_of(Direct_Rec) == 40, "Direct_Rec has size % instead of 40", size_of(Direct_Rec));
    }

    {
        instance: CharData;
        assert(((cast(*void)(*instance.char_cd)) - cast(*void)(*instance)) == 0, "CharData.char_cd has unexpected offset % instead of 0", ((cast(*void)(*instance.char_cd)) - cast(*void)(*instance)));
        assert(size_of(type_of(CharData.char_cd)) == 2, "CharData.char_cd has unexpected size % instead of 2", size_of(type_of(CharData.char_cd)));
        assert(((cast(*void)(*instance.unicode)) - cast(*void)(*instance)) == 2, "CharData.unicode has unexpected offset % instead of 2", ((cast(*void)(*instance.unicode)) - cast(*void)(*instance)));
        assert(size_of(type_of(CharData.unicode)) == 2, "CharData.unicode has unexpected size % instead of 2", size_of(type_of(CharData.unicode)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 4, "CharData.width has unexpected offset % instead of 4", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(CharData.width)) == 2, "CharData.width has unexpected size % instead of 2", size_of(type_of(CharData.width)));
        assert(size_of(CharData) == 6, "CharData has size % instead of 6", size_of(CharData));
    }

    {
        instance: CID_Width;
        assert(((cast(*void)(*instance.cid)) - cast(*void)(*instance)) == 0, "CID_Width.cid has unexpected offset % instead of 0", ((cast(*void)(*instance.cid)) - cast(*void)(*instance)));
        assert(size_of(type_of(CID_Width.cid)) == 2, "CID_Width.cid has unexpected size % instead of 2", size_of(type_of(CID_Width.cid)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 2, "CID_Width.width has unexpected offset % instead of 2", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(CID_Width.width)) == 2, "CID_Width.width has unexpected size % instead of 2", size_of(type_of(CID_Width.width)));
        assert(size_of(CID_Width) == 4, "CID_Width has size % instead of 4", size_of(CID_Width));
    }

    {
        instance: FontDef_Rec;
        assert(((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)) == 0, "FontDef_Rec.sig_bytes has unexpected offset % instead of 0", ((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.sig_bytes)) == 4, "FontDef_Rec.sig_bytes has unexpected size % instead of 4", size_of(type_of(FontDef_Rec.sig_bytes)));
        assert(((cast(*void)(*instance.base_font)) - cast(*void)(*instance)) == 4, "FontDef_Rec.base_font has unexpected offset % instead of 4", ((cast(*void)(*instance.base_font)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.base_font)) == 128, "FontDef_Rec.base_font has unexpected size % instead of 128", size_of(type_of(FontDef_Rec.base_font)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 136, "FontDef_Rec.mmgr has unexpected offset % instead of 136", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.mmgr)) == 8, "FontDef_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.mmgr)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 144, "FontDef_Rec.error has unexpected offset % instead of 144", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.error)) == 8, "FontDef_Rec.error has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.error)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 152, "FontDef_Rec.type has unexpected offset % instead of 152", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.type)) == 4, "FontDef_Rec.type has unexpected size % instead of 4", size_of(type_of(FontDef_Rec.type)));
        assert(((cast(*void)(*instance.clean_fn)) - cast(*void)(*instance)) == 160, "FontDef_Rec.clean_fn has unexpected offset % instead of 160", ((cast(*void)(*instance.clean_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.clean_fn)) == 8, "FontDef_Rec.clean_fn has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.clean_fn)));
        assert(((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)) == 168, "FontDef_Rec.free_fn has unexpected offset % instead of 168", ((cast(*void)(*instance.free_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.free_fn)) == 8, "FontDef_Rec.free_fn has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.free_fn)));
        assert(((cast(*void)(*instance.init_fn)) - cast(*void)(*instance)) == 176, "FontDef_Rec.init_fn has unexpected offset % instead of 176", ((cast(*void)(*instance.init_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.init_fn)) == 8, "FontDef_Rec.init_fn has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.init_fn)));
        assert(((cast(*void)(*instance.ascent)) - cast(*void)(*instance)) == 184, "FontDef_Rec.ascent has unexpected offset % instead of 184", ((cast(*void)(*instance.ascent)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.ascent)) == 2, "FontDef_Rec.ascent has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.ascent)));
        assert(((cast(*void)(*instance.descent)) - cast(*void)(*instance)) == 186, "FontDef_Rec.descent has unexpected offset % instead of 186", ((cast(*void)(*instance.descent)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.descent)) == 2, "FontDef_Rec.descent has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.descent)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 188, "FontDef_Rec.flags has unexpected offset % instead of 188", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.flags)) == 4, "FontDef_Rec.flags has unexpected size % instead of 4", size_of(type_of(FontDef_Rec.flags)));
        assert(((cast(*void)(*instance.font_bbox)) - cast(*void)(*instance)) == 192, "FontDef_Rec.font_bbox has unexpected offset % instead of 192", ((cast(*void)(*instance.font_bbox)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.font_bbox)) == 16, "FontDef_Rec.font_bbox has unexpected size % instead of 16", size_of(type_of(FontDef_Rec.font_bbox)));
        assert(((cast(*void)(*instance.italic_angle)) - cast(*void)(*instance)) == 208, "FontDef_Rec.italic_angle has unexpected offset % instead of 208", ((cast(*void)(*instance.italic_angle)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.italic_angle)) == 2, "FontDef_Rec.italic_angle has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.italic_angle)));
        assert(((cast(*void)(*instance.stemv)) - cast(*void)(*instance)) == 210, "FontDef_Rec.stemv has unexpected offset % instead of 210", ((cast(*void)(*instance.stemv)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.stemv)) == 2, "FontDef_Rec.stemv has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.stemv)));
        assert(((cast(*void)(*instance.avg_width)) - cast(*void)(*instance)) == 212, "FontDef_Rec.avg_width has unexpected offset % instead of 212", ((cast(*void)(*instance.avg_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.avg_width)) == 2, "FontDef_Rec.avg_width has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.avg_width)));
        assert(((cast(*void)(*instance.max_width)) - cast(*void)(*instance)) == 214, "FontDef_Rec.max_width has unexpected offset % instead of 214", ((cast(*void)(*instance.max_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.max_width)) == 2, "FontDef_Rec.max_width has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.max_width)));
        assert(((cast(*void)(*instance.missing_width)) - cast(*void)(*instance)) == 216, "FontDef_Rec.missing_width has unexpected offset % instead of 216", ((cast(*void)(*instance.missing_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.missing_width)) == 2, "FontDef_Rec.missing_width has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.missing_width)));
        assert(((cast(*void)(*instance.stemh)) - cast(*void)(*instance)) == 218, "FontDef_Rec.stemh has unexpected offset % instead of 218", ((cast(*void)(*instance.stemh)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.stemh)) == 2, "FontDef_Rec.stemh has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.stemh)));
        assert(((cast(*void)(*instance.x_height)) - cast(*void)(*instance)) == 220, "FontDef_Rec.x_height has unexpected offset % instead of 220", ((cast(*void)(*instance.x_height)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.x_height)) == 2, "FontDef_Rec.x_height has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.x_height)));
        assert(((cast(*void)(*instance.cap_height)) - cast(*void)(*instance)) == 222, "FontDef_Rec.cap_height has unexpected offset % instead of 222", ((cast(*void)(*instance.cap_height)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.cap_height)) == 2, "FontDef_Rec.cap_height has unexpected size % instead of 2", size_of(type_of(FontDef_Rec.cap_height)));
        assert(((cast(*void)(*instance.descriptor)) - cast(*void)(*instance)) == 224, "FontDef_Rec.descriptor has unexpected offset % instead of 224", ((cast(*void)(*instance.descriptor)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.descriptor)) == 8, "FontDef_Rec.descriptor has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.descriptor)));
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 232, "FontDef_Rec.data has unexpected offset % instead of 232", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.data)) == 8, "FontDef_Rec.data has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.data)));
        assert(((cast(*void)(*instance.valid)) - cast(*void)(*instance)) == 240, "FontDef_Rec.valid has unexpected offset % instead of 240", ((cast(*void)(*instance.valid)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.valid)) == 4, "FontDef_Rec.valid has unexpected size % instead of 4", size_of(type_of(FontDef_Rec.valid)));
        assert(((cast(*void)(*instance.attr)) - cast(*void)(*instance)) == 248, "FontDef_Rec.attr has unexpected offset % instead of 248", ((cast(*void)(*instance.attr)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontDef_Rec.attr)) == 8, "FontDef_Rec.attr has unexpected size % instead of 8", size_of(type_of(FontDef_Rec.attr)));
        assert(size_of(FontDef_Rec) == 256, "FontDef_Rec has size % instead of 256", size_of(FontDef_Rec));
    }

    {
        instance: _HPDF_Type1FontDefAttrRec;
        assert(((cast(*void)(*instance.first_char)) - cast(*void)(*instance)) == 0, "_HPDF_Type1FontDefAttrRec.first_char has unexpected offset % instead of 0", ((cast(*void)(*instance.first_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.first_char)) == 1, "_HPDF_Type1FontDefAttrRec.first_char has unexpected size % instead of 1", size_of(type_of(_HPDF_Type1FontDefAttrRec.first_char)));
        assert(((cast(*void)(*instance.last_char)) - cast(*void)(*instance)) == 1, "_HPDF_Type1FontDefAttrRec.last_char has unexpected offset % instead of 1", ((cast(*void)(*instance.last_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.last_char)) == 1, "_HPDF_Type1FontDefAttrRec.last_char has unexpected size % instead of 1", size_of(type_of(_HPDF_Type1FontDefAttrRec.last_char)));
        assert(((cast(*void)(*instance.widths)) - cast(*void)(*instance)) == 8, "_HPDF_Type1FontDefAttrRec.widths has unexpected offset % instead of 8", ((cast(*void)(*instance.widths)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.widths)) == 8, "_HPDF_Type1FontDefAttrRec.widths has unexpected size % instead of 8", size_of(type_of(_HPDF_Type1FontDefAttrRec.widths)));
        assert(((cast(*void)(*instance.widths_count)) - cast(*void)(*instance)) == 16, "_HPDF_Type1FontDefAttrRec.widths_count has unexpected offset % instead of 16", ((cast(*void)(*instance.widths_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.widths_count)) == 4, "_HPDF_Type1FontDefAttrRec.widths_count has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.widths_count)));
        assert(((cast(*void)(*instance.leading)) - cast(*void)(*instance)) == 20, "_HPDF_Type1FontDefAttrRec.leading has unexpected offset % instead of 20", ((cast(*void)(*instance.leading)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.leading)) == 2, "_HPDF_Type1FontDefAttrRec.leading has unexpected size % instead of 2", size_of(type_of(_HPDF_Type1FontDefAttrRec.leading)));
        assert(((cast(*void)(*instance.char_set)) - cast(*void)(*instance)) == 24, "_HPDF_Type1FontDefAttrRec.char_set has unexpected offset % instead of 24", ((cast(*void)(*instance.char_set)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.char_set)) == 8, "_HPDF_Type1FontDefAttrRec.char_set has unexpected size % instead of 8", size_of(type_of(_HPDF_Type1FontDefAttrRec.char_set)));
        assert(((cast(*void)(*instance.encoding_scheme)) - cast(*void)(*instance)) == 32, "_HPDF_Type1FontDefAttrRec.encoding_scheme has unexpected offset % instead of 32", ((cast(*void)(*instance.encoding_scheme)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.encoding_scheme)) == 128, "_HPDF_Type1FontDefAttrRec.encoding_scheme has unexpected size % instead of 128", size_of(type_of(_HPDF_Type1FontDefAttrRec.encoding_scheme)));
        assert(((cast(*void)(*instance.length1)) - cast(*void)(*instance)) == 160, "_HPDF_Type1FontDefAttrRec.length1 has unexpected offset % instead of 160", ((cast(*void)(*instance.length1)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.length1)) == 4, "_HPDF_Type1FontDefAttrRec.length1 has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.length1)));
        assert(((cast(*void)(*instance.length2)) - cast(*void)(*instance)) == 164, "_HPDF_Type1FontDefAttrRec.length2 has unexpected offset % instead of 164", ((cast(*void)(*instance.length2)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.length2)) == 4, "_HPDF_Type1FontDefAttrRec.length2 has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.length2)));
        assert(((cast(*void)(*instance.length3)) - cast(*void)(*instance)) == 168, "_HPDF_Type1FontDefAttrRec.length3 has unexpected offset % instead of 168", ((cast(*void)(*instance.length3)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.length3)) == 4, "_HPDF_Type1FontDefAttrRec.length3 has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.length3)));
        assert(((cast(*void)(*instance.is_base14font)) - cast(*void)(*instance)) == 172, "_HPDF_Type1FontDefAttrRec.is_base14font has unexpected offset % instead of 172", ((cast(*void)(*instance.is_base14font)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.is_base14font)) == 4, "_HPDF_Type1FontDefAttrRec.is_base14font has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.is_base14font)));
        assert(((cast(*void)(*instance.is_fixed_pitch)) - cast(*void)(*instance)) == 176, "_HPDF_Type1FontDefAttrRec.is_fixed_pitch has unexpected offset % instead of 176", ((cast(*void)(*instance.is_fixed_pitch)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.is_fixed_pitch)) == 4, "_HPDF_Type1FontDefAttrRec.is_fixed_pitch has unexpected size % instead of 4", size_of(type_of(_HPDF_Type1FontDefAttrRec.is_fixed_pitch)));
        assert(((cast(*void)(*instance.font_data)) - cast(*void)(*instance)) == 184, "_HPDF_Type1FontDefAttrRec.font_data has unexpected offset % instead of 184", ((cast(*void)(*instance.font_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_Type1FontDefAttrRec.font_data)) == 8, "_HPDF_Type1FontDefAttrRec.font_data has unexpected size % instead of 8", size_of(type_of(_HPDF_Type1FontDefAttrRec.font_data)));
        assert(size_of(_HPDF_Type1FontDefAttrRec) == 192, "_HPDF_Type1FontDefAttrRec has size % instead of 192", size_of(_HPDF_Type1FontDefAttrRec));
    }

    {
        instance: _HPDF_TTF_Table;
        assert(((cast(*void)(*instance.tag)) - cast(*void)(*instance)) == 0, "_HPDF_TTF_Table.tag has unexpected offset % instead of 0", ((cast(*void)(*instance.tag)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_TTF_Table.tag)) == 4, "_HPDF_TTF_Table.tag has unexpected size % instead of 4", size_of(type_of(_HPDF_TTF_Table.tag)));
        assert(((cast(*void)(*instance.check_sum)) - cast(*void)(*instance)) == 4, "_HPDF_TTF_Table.check_sum has unexpected offset % instead of 4", ((cast(*void)(*instance.check_sum)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_TTF_Table.check_sum)) == 4, "_HPDF_TTF_Table.check_sum has unexpected size % instead of 4", size_of(type_of(_HPDF_TTF_Table.check_sum)));
        assert(((cast(*void)(*instance.offset)) - cast(*void)(*instance)) == 8, "_HPDF_TTF_Table.offset has unexpected offset % instead of 8", ((cast(*void)(*instance.offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_TTF_Table.offset)) == 4, "_HPDF_TTF_Table.offset has unexpected size % instead of 4", size_of(type_of(_HPDF_TTF_Table.offset)));
        assert(((cast(*void)(*instance.length)) - cast(*void)(*instance)) == 12, "_HPDF_TTF_Table.length has unexpected offset % instead of 12", ((cast(*void)(*instance.length)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_TTF_Table.length)) == 4, "_HPDF_TTF_Table.length has unexpected size % instead of 4", size_of(type_of(_HPDF_TTF_Table.length)));
        assert(size_of(_HPDF_TTF_Table) == 16, "_HPDF_TTF_Table has size % instead of 16", size_of(_HPDF_TTF_Table));
    }

    {
        instance: TTF_OffsetTbl;
        assert(((cast(*void)(*instance.sfnt_version)) - cast(*void)(*instance)) == 0, "TTF_OffsetTbl.sfnt_version has unexpected offset % instead of 0", ((cast(*void)(*instance.sfnt_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.sfnt_version)) == 4, "TTF_OffsetTbl.sfnt_version has unexpected size % instead of 4", size_of(type_of(TTF_OffsetTbl.sfnt_version)));
        assert(((cast(*void)(*instance.num_tables)) - cast(*void)(*instance)) == 4, "TTF_OffsetTbl.num_tables has unexpected offset % instead of 4", ((cast(*void)(*instance.num_tables)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.num_tables)) == 2, "TTF_OffsetTbl.num_tables has unexpected size % instead of 2", size_of(type_of(TTF_OffsetTbl.num_tables)));
        assert(((cast(*void)(*instance.search_range)) - cast(*void)(*instance)) == 6, "TTF_OffsetTbl.search_range has unexpected offset % instead of 6", ((cast(*void)(*instance.search_range)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.search_range)) == 2, "TTF_OffsetTbl.search_range has unexpected size % instead of 2", size_of(type_of(TTF_OffsetTbl.search_range)));
        assert(((cast(*void)(*instance.entry_selector)) - cast(*void)(*instance)) == 8, "TTF_OffsetTbl.entry_selector has unexpected offset % instead of 8", ((cast(*void)(*instance.entry_selector)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.entry_selector)) == 2, "TTF_OffsetTbl.entry_selector has unexpected size % instead of 2", size_of(type_of(TTF_OffsetTbl.entry_selector)));
        assert(((cast(*void)(*instance.range_shift)) - cast(*void)(*instance)) == 10, "TTF_OffsetTbl.range_shift has unexpected offset % instead of 10", ((cast(*void)(*instance.range_shift)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.range_shift)) == 2, "TTF_OffsetTbl.range_shift has unexpected size % instead of 2", size_of(type_of(TTF_OffsetTbl.range_shift)));
        assert(((cast(*void)(*instance.table)) - cast(*void)(*instance)) == 16, "TTF_OffsetTbl.table has unexpected offset % instead of 16", ((cast(*void)(*instance.table)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_OffsetTbl.table)) == 8, "TTF_OffsetTbl.table has unexpected size % instead of 8", size_of(type_of(TTF_OffsetTbl.table)));
        assert(size_of(TTF_OffsetTbl) == 24, "TTF_OffsetTbl has size % instead of 24", size_of(TTF_OffsetTbl));
    }

    {
        instance: TTF_CmapRange;
        assert(((cast(*void)(*instance.format)) - cast(*void)(*instance)) == 0, "TTF_CmapRange.format has unexpected offset % instead of 0", ((cast(*void)(*instance.format)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.format)) == 2, "TTF_CmapRange.format has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.format)));
        assert(((cast(*void)(*instance.length)) - cast(*void)(*instance)) == 2, "TTF_CmapRange.length has unexpected offset % instead of 2", ((cast(*void)(*instance.length)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.length)) == 2, "TTF_CmapRange.length has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.length)));
        assert(((cast(*void)(*instance.language)) - cast(*void)(*instance)) == 4, "TTF_CmapRange.language has unexpected offset % instead of 4", ((cast(*void)(*instance.language)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.language)) == 2, "TTF_CmapRange.language has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.language)));
        assert(((cast(*void)(*instance.seg_count_x2)) - cast(*void)(*instance)) == 6, "TTF_CmapRange.seg_count_x2 has unexpected offset % instead of 6", ((cast(*void)(*instance.seg_count_x2)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.seg_count_x2)) == 2, "TTF_CmapRange.seg_count_x2 has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.seg_count_x2)));
        assert(((cast(*void)(*instance.search_range)) - cast(*void)(*instance)) == 8, "TTF_CmapRange.search_range has unexpected offset % instead of 8", ((cast(*void)(*instance.search_range)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.search_range)) == 2, "TTF_CmapRange.search_range has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.search_range)));
        assert(((cast(*void)(*instance.entry_selector)) - cast(*void)(*instance)) == 10, "TTF_CmapRange.entry_selector has unexpected offset % instead of 10", ((cast(*void)(*instance.entry_selector)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.entry_selector)) == 2, "TTF_CmapRange.entry_selector has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.entry_selector)));
        assert(((cast(*void)(*instance.range_shift)) - cast(*void)(*instance)) == 12, "TTF_CmapRange.range_shift has unexpected offset % instead of 12", ((cast(*void)(*instance.range_shift)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.range_shift)) == 2, "TTF_CmapRange.range_shift has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.range_shift)));
        assert(((cast(*void)(*instance.end_count)) - cast(*void)(*instance)) == 16, "TTF_CmapRange.end_count has unexpected offset % instead of 16", ((cast(*void)(*instance.end_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.end_count)) == 8, "TTF_CmapRange.end_count has unexpected size % instead of 8", size_of(type_of(TTF_CmapRange.end_count)));
        assert(((cast(*void)(*instance.reserved_pad)) - cast(*void)(*instance)) == 24, "TTF_CmapRange.reserved_pad has unexpected offset % instead of 24", ((cast(*void)(*instance.reserved_pad)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.reserved_pad)) == 2, "TTF_CmapRange.reserved_pad has unexpected size % instead of 2", size_of(type_of(TTF_CmapRange.reserved_pad)));
        assert(((cast(*void)(*instance.start_count)) - cast(*void)(*instance)) == 32, "TTF_CmapRange.start_count has unexpected offset % instead of 32", ((cast(*void)(*instance.start_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.start_count)) == 8, "TTF_CmapRange.start_count has unexpected size % instead of 8", size_of(type_of(TTF_CmapRange.start_count)));
        assert(((cast(*void)(*instance.id_delta)) - cast(*void)(*instance)) == 40, "TTF_CmapRange.id_delta has unexpected offset % instead of 40", ((cast(*void)(*instance.id_delta)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.id_delta)) == 8, "TTF_CmapRange.id_delta has unexpected size % instead of 8", size_of(type_of(TTF_CmapRange.id_delta)));
        assert(((cast(*void)(*instance.id_range_offset)) - cast(*void)(*instance)) == 48, "TTF_CmapRange.id_range_offset has unexpected offset % instead of 48", ((cast(*void)(*instance.id_range_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.id_range_offset)) == 8, "TTF_CmapRange.id_range_offset has unexpected size % instead of 8", size_of(type_of(TTF_CmapRange.id_range_offset)));
        assert(((cast(*void)(*instance.glyph_id_array)) - cast(*void)(*instance)) == 56, "TTF_CmapRange.glyph_id_array has unexpected offset % instead of 56", ((cast(*void)(*instance.glyph_id_array)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.glyph_id_array)) == 8, "TTF_CmapRange.glyph_id_array has unexpected size % instead of 8", size_of(type_of(TTF_CmapRange.glyph_id_array)));
        assert(((cast(*void)(*instance.glyph_id_array_count)) - cast(*void)(*instance)) == 64, "TTF_CmapRange.glyph_id_array_count has unexpected offset % instead of 64", ((cast(*void)(*instance.glyph_id_array_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_CmapRange.glyph_id_array_count)) == 4, "TTF_CmapRange.glyph_id_array_count has unexpected size % instead of 4", size_of(type_of(TTF_CmapRange.glyph_id_array_count)));
        assert(size_of(TTF_CmapRange) == 72, "TTF_CmapRange has size % instead of 72", size_of(TTF_CmapRange));
    }

    {
        instance: TTF_GryphOffsets;
        assert(((cast(*void)(*instance.base_offset)) - cast(*void)(*instance)) == 0, "TTF_GryphOffsets.base_offset has unexpected offset % instead of 0", ((cast(*void)(*instance.base_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_GryphOffsets.base_offset)) == 4, "TTF_GryphOffsets.base_offset has unexpected size % instead of 4", size_of(type_of(TTF_GryphOffsets.base_offset)));
        assert(((cast(*void)(*instance.offsets)) - cast(*void)(*instance)) == 8, "TTF_GryphOffsets.offsets has unexpected offset % instead of 8", ((cast(*void)(*instance.offsets)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_GryphOffsets.offsets)) == 8, "TTF_GryphOffsets.offsets has unexpected size % instead of 8", size_of(type_of(TTF_GryphOffsets.offsets)));
        assert(((cast(*void)(*instance.flgs)) - cast(*void)(*instance)) == 16, "TTF_GryphOffsets.flgs has unexpected offset % instead of 16", ((cast(*void)(*instance.flgs)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_GryphOffsets.flgs)) == 8, "TTF_GryphOffsets.flgs has unexpected size % instead of 8", size_of(type_of(TTF_GryphOffsets.flgs)));
        assert(size_of(TTF_GryphOffsets) == 24, "TTF_GryphOffsets has size % instead of 24", size_of(TTF_GryphOffsets));
    }

    {
        instance: TTF_LongHorMetric;
        assert(((cast(*void)(*instance.advance_width)) - cast(*void)(*instance)) == 0, "TTF_LongHorMetric.advance_width has unexpected offset % instead of 0", ((cast(*void)(*instance.advance_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_LongHorMetric.advance_width)) == 2, "TTF_LongHorMetric.advance_width has unexpected size % instead of 2", size_of(type_of(TTF_LongHorMetric.advance_width)));
        assert(((cast(*void)(*instance.lsb)) - cast(*void)(*instance)) == 2, "TTF_LongHorMetric.lsb has unexpected offset % instead of 2", ((cast(*void)(*instance.lsb)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_LongHorMetric.lsb)) == 2, "TTF_LongHorMetric.lsb has unexpected size % instead of 2", size_of(type_of(TTF_LongHorMetric.lsb)));
        assert(size_of(TTF_LongHorMetric) == 4, "TTF_LongHorMetric has size % instead of 4", size_of(TTF_LongHorMetric));
    }

    {
        instance: TTF_FontHeader;
        assert(((cast(*void)(*instance.version_number)) - cast(*void)(*instance)) == 0, "TTF_FontHeader.version_number has unexpected offset % instead of 0", ((cast(*void)(*instance.version_number)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.version_number)) == 4, "TTF_FontHeader.version_number has unexpected size % instead of 4", size_of(type_of(TTF_FontHeader.version_number)));
        assert(((cast(*void)(*instance.font_revision)) - cast(*void)(*instance)) == 4, "TTF_FontHeader.font_revision has unexpected offset % instead of 4", ((cast(*void)(*instance.font_revision)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.font_revision)) == 4, "TTF_FontHeader.font_revision has unexpected size % instead of 4", size_of(type_of(TTF_FontHeader.font_revision)));
        assert(((cast(*void)(*instance.check_sum_adjustment)) - cast(*void)(*instance)) == 8, "TTF_FontHeader.check_sum_adjustment has unexpected offset % instead of 8", ((cast(*void)(*instance.check_sum_adjustment)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.check_sum_adjustment)) == 4, "TTF_FontHeader.check_sum_adjustment has unexpected size % instead of 4", size_of(type_of(TTF_FontHeader.check_sum_adjustment)));
        assert(((cast(*void)(*instance.magic_number)) - cast(*void)(*instance)) == 12, "TTF_FontHeader.magic_number has unexpected offset % instead of 12", ((cast(*void)(*instance.magic_number)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.magic_number)) == 4, "TTF_FontHeader.magic_number has unexpected size % instead of 4", size_of(type_of(TTF_FontHeader.magic_number)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 16, "TTF_FontHeader.flags has unexpected offset % instead of 16", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.flags)) == 2, "TTF_FontHeader.flags has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.flags)));
        assert(((cast(*void)(*instance.units_per_em)) - cast(*void)(*instance)) == 18, "TTF_FontHeader.units_per_em has unexpected offset % instead of 18", ((cast(*void)(*instance.units_per_em)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.units_per_em)) == 2, "TTF_FontHeader.units_per_em has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.units_per_em)));
        assert(((cast(*void)(*instance.created)) - cast(*void)(*instance)) == 20, "TTF_FontHeader.created has unexpected offset % instead of 20", ((cast(*void)(*instance.created)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.created)) == 8, "TTF_FontHeader.created has unexpected size % instead of 8", size_of(type_of(TTF_FontHeader.created)));
        assert(((cast(*void)(*instance.modified)) - cast(*void)(*instance)) == 28, "TTF_FontHeader.modified has unexpected offset % instead of 28", ((cast(*void)(*instance.modified)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.modified)) == 8, "TTF_FontHeader.modified has unexpected size % instead of 8", size_of(type_of(TTF_FontHeader.modified)));
        assert(((cast(*void)(*instance.x_min)) - cast(*void)(*instance)) == 36, "TTF_FontHeader.x_min has unexpected offset % instead of 36", ((cast(*void)(*instance.x_min)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.x_min)) == 2, "TTF_FontHeader.x_min has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.x_min)));
        assert(((cast(*void)(*instance.y_min)) - cast(*void)(*instance)) == 38, "TTF_FontHeader.y_min has unexpected offset % instead of 38", ((cast(*void)(*instance.y_min)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.y_min)) == 2, "TTF_FontHeader.y_min has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.y_min)));
        assert(((cast(*void)(*instance.x_max)) - cast(*void)(*instance)) == 40, "TTF_FontHeader.x_max has unexpected offset % instead of 40", ((cast(*void)(*instance.x_max)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.x_max)) == 2, "TTF_FontHeader.x_max has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.x_max)));
        assert(((cast(*void)(*instance.y_max)) - cast(*void)(*instance)) == 42, "TTF_FontHeader.y_max has unexpected offset % instead of 42", ((cast(*void)(*instance.y_max)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.y_max)) == 2, "TTF_FontHeader.y_max has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.y_max)));
        assert(((cast(*void)(*instance.mac_style)) - cast(*void)(*instance)) == 44, "TTF_FontHeader.mac_style has unexpected offset % instead of 44", ((cast(*void)(*instance.mac_style)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.mac_style)) == 2, "TTF_FontHeader.mac_style has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.mac_style)));
        assert(((cast(*void)(*instance.lowest_rec_ppem)) - cast(*void)(*instance)) == 46, "TTF_FontHeader.lowest_rec_ppem has unexpected offset % instead of 46", ((cast(*void)(*instance.lowest_rec_ppem)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.lowest_rec_ppem)) == 2, "TTF_FontHeader.lowest_rec_ppem has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.lowest_rec_ppem)));
        assert(((cast(*void)(*instance.font_direction_hint)) - cast(*void)(*instance)) == 48, "TTF_FontHeader.font_direction_hint has unexpected offset % instead of 48", ((cast(*void)(*instance.font_direction_hint)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.font_direction_hint)) == 2, "TTF_FontHeader.font_direction_hint has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.font_direction_hint)));
        assert(((cast(*void)(*instance.index_to_loc_format)) - cast(*void)(*instance)) == 50, "TTF_FontHeader.index_to_loc_format has unexpected offset % instead of 50", ((cast(*void)(*instance.index_to_loc_format)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.index_to_loc_format)) == 2, "TTF_FontHeader.index_to_loc_format has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.index_to_loc_format)));
        assert(((cast(*void)(*instance.glyph_data_format)) - cast(*void)(*instance)) == 52, "TTF_FontHeader.glyph_data_format has unexpected offset % instead of 52", ((cast(*void)(*instance.glyph_data_format)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_FontHeader.glyph_data_format)) == 2, "TTF_FontHeader.glyph_data_format has unexpected size % instead of 2", size_of(type_of(TTF_FontHeader.glyph_data_format)));
        assert(size_of(TTF_FontHeader) == 56, "TTF_FontHeader has size % instead of 56", size_of(TTF_FontHeader));
    }

    {
        instance: TTF_NameRecord;
        assert(((cast(*void)(*instance.platform_id)) - cast(*void)(*instance)) == 0, "TTF_NameRecord.platform_id has unexpected offset % instead of 0", ((cast(*void)(*instance.platform_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.platform_id)) == 2, "TTF_NameRecord.platform_id has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.platform_id)));
        assert(((cast(*void)(*instance.encoding_id)) - cast(*void)(*instance)) == 2, "TTF_NameRecord.encoding_id has unexpected offset % instead of 2", ((cast(*void)(*instance.encoding_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.encoding_id)) == 2, "TTF_NameRecord.encoding_id has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.encoding_id)));
        assert(((cast(*void)(*instance.language_id)) - cast(*void)(*instance)) == 4, "TTF_NameRecord.language_id has unexpected offset % instead of 4", ((cast(*void)(*instance.language_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.language_id)) == 2, "TTF_NameRecord.language_id has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.language_id)));
        assert(((cast(*void)(*instance.name_id)) - cast(*void)(*instance)) == 6, "TTF_NameRecord.name_id has unexpected offset % instead of 6", ((cast(*void)(*instance.name_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.name_id)) == 2, "TTF_NameRecord.name_id has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.name_id)));
        assert(((cast(*void)(*instance.length)) - cast(*void)(*instance)) == 8, "TTF_NameRecord.length has unexpected offset % instead of 8", ((cast(*void)(*instance.length)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.length)) == 2, "TTF_NameRecord.length has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.length)));
        assert(((cast(*void)(*instance.offset)) - cast(*void)(*instance)) == 10, "TTF_NameRecord.offset has unexpected offset % instead of 10", ((cast(*void)(*instance.offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NameRecord.offset)) == 2, "TTF_NameRecord.offset has unexpected size % instead of 2", size_of(type_of(TTF_NameRecord.offset)));
        assert(size_of(TTF_NameRecord) == 12, "TTF_NameRecord has size % instead of 12", size_of(TTF_NameRecord));
    }

    {
        instance: TTF_NamingTable;
        assert(((cast(*void)(*instance.format)) - cast(*void)(*instance)) == 0, "TTF_NamingTable.format has unexpected offset % instead of 0", ((cast(*void)(*instance.format)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NamingTable.format)) == 2, "TTF_NamingTable.format has unexpected size % instead of 2", size_of(type_of(TTF_NamingTable.format)));
        assert(((cast(*void)(*instance.count)) - cast(*void)(*instance)) == 2, "TTF_NamingTable.count has unexpected offset % instead of 2", ((cast(*void)(*instance.count)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NamingTable.count)) == 2, "TTF_NamingTable.count has unexpected size % instead of 2", size_of(type_of(TTF_NamingTable.count)));
        assert(((cast(*void)(*instance.string_offset)) - cast(*void)(*instance)) == 4, "TTF_NamingTable.string_offset has unexpected offset % instead of 4", ((cast(*void)(*instance.string_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NamingTable.string_offset)) == 2, "TTF_NamingTable.string_offset has unexpected size % instead of 2", size_of(type_of(TTF_NamingTable.string_offset)));
        assert(((cast(*void)(*instance.name_records)) - cast(*void)(*instance)) == 8, "TTF_NamingTable.name_records has unexpected offset % instead of 8", ((cast(*void)(*instance.name_records)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTF_NamingTable.name_records)) == 8, "TTF_NamingTable.name_records has unexpected size % instead of 8", size_of(type_of(TTF_NamingTable.name_records)));
        assert(size_of(TTF_NamingTable) == 16, "TTF_NamingTable has size % instead of 16", size_of(TTF_NamingTable));
    }

    {
        instance: TTFontDefAttr_Rec;
        assert(((cast(*void)(*instance.base_font)) - cast(*void)(*instance)) == 0, "TTFontDefAttr_Rec.base_font has unexpected offset % instead of 0", ((cast(*void)(*instance.base_font)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.base_font)) == 128, "TTFontDefAttr_Rec.base_font has unexpected size % instead of 128", size_of(type_of(TTFontDefAttr_Rec.base_font)));
        assert(((cast(*void)(*instance.first_char)) - cast(*void)(*instance)) == 128, "TTFontDefAttr_Rec.first_char has unexpected offset % instead of 128", ((cast(*void)(*instance.first_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.first_char)) == 1, "TTFontDefAttr_Rec.first_char has unexpected size % instead of 1", size_of(type_of(TTFontDefAttr_Rec.first_char)));
        assert(((cast(*void)(*instance.last_char)) - cast(*void)(*instance)) == 129, "TTFontDefAttr_Rec.last_char has unexpected offset % instead of 129", ((cast(*void)(*instance.last_char)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.last_char)) == 1, "TTFontDefAttr_Rec.last_char has unexpected size % instead of 1", size_of(type_of(TTFontDefAttr_Rec.last_char)));
        assert(((cast(*void)(*instance.char_set)) - cast(*void)(*instance)) == 136, "TTFontDefAttr_Rec.char_set has unexpected offset % instead of 136", ((cast(*void)(*instance.char_set)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.char_set)) == 8, "TTFontDefAttr_Rec.char_set has unexpected size % instead of 8", size_of(type_of(TTFontDefAttr_Rec.char_set)));
        assert(((cast(*void)(*instance.tag_name)) - cast(*void)(*instance)) == 144, "TTFontDefAttr_Rec.tag_name has unexpected offset % instead of 144", ((cast(*void)(*instance.tag_name)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.tag_name)) == 7, "TTFontDefAttr_Rec.tag_name has unexpected size % instead of 7", size_of(type_of(TTFontDefAttr_Rec.tag_name)));
        assert(((cast(*void)(*instance.tag_name2)) - cast(*void)(*instance)) == 151, "TTFontDefAttr_Rec.tag_name2 has unexpected offset % instead of 151", ((cast(*void)(*instance.tag_name2)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.tag_name2)) == 14, "TTFontDefAttr_Rec.tag_name2 has unexpected size % instead of 14", size_of(type_of(TTFontDefAttr_Rec.tag_name2)));
        assert(((cast(*void)(*instance.header)) - cast(*void)(*instance)) == 168, "TTFontDefAttr_Rec.header has unexpected offset % instead of 168", ((cast(*void)(*instance.header)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.header)) == 56, "TTFontDefAttr_Rec.header has unexpected size % instead of 56", size_of(type_of(TTFontDefAttr_Rec.header)));
        assert(((cast(*void)(*instance.glyph_tbl)) - cast(*void)(*instance)) == 224, "TTFontDefAttr_Rec.glyph_tbl has unexpected offset % instead of 224", ((cast(*void)(*instance.glyph_tbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.glyph_tbl)) == 24, "TTFontDefAttr_Rec.glyph_tbl has unexpected size % instead of 24", size_of(type_of(TTFontDefAttr_Rec.glyph_tbl)));
        assert(((cast(*void)(*instance.num_glyphs)) - cast(*void)(*instance)) == 248, "TTFontDefAttr_Rec.num_glyphs has unexpected offset % instead of 248", ((cast(*void)(*instance.num_glyphs)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.num_glyphs)) == 2, "TTFontDefAttr_Rec.num_glyphs has unexpected size % instead of 2", size_of(type_of(TTFontDefAttr_Rec.num_glyphs)));
        assert(((cast(*void)(*instance.name_tbl)) - cast(*void)(*instance)) == 256, "TTFontDefAttr_Rec.name_tbl has unexpected offset % instead of 256", ((cast(*void)(*instance.name_tbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.name_tbl)) == 16, "TTFontDefAttr_Rec.name_tbl has unexpected size % instead of 16", size_of(type_of(TTFontDefAttr_Rec.name_tbl)));
        assert(((cast(*void)(*instance.h_metric)) - cast(*void)(*instance)) == 272, "TTFontDefAttr_Rec.h_metric has unexpected offset % instead of 272", ((cast(*void)(*instance.h_metric)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.h_metric)) == 8, "TTFontDefAttr_Rec.h_metric has unexpected size % instead of 8", size_of(type_of(TTFontDefAttr_Rec.h_metric)));
        assert(((cast(*void)(*instance.num_h_metric)) - cast(*void)(*instance)) == 280, "TTFontDefAttr_Rec.num_h_metric has unexpected offset % instead of 280", ((cast(*void)(*instance.num_h_metric)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.num_h_metric)) == 2, "TTFontDefAttr_Rec.num_h_metric has unexpected size % instead of 2", size_of(type_of(TTFontDefAttr_Rec.num_h_metric)));
        assert(((cast(*void)(*instance.offset_tbl)) - cast(*void)(*instance)) == 288, "TTFontDefAttr_Rec.offset_tbl has unexpected offset % instead of 288", ((cast(*void)(*instance.offset_tbl)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.offset_tbl)) == 24, "TTFontDefAttr_Rec.offset_tbl has unexpected size % instead of 24", size_of(type_of(TTFontDefAttr_Rec.offset_tbl)));
        assert(((cast(*void)(*instance.cmap)) - cast(*void)(*instance)) == 312, "TTFontDefAttr_Rec.cmap has unexpected offset % instead of 312", ((cast(*void)(*instance.cmap)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.cmap)) == 72, "TTFontDefAttr_Rec.cmap has unexpected size % instead of 72", size_of(type_of(TTFontDefAttr_Rec.cmap)));
        assert(((cast(*void)(*instance.fs_type)) - cast(*void)(*instance)) == 384, "TTFontDefAttr_Rec.fs_type has unexpected offset % instead of 384", ((cast(*void)(*instance.fs_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.fs_type)) == 2, "TTFontDefAttr_Rec.fs_type has unexpected size % instead of 2", size_of(type_of(TTFontDefAttr_Rec.fs_type)));
        assert(((cast(*void)(*instance.sfamilyclass)) - cast(*void)(*instance)) == 386, "TTFontDefAttr_Rec.sfamilyclass has unexpected offset % instead of 386", ((cast(*void)(*instance.sfamilyclass)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.sfamilyclass)) == 2, "TTFontDefAttr_Rec.sfamilyclass has unexpected size % instead of 2", size_of(type_of(TTFontDefAttr_Rec.sfamilyclass)));
        assert(((cast(*void)(*instance.panose)) - cast(*void)(*instance)) == 388, "TTFontDefAttr_Rec.panose has unexpected offset % instead of 388", ((cast(*void)(*instance.panose)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.panose)) == 10, "TTFontDefAttr_Rec.panose has unexpected size % instead of 10", size_of(type_of(TTFontDefAttr_Rec.panose)));
        assert(((cast(*void)(*instance.code_page_range1)) - cast(*void)(*instance)) == 400, "TTFontDefAttr_Rec.code_page_range1 has unexpected offset % instead of 400", ((cast(*void)(*instance.code_page_range1)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.code_page_range1)) == 4, "TTFontDefAttr_Rec.code_page_range1 has unexpected size % instead of 4", size_of(type_of(TTFontDefAttr_Rec.code_page_range1)));
        assert(((cast(*void)(*instance.code_page_range2)) - cast(*void)(*instance)) == 404, "TTFontDefAttr_Rec.code_page_range2 has unexpected offset % instead of 404", ((cast(*void)(*instance.code_page_range2)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.code_page_range2)) == 4, "TTFontDefAttr_Rec.code_page_range2 has unexpected size % instead of 4", size_of(type_of(TTFontDefAttr_Rec.code_page_range2)));
        assert(((cast(*void)(*instance.length1)) - cast(*void)(*instance)) == 408, "TTFontDefAttr_Rec.length1 has unexpected offset % instead of 408", ((cast(*void)(*instance.length1)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.length1)) == 4, "TTFontDefAttr_Rec.length1 has unexpected size % instead of 4", size_of(type_of(TTFontDefAttr_Rec.length1)));
        assert(((cast(*void)(*instance.embedding)) - cast(*void)(*instance)) == 412, "TTFontDefAttr_Rec.embedding has unexpected offset % instead of 412", ((cast(*void)(*instance.embedding)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.embedding)) == 4, "TTFontDefAttr_Rec.embedding has unexpected size % instead of 4", size_of(type_of(TTFontDefAttr_Rec.embedding)));
        assert(((cast(*void)(*instance.is_cidfont)) - cast(*void)(*instance)) == 416, "TTFontDefAttr_Rec.is_cidfont has unexpected offset % instead of 416", ((cast(*void)(*instance.is_cidfont)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.is_cidfont)) == 4, "TTFontDefAttr_Rec.is_cidfont has unexpected size % instead of 4", size_of(type_of(TTFontDefAttr_Rec.is_cidfont)));
        assert(((cast(*void)(*instance.stream)) - cast(*void)(*instance)) == 424, "TTFontDefAttr_Rec.stream has unexpected offset % instead of 424", ((cast(*void)(*instance.stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(TTFontDefAttr_Rec.stream)) == 8, "TTFontDefAttr_Rec.stream has unexpected size % instead of 8", size_of(type_of(TTFontDefAttr_Rec.stream)));
        assert(size_of(TTFontDefAttr_Rec) == 432, "TTFontDefAttr_Rec has size % instead of 432", size_of(TTFontDefAttr_Rec));
    }

    {
        instance: _HPDF_CIDFontDefAttrRec;
        assert(((cast(*void)(*instance.widths)) - cast(*void)(*instance)) == 0, "_HPDF_CIDFontDefAttrRec.widths has unexpected offset % instead of 0", ((cast(*void)(*instance.widths)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_CIDFontDefAttrRec.widths)) == 8, "_HPDF_CIDFontDefAttrRec.widths has unexpected size % instead of 8", size_of(type_of(_HPDF_CIDFontDefAttrRec.widths)));
        assert(((cast(*void)(*instance.DW)) - cast(*void)(*instance)) == 8, "_HPDF_CIDFontDefAttrRec.DW has unexpected offset % instead of 8", ((cast(*void)(*instance.DW)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_CIDFontDefAttrRec.DW)) == 2, "_HPDF_CIDFontDefAttrRec.DW has unexpected size % instead of 2", size_of(type_of(_HPDF_CIDFontDefAttrRec.DW)));
        assert(((cast(*void)(*instance.DW2)) - cast(*void)(*instance)) == 10, "_HPDF_CIDFontDefAttrRec.DW2 has unexpected offset % instead of 10", ((cast(*void)(*instance.DW2)) - cast(*void)(*instance)));
        assert(size_of(type_of(_HPDF_CIDFontDefAttrRec.DW2)) == 4, "_HPDF_CIDFontDefAttrRec.DW2 has unexpected size % instead of 4", size_of(type_of(_HPDF_CIDFontDefAttrRec.DW2)));
        assert(size_of(_HPDF_CIDFontDefAttrRec) == 16, "_HPDF_CIDFontDefAttrRec has size % instead of 16", size_of(_HPDF_CIDFontDefAttrRec));
    }

    {
        instance: FontAttr_Rec;
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 0, "FontAttr_Rec.type has unexpected offset % instead of 0", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.type)) == 4, "FontAttr_Rec.type has unexpected size % instead of 4", size_of(type_of(FontAttr_Rec.type)));
        assert(((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)) == 4, "FontAttr_Rec.writing_mode has unexpected offset % instead of 4", ((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.writing_mode)) == 4, "FontAttr_Rec.writing_mode has unexpected size % instead of 4", size_of(type_of(FontAttr_Rec.writing_mode)));
        assert(((cast(*void)(*instance.text_width_fn)) - cast(*void)(*instance)) == 8, "FontAttr_Rec.text_width_fn has unexpected offset % instead of 8", ((cast(*void)(*instance.text_width_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.text_width_fn)) == 8, "FontAttr_Rec.text_width_fn has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.text_width_fn)));
        assert(((cast(*void)(*instance.measure_text_fn)) - cast(*void)(*instance)) == 16, "FontAttr_Rec.measure_text_fn has unexpected offset % instead of 16", ((cast(*void)(*instance.measure_text_fn)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.measure_text_fn)) == 8, "FontAttr_Rec.measure_text_fn has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.measure_text_fn)));
        assert(((cast(*void)(*instance.fontdef)) - cast(*void)(*instance)) == 24, "FontAttr_Rec.fontdef has unexpected offset % instead of 24", ((cast(*void)(*instance.fontdef)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.fontdef)) == 8, "FontAttr_Rec.fontdef has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.fontdef)));
        assert(((cast(*void)(*instance.encoder)) - cast(*void)(*instance)) == 32, "FontAttr_Rec.encoder has unexpected offset % instead of 32", ((cast(*void)(*instance.encoder)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.encoder)) == 8, "FontAttr_Rec.encoder has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.encoder)));
        assert(((cast(*void)(*instance.widths)) - cast(*void)(*instance)) == 40, "FontAttr_Rec.widths has unexpected offset % instead of 40", ((cast(*void)(*instance.widths)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.widths)) == 8, "FontAttr_Rec.widths has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.widths)));
        assert(((cast(*void)(*instance.used)) - cast(*void)(*instance)) == 48, "FontAttr_Rec.used has unexpected offset % instead of 48", ((cast(*void)(*instance.used)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.used)) == 8, "FontAttr_Rec.used has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.used)));
        assert(((cast(*void)(*instance.xref)) - cast(*void)(*instance)) == 56, "FontAttr_Rec.xref has unexpected offset % instead of 56", ((cast(*void)(*instance.xref)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.xref)) == 8, "FontAttr_Rec.xref has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.xref)));
        assert(((cast(*void)(*instance.descendant_font)) - cast(*void)(*instance)) == 64, "FontAttr_Rec.descendant_font has unexpected offset % instead of 64", ((cast(*void)(*instance.descendant_font)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.descendant_font)) == 8, "FontAttr_Rec.descendant_font has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.descendant_font)));
        assert(((cast(*void)(*instance.map_stream)) - cast(*void)(*instance)) == 72, "FontAttr_Rec.map_stream has unexpected offset % instead of 72", ((cast(*void)(*instance.map_stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.map_stream)) == 8, "FontAttr_Rec.map_stream has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.map_stream)));
        assert(((cast(*void)(*instance.cmap_stream)) - cast(*void)(*instance)) == 80, "FontAttr_Rec.cmap_stream has unexpected offset % instead of 80", ((cast(*void)(*instance.cmap_stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(FontAttr_Rec.cmap_stream)) == 8, "FontAttr_Rec.cmap_stream has unexpected size % instead of 8", size_of(type_of(FontAttr_Rec.cmap_stream)));
        assert(size_of(FontAttr_Rec) == 88, "FontAttr_Rec has size % instead of 88", size_of(FontAttr_Rec));
    }

    {
        instance: GState_Rec;
        assert(((cast(*void)(*instance.trans_matrix)) - cast(*void)(*instance)) == 0, "GState_Rec.trans_matrix has unexpected offset % instead of 0", ((cast(*void)(*instance.trans_matrix)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.trans_matrix)) == 24, "GState_Rec.trans_matrix has unexpected size % instead of 24", size_of(type_of(GState_Rec.trans_matrix)));
        assert(((cast(*void)(*instance.line_width)) - cast(*void)(*instance)) == 24, "GState_Rec.line_width has unexpected offset % instead of 24", ((cast(*void)(*instance.line_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.line_width)) == 4, "GState_Rec.line_width has unexpected size % instead of 4", size_of(type_of(GState_Rec.line_width)));
        assert(((cast(*void)(*instance.line_cap)) - cast(*void)(*instance)) == 28, "GState_Rec.line_cap has unexpected offset % instead of 28", ((cast(*void)(*instance.line_cap)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.line_cap)) == 4, "GState_Rec.line_cap has unexpected size % instead of 4", size_of(type_of(GState_Rec.line_cap)));
        assert(((cast(*void)(*instance.line_join)) - cast(*void)(*instance)) == 32, "GState_Rec.line_join has unexpected offset % instead of 32", ((cast(*void)(*instance.line_join)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.line_join)) == 4, "GState_Rec.line_join has unexpected size % instead of 4", size_of(type_of(GState_Rec.line_join)));
        assert(((cast(*void)(*instance.miter_limit)) - cast(*void)(*instance)) == 36, "GState_Rec.miter_limit has unexpected offset % instead of 36", ((cast(*void)(*instance.miter_limit)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.miter_limit)) == 4, "GState_Rec.miter_limit has unexpected size % instead of 4", size_of(type_of(GState_Rec.miter_limit)));
        assert(((cast(*void)(*instance.dash_mode)) - cast(*void)(*instance)) == 40, "GState_Rec.dash_mode has unexpected offset % instead of 40", ((cast(*void)(*instance.dash_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.dash_mode)) == 40, "GState_Rec.dash_mode has unexpected size % instead of 40", size_of(type_of(GState_Rec.dash_mode)));
        assert(((cast(*void)(*instance.flatness)) - cast(*void)(*instance)) == 80, "GState_Rec.flatness has unexpected offset % instead of 80", ((cast(*void)(*instance.flatness)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.flatness)) == 4, "GState_Rec.flatness has unexpected size % instead of 4", size_of(type_of(GState_Rec.flatness)));
        assert(((cast(*void)(*instance.char_space)) - cast(*void)(*instance)) == 84, "GState_Rec.char_space has unexpected offset % instead of 84", ((cast(*void)(*instance.char_space)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.char_space)) == 4, "GState_Rec.char_space has unexpected size % instead of 4", size_of(type_of(GState_Rec.char_space)));
        assert(((cast(*void)(*instance.word_space)) - cast(*void)(*instance)) == 88, "GState_Rec.word_space has unexpected offset % instead of 88", ((cast(*void)(*instance.word_space)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.word_space)) == 4, "GState_Rec.word_space has unexpected size % instead of 4", size_of(type_of(GState_Rec.word_space)));
        assert(((cast(*void)(*instance.h_scalling)) - cast(*void)(*instance)) == 92, "GState_Rec.h_scalling has unexpected offset % instead of 92", ((cast(*void)(*instance.h_scalling)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.h_scalling)) == 4, "GState_Rec.h_scalling has unexpected size % instead of 4", size_of(type_of(GState_Rec.h_scalling)));
        assert(((cast(*void)(*instance.text_leading)) - cast(*void)(*instance)) == 96, "GState_Rec.text_leading has unexpected offset % instead of 96", ((cast(*void)(*instance.text_leading)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.text_leading)) == 4, "GState_Rec.text_leading has unexpected size % instead of 4", size_of(type_of(GState_Rec.text_leading)));
        assert(((cast(*void)(*instance.rendering_mode)) - cast(*void)(*instance)) == 100, "GState_Rec.rendering_mode has unexpected offset % instead of 100", ((cast(*void)(*instance.rendering_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.rendering_mode)) == 4, "GState_Rec.rendering_mode has unexpected size % instead of 4", size_of(type_of(GState_Rec.rendering_mode)));
        assert(((cast(*void)(*instance.text_rise)) - cast(*void)(*instance)) == 104, "GState_Rec.text_rise has unexpected offset % instead of 104", ((cast(*void)(*instance.text_rise)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.text_rise)) == 4, "GState_Rec.text_rise has unexpected size % instead of 4", size_of(type_of(GState_Rec.text_rise)));
        assert(((cast(*void)(*instance.cs_fill)) - cast(*void)(*instance)) == 108, "GState_Rec.cs_fill has unexpected offset % instead of 108", ((cast(*void)(*instance.cs_fill)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.cs_fill)) == 4, "GState_Rec.cs_fill has unexpected size % instead of 4", size_of(type_of(GState_Rec.cs_fill)));
        assert(((cast(*void)(*instance.cs_stroke)) - cast(*void)(*instance)) == 112, "GState_Rec.cs_stroke has unexpected offset % instead of 112", ((cast(*void)(*instance.cs_stroke)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.cs_stroke)) == 4, "GState_Rec.cs_stroke has unexpected size % instead of 4", size_of(type_of(GState_Rec.cs_stroke)));
        assert(((cast(*void)(*instance.rgb_fill)) - cast(*void)(*instance)) == 116, "GState_Rec.rgb_fill has unexpected offset % instead of 116", ((cast(*void)(*instance.rgb_fill)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.rgb_fill)) == 12, "GState_Rec.rgb_fill has unexpected size % instead of 12", size_of(type_of(GState_Rec.rgb_fill)));
        assert(((cast(*void)(*instance.rgb_stroke)) - cast(*void)(*instance)) == 128, "GState_Rec.rgb_stroke has unexpected offset % instead of 128", ((cast(*void)(*instance.rgb_stroke)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.rgb_stroke)) == 12, "GState_Rec.rgb_stroke has unexpected size % instead of 12", size_of(type_of(GState_Rec.rgb_stroke)));
        assert(((cast(*void)(*instance.cmyk_fill)) - cast(*void)(*instance)) == 140, "GState_Rec.cmyk_fill has unexpected offset % instead of 140", ((cast(*void)(*instance.cmyk_fill)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.cmyk_fill)) == 16, "GState_Rec.cmyk_fill has unexpected size % instead of 16", size_of(type_of(GState_Rec.cmyk_fill)));
        assert(((cast(*void)(*instance.cmyk_stroke)) - cast(*void)(*instance)) == 156, "GState_Rec.cmyk_stroke has unexpected offset % instead of 156", ((cast(*void)(*instance.cmyk_stroke)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.cmyk_stroke)) == 16, "GState_Rec.cmyk_stroke has unexpected size % instead of 16", size_of(type_of(GState_Rec.cmyk_stroke)));
        assert(((cast(*void)(*instance.gray_fill)) - cast(*void)(*instance)) == 172, "GState_Rec.gray_fill has unexpected offset % instead of 172", ((cast(*void)(*instance.gray_fill)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.gray_fill)) == 4, "GState_Rec.gray_fill has unexpected size % instead of 4", size_of(type_of(GState_Rec.gray_fill)));
        assert(((cast(*void)(*instance.gray_stroke)) - cast(*void)(*instance)) == 176, "GState_Rec.gray_stroke has unexpected offset % instead of 176", ((cast(*void)(*instance.gray_stroke)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.gray_stroke)) == 4, "GState_Rec.gray_stroke has unexpected size % instead of 4", size_of(type_of(GState_Rec.gray_stroke)));
        assert(((cast(*void)(*instance.font)) - cast(*void)(*instance)) == 184, "GState_Rec.font has unexpected offset % instead of 184", ((cast(*void)(*instance.font)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.font)) == 8, "GState_Rec.font has unexpected size % instead of 8", size_of(type_of(GState_Rec.font)));
        assert(((cast(*void)(*instance.font_size)) - cast(*void)(*instance)) == 192, "GState_Rec.font_size has unexpected offset % instead of 192", ((cast(*void)(*instance.font_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.font_size)) == 4, "GState_Rec.font_size has unexpected size % instead of 4", size_of(type_of(GState_Rec.font_size)));
        assert(((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)) == 196, "GState_Rec.writing_mode has unexpected offset % instead of 196", ((cast(*void)(*instance.writing_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.writing_mode)) == 4, "GState_Rec.writing_mode has unexpected size % instead of 4", size_of(type_of(GState_Rec.writing_mode)));
        assert(((cast(*void)(*instance.prev)) - cast(*void)(*instance)) == 200, "GState_Rec.prev has unexpected offset % instead of 200", ((cast(*void)(*instance.prev)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.prev)) == 8, "GState_Rec.prev has unexpected size % instead of 8", size_of(type_of(GState_Rec.prev)));
        assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 208, "GState_Rec.depth has unexpected offset % instead of 208", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
        assert(size_of(type_of(GState_Rec.depth)) == 4, "GState_Rec.depth has unexpected size % instead of 4", size_of(type_of(GState_Rec.depth)));
        assert(size_of(GState_Rec) == 216, "GState_Rec has size % instead of 216", size_of(GState_Rec));
    }

    {
        instance: PageAttr_Rec;
        assert(((cast(*void)(*instance.parent)) - cast(*void)(*instance)) == 0, "PageAttr_Rec.parent has unexpected offset % instead of 0", ((cast(*void)(*instance.parent)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.parent)) == 8, "PageAttr_Rec.parent has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.parent)));
        assert(((cast(*void)(*instance.fonts)) - cast(*void)(*instance)) == 8, "PageAttr_Rec.fonts has unexpected offset % instead of 8", ((cast(*void)(*instance.fonts)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.fonts)) == 8, "PageAttr_Rec.fonts has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.fonts)));
        assert(((cast(*void)(*instance.xobjects)) - cast(*void)(*instance)) == 16, "PageAttr_Rec.xobjects has unexpected offset % instead of 16", ((cast(*void)(*instance.xobjects)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.xobjects)) == 8, "PageAttr_Rec.xobjects has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.xobjects)));
        assert(((cast(*void)(*instance.ext_gstates)) - cast(*void)(*instance)) == 24, "PageAttr_Rec.ext_gstates has unexpected offset % instead of 24", ((cast(*void)(*instance.ext_gstates)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.ext_gstates)) == 8, "PageAttr_Rec.ext_gstates has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.ext_gstates)));
        assert(((cast(*void)(*instance.shadings)) - cast(*void)(*instance)) == 32, "PageAttr_Rec.shadings has unexpected offset % instead of 32", ((cast(*void)(*instance.shadings)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.shadings)) == 8, "PageAttr_Rec.shadings has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.shadings)));
        assert(((cast(*void)(*instance.gstate)) - cast(*void)(*instance)) == 40, "PageAttr_Rec.gstate has unexpected offset % instead of 40", ((cast(*void)(*instance.gstate)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.gstate)) == 8, "PageAttr_Rec.gstate has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.gstate)));
        assert(((cast(*void)(*instance.str_pos)) - cast(*void)(*instance)) == 48, "PageAttr_Rec.str_pos has unexpected offset % instead of 48", ((cast(*void)(*instance.str_pos)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.str_pos)) == 8, "PageAttr_Rec.str_pos has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.str_pos)));
        assert(((cast(*void)(*instance.cur_pos)) - cast(*void)(*instance)) == 56, "PageAttr_Rec.cur_pos has unexpected offset % instead of 56", ((cast(*void)(*instance.cur_pos)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.cur_pos)) == 8, "PageAttr_Rec.cur_pos has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.cur_pos)));
        assert(((cast(*void)(*instance.text_pos)) - cast(*void)(*instance)) == 64, "PageAttr_Rec.text_pos has unexpected offset % instead of 64", ((cast(*void)(*instance.text_pos)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.text_pos)) == 8, "PageAttr_Rec.text_pos has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.text_pos)));
        assert(((cast(*void)(*instance.text_matrix)) - cast(*void)(*instance)) == 72, "PageAttr_Rec.text_matrix has unexpected offset % instead of 72", ((cast(*void)(*instance.text_matrix)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.text_matrix)) == 24, "PageAttr_Rec.text_matrix has unexpected size % instead of 24", size_of(type_of(PageAttr_Rec.text_matrix)));
        assert(((cast(*void)(*instance.gmode)) - cast(*void)(*instance)) == 96, "PageAttr_Rec.gmode has unexpected offset % instead of 96", ((cast(*void)(*instance.gmode)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.gmode)) == 2, "PageAttr_Rec.gmode has unexpected size % instead of 2", size_of(type_of(PageAttr_Rec.gmode)));
        assert(((cast(*void)(*instance.contents)) - cast(*void)(*instance)) == 104, "PageAttr_Rec.contents has unexpected offset % instead of 104", ((cast(*void)(*instance.contents)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.contents)) == 8, "PageAttr_Rec.contents has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.contents)));
        assert(((cast(*void)(*instance.stream)) - cast(*void)(*instance)) == 112, "PageAttr_Rec.stream has unexpected offset % instead of 112", ((cast(*void)(*instance.stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.stream)) == 8, "PageAttr_Rec.stream has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.stream)));
        assert(((cast(*void)(*instance.xref)) - cast(*void)(*instance)) == 120, "PageAttr_Rec.xref has unexpected offset % instead of 120", ((cast(*void)(*instance.xref)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.xref)) == 8, "PageAttr_Rec.xref has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.xref)));
        assert(((cast(*void)(*instance.compression_mode)) - cast(*void)(*instance)) == 128, "PageAttr_Rec.compression_mode has unexpected offset % instead of 128", ((cast(*void)(*instance.compression_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.compression_mode)) == 4, "PageAttr_Rec.compression_mode has unexpected size % instead of 4", size_of(type_of(PageAttr_Rec.compression_mode)));
        assert(((cast(*void)(*instance.ver)) - cast(*void)(*instance)) == 136, "PageAttr_Rec.ver has unexpected offset % instead of 136", ((cast(*void)(*instance.ver)) - cast(*void)(*instance)));
        assert(size_of(type_of(PageAttr_Rec.ver)) == 8, "PageAttr_Rec.ver has unexpected size % instead of 8", size_of(type_of(PageAttr_Rec.ver)));
        assert(size_of(PageAttr_Rec) == 144, "PageAttr_Rec has size % instead of 144", size_of(PageAttr_Rec));
    }

    {
        instance: Doc_Rec;
        assert(((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)) == 0, "Doc_Rec.sig_bytes has unexpected offset % instead of 0", ((cast(*void)(*instance.sig_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.sig_bytes)) == 4, "Doc_Rec.sig_bytes has unexpected size % instead of 4", size_of(type_of(Doc_Rec.sig_bytes)));
        assert(((cast(*void)(*instance.pdf_version)) - cast(*void)(*instance)) == 4, "Doc_Rec.pdf_version has unexpected offset % instead of 4", ((cast(*void)(*instance.pdf_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.pdf_version)) == 4, "Doc_Rec.pdf_version has unexpected size % instead of 4", size_of(type_of(Doc_Rec.pdf_version)));
        assert(((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)) == 8, "Doc_Rec.mmgr has unexpected offset % instead of 8", ((cast(*void)(*instance.mmgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.mmgr)) == 8, "Doc_Rec.mmgr has unexpected size % instead of 8", size_of(type_of(Doc_Rec.mmgr)));
        assert(((cast(*void)(*instance.catalog)) - cast(*void)(*instance)) == 16, "Doc_Rec.catalog has unexpected offset % instead of 16", ((cast(*void)(*instance.catalog)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.catalog)) == 8, "Doc_Rec.catalog has unexpected size % instead of 8", size_of(type_of(Doc_Rec.catalog)));
        assert(((cast(*void)(*instance.outlines)) - cast(*void)(*instance)) == 24, "Doc_Rec.outlines has unexpected offset % instead of 24", ((cast(*void)(*instance.outlines)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.outlines)) == 8, "Doc_Rec.outlines has unexpected size % instead of 8", size_of(type_of(Doc_Rec.outlines)));
        assert(((cast(*void)(*instance.xref)) - cast(*void)(*instance)) == 32, "Doc_Rec.xref has unexpected offset % instead of 32", ((cast(*void)(*instance.xref)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.xref)) == 8, "Doc_Rec.xref has unexpected size % instead of 8", size_of(type_of(Doc_Rec.xref)));
        assert(((cast(*void)(*instance.root_pages)) - cast(*void)(*instance)) == 40, "Doc_Rec.root_pages has unexpected offset % instead of 40", ((cast(*void)(*instance.root_pages)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.root_pages)) == 8, "Doc_Rec.root_pages has unexpected size % instead of 8", size_of(type_of(Doc_Rec.root_pages)));
        assert(((cast(*void)(*instance.cur_pages)) - cast(*void)(*instance)) == 48, "Doc_Rec.cur_pages has unexpected offset % instead of 48", ((cast(*void)(*instance.cur_pages)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.cur_pages)) == 8, "Doc_Rec.cur_pages has unexpected size % instead of 8", size_of(type_of(Doc_Rec.cur_pages)));
        assert(((cast(*void)(*instance.cur_page)) - cast(*void)(*instance)) == 56, "Doc_Rec.cur_page has unexpected offset % instead of 56", ((cast(*void)(*instance.cur_page)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.cur_page)) == 8, "Doc_Rec.cur_page has unexpected size % instead of 8", size_of(type_of(Doc_Rec.cur_page)));
        assert(((cast(*void)(*instance.page_list)) - cast(*void)(*instance)) == 64, "Doc_Rec.page_list has unexpected offset % instead of 64", ((cast(*void)(*instance.page_list)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.page_list)) == 8, "Doc_Rec.page_list has unexpected size % instead of 8", size_of(type_of(Doc_Rec.page_list)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 72, "Doc_Rec.error has unexpected offset % instead of 72", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.error)) == 32, "Doc_Rec.error has unexpected size % instead of 32", size_of(type_of(Doc_Rec.error)));
        assert(((cast(*void)(*instance.info)) - cast(*void)(*instance)) == 104, "Doc_Rec.info has unexpected offset % instead of 104", ((cast(*void)(*instance.info)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.info)) == 8, "Doc_Rec.info has unexpected size % instead of 8", size_of(type_of(Doc_Rec.info)));
        assert(((cast(*void)(*instance.trailer)) - cast(*void)(*instance)) == 112, "Doc_Rec.trailer has unexpected offset % instead of 112", ((cast(*void)(*instance.trailer)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.trailer)) == 8, "Doc_Rec.trailer has unexpected size % instead of 8", size_of(type_of(Doc_Rec.trailer)));
        assert(((cast(*void)(*instance.font_mgr)) - cast(*void)(*instance)) == 120, "Doc_Rec.font_mgr has unexpected offset % instead of 120", ((cast(*void)(*instance.font_mgr)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.font_mgr)) == 8, "Doc_Rec.font_mgr has unexpected size % instead of 8", size_of(type_of(Doc_Rec.font_mgr)));
        assert(((cast(*void)(*instance.ttfont_tag)) - cast(*void)(*instance)) == 128, "Doc_Rec.ttfont_tag has unexpected offset % instead of 128", ((cast(*void)(*instance.ttfont_tag)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.ttfont_tag)) == 6, "Doc_Rec.ttfont_tag has unexpected size % instead of 6", size_of(type_of(Doc_Rec.ttfont_tag)));
        assert(((cast(*void)(*instance.fontdef_list)) - cast(*void)(*instance)) == 136, "Doc_Rec.fontdef_list has unexpected offset % instead of 136", ((cast(*void)(*instance.fontdef_list)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.fontdef_list)) == 8, "Doc_Rec.fontdef_list has unexpected size % instead of 8", size_of(type_of(Doc_Rec.fontdef_list)));
        assert(((cast(*void)(*instance.encoder_list)) - cast(*void)(*instance)) == 144, "Doc_Rec.encoder_list has unexpected offset % instead of 144", ((cast(*void)(*instance.encoder_list)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.encoder_list)) == 8, "Doc_Rec.encoder_list has unexpected size % instead of 8", size_of(type_of(Doc_Rec.encoder_list)));
        assert(((cast(*void)(*instance.cur_encoder)) - cast(*void)(*instance)) == 152, "Doc_Rec.cur_encoder has unexpected offset % instead of 152", ((cast(*void)(*instance.cur_encoder)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.cur_encoder)) == 8, "Doc_Rec.cur_encoder has unexpected size % instead of 8", size_of(type_of(Doc_Rec.cur_encoder)));
        assert(((cast(*void)(*instance.compression_mode)) - cast(*void)(*instance)) == 160, "Doc_Rec.compression_mode has unexpected offset % instead of 160", ((cast(*void)(*instance.compression_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.compression_mode)) == 4, "Doc_Rec.compression_mode has unexpected size % instead of 4", size_of(type_of(Doc_Rec.compression_mode)));
        assert(((cast(*void)(*instance.encrypt_on)) - cast(*void)(*instance)) == 164, "Doc_Rec.encrypt_on has unexpected offset % instead of 164", ((cast(*void)(*instance.encrypt_on)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.encrypt_on)) == 4, "Doc_Rec.encrypt_on has unexpected size % instead of 4", size_of(type_of(Doc_Rec.encrypt_on)));
        assert(((cast(*void)(*instance.encrypt_dict)) - cast(*void)(*instance)) == 168, "Doc_Rec.encrypt_dict has unexpected offset % instead of 168", ((cast(*void)(*instance.encrypt_dict)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.encrypt_dict)) == 8, "Doc_Rec.encrypt_dict has unexpected size % instead of 8", size_of(type_of(Doc_Rec.encrypt_dict)));
        assert(((cast(*void)(*instance.def_encoder)) - cast(*void)(*instance)) == 176, "Doc_Rec.def_encoder has unexpected offset % instead of 176", ((cast(*void)(*instance.def_encoder)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.def_encoder)) == 8, "Doc_Rec.def_encoder has unexpected size % instead of 8", size_of(type_of(Doc_Rec.def_encoder)));
        assert(((cast(*void)(*instance.page_per_pages)) - cast(*void)(*instance)) == 184, "Doc_Rec.page_per_pages has unexpected offset % instead of 184", ((cast(*void)(*instance.page_per_pages)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.page_per_pages)) == 4, "Doc_Rec.page_per_pages has unexpected size % instead of 4", size_of(type_of(Doc_Rec.page_per_pages)));
        assert(((cast(*void)(*instance.cur_page_num)) - cast(*void)(*instance)) == 188, "Doc_Rec.cur_page_num has unexpected offset % instead of 188", ((cast(*void)(*instance.cur_page_num)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.cur_page_num)) == 4, "Doc_Rec.cur_page_num has unexpected size % instead of 4", size_of(type_of(Doc_Rec.cur_page_num)));
        assert(((cast(*void)(*instance.stream)) - cast(*void)(*instance)) == 192, "Doc_Rec.stream has unexpected offset % instead of 192", ((cast(*void)(*instance.stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(Doc_Rec.stream)) == 8, "Doc_Rec.stream has unexpected size % instead of 8", size_of(type_of(Doc_Rec.stream)));
        assert(size_of(Doc_Rec) == 200, "Doc_Rec has size % instead of 200", size_of(Doc_Rec));
    }
}


#if OS == .MACOS    libhpdf :: #library,no_dll "macos/lib/libhpdf";
#if OS == .LINUX    libhpdf :: #library,no_dll "linux/lib/libhpdf";

