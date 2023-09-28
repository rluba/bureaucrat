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


#if OS == .MACOS    libhpdf :: #library,no_dll "macos/lib/libhpdf";
#if OS == .LINUX    libhpdf :: #library,no_dll "linux/lib/libhpdf";

zlib :: #system_library "z"; // Needed by libhpdf

