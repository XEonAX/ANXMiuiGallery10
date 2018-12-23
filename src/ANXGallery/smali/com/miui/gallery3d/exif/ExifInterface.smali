.class public Lcom/miui/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PARALLEL_PROCESS_COMMENT:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_XIAOMI_COMMENT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/miui/gallery3d/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 77
    const-class v0, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    .line 89
    const/16 v0, 0x100

    .line 90
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 91
    const/16 v0, 0x101

    .line 92
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 93
    const/16 v0, 0x102

    .line 94
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 95
    const/16 v0, 0x103

    .line 96
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 97
    const/16 v0, 0x106

    .line 98
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 99
    const/16 v0, 0x10e

    .line 100
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 101
    const/16 v0, 0x10f

    .line 102
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 103
    const/16 v0, 0x110

    .line 104
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 105
    const/16 v0, 0x111

    .line 106
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 107
    const/16 v0, 0x112

    .line 108
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 109
    const/16 v0, 0x115

    .line 110
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 111
    const/16 v0, 0x116

    .line 112
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 113
    const/16 v0, 0x117

    .line 114
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 115
    const/16 v0, 0x11a

    .line 116
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 117
    const/16 v0, 0x11b

    .line 118
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 119
    const/16 v0, 0x11c

    .line 120
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 121
    const/16 v0, 0x128

    .line 122
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 123
    const/16 v0, 0x12d

    .line 124
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 125
    const/16 v0, 0x131

    .line 126
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 127
    const/16 v0, 0x132

    .line 128
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 129
    const/16 v0, 0x13b

    .line 130
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 131
    const/16 v0, 0x13e

    .line 132
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 133
    const/16 v0, 0x13f

    .line 134
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 135
    const/16 v0, 0x211

    .line 136
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 137
    const/16 v0, 0x212

    .line 138
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 139
    const/16 v0, 0x213

    .line 140
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 141
    const/16 v0, 0x214

    .line 142
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 143
    const/16 v0, -0x7d68

    .line 144
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 145
    const/16 v0, -0x7897

    .line 146
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 147
    const/16 v0, -0x77db

    .line 148
    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 150
    const/16 v0, 0x201

    .line 151
    invoke-static {v4, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 152
    const/16 v0, 0x202

    .line 153
    invoke-static {v4, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 155
    const/16 v0, -0x7d66

    .line 156
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 157
    const/16 v0, -0x7d63

    .line 158
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 159
    const/16 v0, -0x77de

    .line 160
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 161
    const/16 v0, -0x77dc

    .line 162
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 163
    const/16 v0, -0x77d9

    .line 164
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 165
    const/16 v0, -0x77d8

    .line 166
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 167
    const/16 v0, -0x7000

    .line 168
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 169
    const/16 v0, -0x6ffd

    .line 170
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 171
    const/16 v0, -0x6ffc

    .line 172
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 173
    const/16 v0, -0x6eff

    .line 174
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 175
    const/16 v0, -0x6efe

    .line 176
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 177
    const/16 v0, -0x6dff

    .line 178
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 179
    const/16 v0, -0x6dfe

    .line 180
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 181
    const/16 v0, -0x6dfd

    .line 182
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 183
    const/16 v0, -0x6dfc

    .line 184
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 185
    const/16 v0, -0x6dfb

    .line 186
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 187
    const/16 v0, -0x6dfa

    .line 188
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 189
    const/16 v0, -0x6df9

    .line 190
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 191
    const/16 v0, -0x6df8

    .line 192
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 193
    const/16 v0, -0x6df7

    .line 194
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 195
    const/16 v0, -0x6df6

    .line 196
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 197
    const/16 v0, -0x6dec

    .line 198
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 199
    const/16 v0, -0x6d84

    .line 200
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 201
    const/16 v0, -0x6d7a

    .line 202
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 203
    const/16 v0, -0x6d70

    .line 204
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 205
    const/16 v0, -0x6d6f

    .line 206
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 207
    const/16 v0, -0x6d6e

    .line 208
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 209
    const/16 v0, -0x6000

    .line 210
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 211
    const/16 v0, -0x5fff

    .line 212
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 213
    const/16 v0, -0x5ffe

    .line 214
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 215
    const/16 v0, -0x5ffd

    .line 216
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 217
    const/16 v0, -0x5ffc

    .line 218
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 219
    const/16 v0, -0x5ffb

    .line 220
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 221
    const/16 v0, -0x5df5

    .line 222
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 223
    const/16 v0, -0x5df4

    .line 224
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 225
    const/16 v0, -0x5df2

    .line 226
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 227
    const/16 v0, -0x5df1

    .line 228
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 229
    const/16 v0, -0x5df0

    .line 230
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 231
    const/16 v0, -0x5dec

    .line 232
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 233
    const/16 v0, -0x5deb

    .line 234
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 235
    const/16 v0, -0x5de9

    .line 236
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 237
    const/16 v0, -0x5d00

    .line 238
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 239
    const/16 v0, -0x5cff

    .line 240
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 241
    const/16 v0, -0x5cfe

    .line 242
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 243
    const/16 v0, -0x5bff

    .line 244
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 245
    const/16 v0, -0x5bfe

    .line 246
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 247
    const/16 v0, -0x5bfd

    .line 248
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 249
    const/16 v0, -0x5bfc

    .line 250
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 251
    const/16 v0, -0x5bfb

    .line 252
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 253
    const/16 v0, -0x5bfa

    .line 254
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 255
    const/16 v0, -0x5bf9

    .line 256
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 257
    const/16 v0, -0x5bf8

    .line 258
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 259
    const/16 v0, -0x5bf7

    .line 260
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 261
    const/16 v0, -0x5bf6

    .line 262
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 263
    const/16 v0, -0x5bf5

    .line 264
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 265
    const/16 v0, -0x5bf4

    .line 266
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 267
    const/16 v0, -0x5be0

    .line 268
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 269
    const/16 v0, -0x7778

    .line 270
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    .line 271
    const/16 v0, -0x6667

    .line 272
    invoke-static {v1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 275
    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 277
    invoke-static {v2, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 279
    invoke-static {v2, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 281
    invoke-static {v2, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 283
    invoke-static {v2, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 284
    const/4 v0, 0x5

    .line 285
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 286
    const/4 v0, 0x6

    .line 287
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 288
    const/4 v0, 0x7

    .line 289
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 290
    const/16 v0, 0x8

    .line 291
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 292
    const/16 v0, 0x9

    .line 293
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 294
    const/16 v0, 0xa

    .line 295
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 296
    const/16 v0, 0xb

    .line 297
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 298
    const/16 v0, 0xc

    .line 299
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 300
    const/16 v0, 0xd

    .line 301
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 302
    const/16 v0, 0xe

    .line 303
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 304
    const/16 v0, 0xf

    .line 305
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 306
    const/16 v0, 0x10

    .line 307
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 308
    const/16 v0, 0x11

    .line 309
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 310
    const/16 v0, 0x12

    .line 311
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 312
    const/16 v0, 0x13

    .line 313
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 314
    const/16 v0, 0x14

    .line 315
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 316
    const/16 v0, 0x15

    .line 317
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 318
    const/16 v0, 0x16

    .line 319
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 320
    const/16 v0, 0x17

    .line 321
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 322
    const/16 v0, 0x18

    .line 323
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 324
    const/16 v0, 0x19

    .line 325
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 326
    const/16 v0, 0x1a

    .line 327
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 328
    const/16 v0, 0x1b

    .line 329
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 330
    const/16 v0, 0x1c

    .line 331
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 332
    const/16 v0, 0x1d

    .line 333
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 334
    const/16 v0, 0x1e

    .line 335
    invoke-static {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 338
    invoke-static {v5, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 346
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 358
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance v0, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 2010
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 2011
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 2012
    const-string v0, "UTC"

    .line 2013
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 733
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 734
    return-void
.end method

.method private buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 2081
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 2082
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 2092
    :cond_1
    :goto_0
    return-object v0

    .line 2085
    :cond_2
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 2086
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 2087
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 2088
    .local v5, "hasDefinedCount":Z
    :goto_1
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 2089
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 2090
    goto :goto_0

    .line 2087
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 2257
    if-eqz p0, :cond_0

    .line 2259
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    :cond_0
    :goto_0
    return-void

    .line 2260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D
    .locals 14
    .param p0, "coordinate"    # [Lcom/miui/gallery3d/exif/Rational;
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 1972
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1973
    .local v0, "degrees":D
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1974
    .local v4, "minutes":D
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v8

    .line 1975
    .local v8, "seconds":D
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v4, v10

    add-double/2addr v10, v0

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    .line 1976
    .local v6, "result":D
    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "W"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1977
    :cond_0
    neg-double v6, v6

    .line 1979
    .end local v6    # "result":D
    :cond_1
    return-wide v6

    .line 1980
    .end local v0    # "degrees":D
    .end local v4    # "minutes":D
    .end local v8    # "seconds":D
    :catch_0
    move-exception v2

    .line 1981
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 2659
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2660
    const/4 v9, 0x0

    .line 2683
    :goto_0
    return v9

    .line 2664
    :cond_0
    :try_start_0
    const-string v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2667
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2668
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 2669
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v2, v14, v16

    .line 2671
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2672
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 2673
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v6, v14, v16

    .line 2675
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2676
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    .line 2677
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v12, v14, v16

    .line 2679
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 2680
    .local v10, "result":D
    const-string v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_2

    .line 2681
    :cond_1
    neg-double v14, v10

    double-to-float v9, v14

    goto/16 :goto_0

    .line 2683
    :cond_2
    double-to-float v9, v10

    goto/16 :goto_0

    .line 2684
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 2686
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 2687
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 2689
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 367
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2248
    new-array v0, v4, [B

    .line 2249
    .local v0, "buf":[B
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2250
    .local v1, "ret":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2251
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2252
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 2254
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2555
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2612
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    const/4 v4, 0x0

    .line 2591
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 2604
    :cond_1
    return v0

    .line 2594
    :cond_2
    const/4 v0, 0x0

    .line 2595
    .local v0, "flags":I
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2596
    .local v2, "ifds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 2597
    array-length v6, p0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget v3, p0, v5

    .line 2598
    .local v3, "j":I
    aget v7, v2, v1

    if-ne v7, v3, :cond_4

    .line 2599
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    .line 2596
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2597
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 1922
    rem-int/lit16 p0, p0, 0x168

    .line 1923
    if-gez p0, :cond_0

    .line 1924
    add-int/lit16 p0, p0, 0x168

    .line 1926
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1927
    const/4 v0, 0x1

    .line 1933
    :goto_0
    return v0

    .line 1928
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1929
    const/4 v0, 0x6

    goto :goto_0

    .line 1930
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1931
    const/4 v0, 0x3

    goto :goto_0

    .line 1933
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1
    .param p0, "orientation"    # S

    .prologue
    const/4 v0, 0x0

    .line 1944
    packed-switch p0, :pswitch_data_0

    .line 1954
    :goto_0
    :pswitch_0
    return v0

    .line 1948
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1950
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 1952
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 382
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 375
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2608
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    .prologue
    .line 2284
    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 2287
    .local v5, "ifdAllowedIfds":[I
    invoke-static {v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    .line 2288
    .local v6, "ifdFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2290
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2294
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2296
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2304
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2306
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2310
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2312
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2314
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2316
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2320
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2322
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2324
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2326
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2328
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2330
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2332
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2340
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2342
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    .line 2354
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    .line 2355
    .local v7, "ifdFlags1":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2360
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    .line 2363
    .local v0, "exifAllowedIfds":[I
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    .line 2364
    .local v1, "exifFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2366
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2368
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2370
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2372
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2374
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2376
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2378
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2388
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2390
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2434
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2436
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2440
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2446
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2450
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2452
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2454
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2456
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2458
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2460
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2462
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2464
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2466
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2468
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2470
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2472
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2476
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2478
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2480
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2483
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    .line 2486
    .local v2, "gpsAllowedIfds":[I
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    .line 2487
    .local v3, "gpsFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2489
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2491
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2493
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2495
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2497
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2499
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2501
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2503
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2505
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2507
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2509
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2511
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2513
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2515
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2517
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2519
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2521
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2523
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2525
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2527
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2529
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2531
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2533
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2535
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2537
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2539
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2541
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2543
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2546
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    .line 2549
    .local v8, "interopAllowedIfds":[I
    invoke-static {v8}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    .line 2550
    .local v9, "interopFlags":I
    iget-object v10, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2552
    return-void

    .line 2284
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2580
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2581
    .local v2, "ifds":[I
    invoke-static {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2582
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2583
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2587
    :goto_1
    return v3

    .line 2582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2587
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1529
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addDateTimeStampTag(ILjava/lang/String;)Z
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2042
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2057
    :cond_0
    :goto_0
    return v1

    .line 2045
    :cond_1
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_2

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_2

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_0

    .line 2047
    :cond_2
    const-string v2, "\u0000"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2050
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2051
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 2054
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2055
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v12, 0x2

    const-wide/16 v10, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2199
    :cond_0
    :goto_0
    return v2

    .line 2181
    :cond_1
    sget v4, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2182
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 2185
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2186
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2187
    .local v1, "times":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-ne v4, v6, :cond_0

    .line 2190
    sget v4, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    new-array v5, v6, [Lcom/miui/gallery3d/exif/Rational;

    new-instance v6, Lcom/miui/gallery3d/exif/Rational;

    aget-object v7, v1, v2

    .line 2191
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v5, v2

    new-instance v6, Lcom/miui/gallery3d/exif/Rational;

    aget-object v7, v1, v3

    .line 2192
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v5, v3

    new-instance v6, Lcom/miui/gallery3d/exif/Rational;

    aget-object v7, v1, v12

    .line 2193
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v5, v12

    .line 2190
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2195
    if-eqz v0, :cond_0

    .line 2198
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    move v2, v3

    .line 2199
    goto :goto_0
.end method

.method public addUserComment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2109
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-direct {p0, v2, v1, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2110
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 2114
    :goto_0
    return v1

    .line 2113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2114
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1544
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1545
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 1558
    :cond_1
    :goto_0
    return-object v0

    .line 1548
    :cond_2
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1549
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1550
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1551
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v6, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    .line 1552
    goto :goto_0

    .line 1550
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1554
    .restart local v5    # "hasDefinedCount":Z
    :cond_4
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1555
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 1556
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1569
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1570
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tagId"    # I

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1575
    .local v6, "info":I
    if-nez v6, :cond_0

    .line 1576
    const/4 v0, 0x0

    .line 1583
    :goto_0
    return-object v0

    .line 1578
    :cond_0
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1579
    .local v2, "type":S
    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1580
    .local v3, "definedCount":I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1581
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1582
    .local v4, "ifdId":I
    new-instance v0, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1583
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1580
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v4    # "ifdId":I
    .end local v5    # "hasDefinedCount":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1180
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 22
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    const/4 v15, 0x0

    .line 1111
    .local v15, "reWriteRet":Z
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v15

    .line 1115
    :goto_0
    if-nez v15, :cond_3

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    .line 1118
    .local v17, "tempData":Lcom/miui/gallery3d/exif/ExifData;
    new-instance v19, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v20, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct/range {v19 .. v20}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1119
    const/4 v9, 0x0

    .line 1120
    .local v9, "is":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1121
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 1122
    .local v16, "s":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 1123
    .local v12, "out":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 1125
    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1126
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v10, "is":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1127
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v4, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1128
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1129
    .local v8, "imageBytes":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 1130
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1131
    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    .line 1132
    :cond_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Argument is null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1153
    .end local v8    # "imageBytes":[B
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .line 1154
    .end local v10    # "is":Ljava/io/FileInputStream;
    .local v6, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid exif format : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    .end local v6    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :catchall_0
    move-exception v19

    :goto_2
    invoke-static {v12}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1159
    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1160
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1161
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1163
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    throw v19

    .line 1134
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "imageBytes":[B
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :cond_1
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1135
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v5

    .line 1136
    .local v5, "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v5, :cond_2

    .line 1137
    const-string v11, "failed to get document file"

    .line 1138
    .local v11, "message":Ljava/lang/String;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v6, "e":Ljava/io/IOException;
    sget-object v19, Lcom/miui/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    throw v6
    :try_end_5
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1155
    .end local v5    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "imageBytes":[B
    .end local v11    # "message":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .line 1156
    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1142
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .restart local v8    # "imageBytes":[B
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 1143
    .local v18, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "w"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 1144
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v12    # "out":Ljava/io/OutputStream;
    .local v13, "out":Ljava/io/OutputStream;
    move-object v12, v13

    .line 1148
    .end local v5    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :goto_4
    new-instance v7, Lcom/miui/gallery3d/exif/ExifOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v12, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V

    .line 1149
    .local v7, "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/miui/gallery3d/exif/ExifData;)V

    .line 1150
    move-object/from16 v16, v7

    .line 1151
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1152
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1158
    invoke-static {v12}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1159
    invoke-static {v10}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1160
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1161
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1163
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1166
    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    .end local v8    # "imageBytes":[B
    .end local v10    # "is":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "s":Ljava/io/OutputStream;
    .end local v17    # "tempData":Lcom/miui/gallery3d/exif/ExifData;
    :cond_3
    return-void

    .line 1146
    .restart local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "imageBytes":[B
    .restart local v10    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "s":Ljava/io/OutputStream;
    .restart local v17    # "tempData":Lcom/miui/gallery3d/exif/ExifData;
    :cond_4
    :try_start_8
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 1112
    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "imageBytes":[B
    .end local v10    # "is":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "s":Ljava/io/OutputStream;
    .end local v17    # "tempData":Lcom/miui/gallery3d/exif/ExifData;
    :catch_2
    move-exception v19

    goto/16 :goto_0

    .line 1158
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "s":Ljava/io/OutputStream;
    .restart local v17    # "tempData":Lcom/miui/gallery3d/exif/ExifData;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v19

    move-object v3, v4

    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 1155
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1153
    :catch_5
    move-exception v6

    goto/16 :goto_1

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagId"    # I

    .prologue
    .line 2062
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_2

    .line 2064
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(I)[B

    move-result-object v1

    .line 2065
    .local v1, "values":[B
    if-eqz v1, :cond_2

    .line 2067
    :try_start_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    .line 2068
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const-string v5, "US-ASCII"

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2077
    .end local v1    # "values":[B
    :goto_0
    return-object v2

    .line 2070
    .restart local v1    # "values":[B
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2077
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "values":[B
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1496
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1497
    const/4 v1, -0x1

    .line 1499
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 974
    if-nez p1, :cond_0

    .line 975
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 977
    :cond_0
    new-instance v0, Lcom/miui/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V

    .line 978
    .local v0, "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/miui/gallery3d/exif/ExifData;)V

    .line 979
    return-object v0
.end method

.method public getGpsDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2204
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(I)[B

    move-result-object v1

    .line 2205
    .local v1, "values":[B
    if-eqz v1, :cond_1

    .line 2207
    :try_start_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_0

    .line 2208
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const-string v5, "US-ASCII"

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2216
    :goto_0
    return-object v2

    .line 2210
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2216
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getGpsTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2220
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    invoke-virtual {p0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v2

    .line 2221
    .local v2, "rationals":[Lcom/miui/gallery3d/exif/Rational;
    if-eqz v2, :cond_2

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2223
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 2224
    .local v1, "rational":Lcom/miui/gallery3d/exif/Rational;
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2226
    .end local v1    # "rational":Lcom/miui/gallery3d/exif/Rational;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2231
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 1994
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    .line 1995
    .local v1, "latitude":[Lcom/miui/gallery3d/exif/Rational;
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1996
    .local v2, "latitudeRef":Ljava/lang/String;
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v3

    .line 1997
    .local v3, "longitude":[Lcom/miui/gallery3d/exif/Rational;
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1998
    .local v4, "longitudeRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    .line 2000
    :cond_0
    const/4 v0, 0x0

    .line 2005
    :goto_0
    return-object v0

    .line 2002
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 2003
    .local v0, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 2004
    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1237
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1238
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1223
    invoke-static {p2}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    const/4 v0, 0x0

    .line 1226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery3d/exif/ExifData;->getTag(SI)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1417
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1418
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1407
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1408
    const/4 v1, 0x0

    .line 1410
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2270
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2271
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1323
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1312
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1313
    :cond_0
    const/4 v1, 0x0

    .line 1315
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1388
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1389
    const/4 v1, 0x0

    .line 1391
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1436
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1437
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/miui/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1425
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1426
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1427
    const/4 v1, 0x0

    .line 1429
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1285
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1274
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1275
    const/4 v1, 0x0

    .line 1277
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserCommentAsASCII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getUserCommentAsASCII()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXiaomiComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getXiaomiComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    if-nez p1, :cond_0

    .line 756
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifReader;

    invoke-direct {v1, p0}, Lcom/miui/gallery3d/exif/ExifReader;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifData;

    move-result-object v0

    .line 759
    .local v0, "d":Lcom/miui/gallery3d/exif/ExifData;
    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 760
    return-void
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 4
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_0
    const/4 v0, 0x0

    .line 776
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 779
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 781
    return-void

    .line 779
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .param p1, "jpeg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 745
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    const/4 v10, 0x0

    .line 1025
    .local v10, "file":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 1028
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v18, "temp":Ljava/io/File;
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    .end local v14    # "is":Ljava/io/InputStream;
    .local v15, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1034
    .local v16, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;
    :try_end_1
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 1038
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery3d/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    .line 1041
    .local v6, "exifSize":J
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1042
    const/4 v14, 0x0

    .line 1045
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1046
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 1047
    .local v12, "fileLength":J
    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    .line 1048
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1057
    .end local v12    # "fileLength":J
    :catch_0
    move-exception v9

    move-object v10, v11

    .line 1058
    .end local v6    # "exifSize":J
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    .local v9, "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_5
    invoke-static {v10}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1059
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1061
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 1035
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .restart local v18    # "temp":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 1036
    .local v9, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1057
    .end local v9    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :catch_2
    move-exception v9

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1052
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileLength":J
    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 1056
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    .line 1061
    .local v17, "ret":Z
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1063
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1064
    return v17

    .line 1061
    .end local v6    # "exifSize":J
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v12    # "fileLength":J
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "ret":Z
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1057
    .end local v6    # "exifSize":J
    .end local v16    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    const/4 v1, 0x0

    .line 1083
    .local v1, "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :try_start_0
    new-instance v2, Lcom/miui/gallery3d/exif/ExifModifier;

    invoke-direct {v2, p1, p0}, Lcom/miui/gallery3d/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/miui/gallery3d/exif/ExifInterface;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1084
    .end local v1    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    .local v2, "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery3d/exif/ExifTag;

    .line 1085
    .local v3, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/ExifModifier;->modifyTag(Lcom/miui/gallery3d/exif/ExifTag;)V
    :try_end_1
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1088
    .end local v3    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1089
    .end local v2    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    .restart local v1    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :goto_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid exif format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1087
    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    .end local v1    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    .restart local v2    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifModifier;->commit()Z
    :try_end_2
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    return v4

    .line 1088
    .end local v2    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    .restart local v1    # "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .prologue
    .line 1629
    if-eqz p1, :cond_1

    .line 1630
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1, p1}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 1640
    :goto_0
    return-object v1

    .line 1633
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1634
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "tagId"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%04X\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-string/jumbo v1, "tagSize"

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const-string v1, "exif_parser"

    const-string v2, "exif_tag_overlength"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1640
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery3d/exif/ExifTag;

    .line 1652
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_0

    .line 1654
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_0
    return-void
.end method
