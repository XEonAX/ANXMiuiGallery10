.class public Lcom/miui/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery3d/exif/ExifInterface$GpsDifferential;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsTrackRef;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsSpeedRef;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsMeasureMode;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsStatus;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/miui/gallery3d/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/miui/gallery3d/exif/ExifInterface$SubjectDistance;,
        Lcom/miui/gallery3d/exif/ExifInterface$Sharpness;,
        Lcom/miui/gallery3d/exif/ExifInterface$Saturation;,
        Lcom/miui/gallery3d/exif/ExifInterface$Contrast;,
        Lcom/miui/gallery3d/exif/ExifInterface$GainControl;,
        Lcom/miui/gallery3d/exif/ExifInterface$SceneType;,
        Lcom/miui/gallery3d/exif/ExifInterface$FileSource;,
        Lcom/miui/gallery3d/exif/ExifInterface$SensingMethod;,
        Lcom/miui/gallery3d/exif/ExifInterface$LightSource;,
        Lcom/miui/gallery3d/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/miui/gallery3d/exif/ExifInterface$SceneCapture;,
        Lcom/miui/gallery3d/exif/ExifInterface$WhiteBalance;,
        Lcom/miui/gallery3d/exif/ExifInterface$ExposureMode;,
        Lcom/miui/gallery3d/exif/ExifInterface$ColorSpace;,
        Lcom/miui/gallery3d/exif/ExifInterface$Flash;,
        Lcom/miui/gallery3d/exif/ExifInterface$MeteringMode;,
        Lcom/miui/gallery3d/exif/ExifInterface$ExposureProgram;,
        Lcom/miui/gallery3d/exif/ExifInterface$PlanarConfiguration;,
        Lcom/miui/gallery3d/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/miui/gallery3d/exif/ExifInterface$ResolutionUnit;,
        Lcom/miui/gallery3d/exif/ExifInterface$Compression;,
        Lcom/miui/gallery3d/exif/ExifInterface$YCbCrPositioning;,
        Lcom/miui/gallery3d/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

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

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

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
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
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
    .locals 4

    .line 68
    const-class v0, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    .line 78
    nop

    .line 79
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 80
    nop

    .line 81
    const/16 v1, 0x101

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 82
    nop

    .line 83
    const/16 v1, 0x102

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 84
    nop

    .line 85
    const/16 v1, 0x103

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 86
    nop

    .line 87
    const/16 v1, 0x106

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 88
    nop

    .line 89
    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 90
    nop

    .line 91
    const/16 v1, 0x10f

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 92
    nop

    .line 93
    const/16 v1, 0x110

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 94
    nop

    .line 95
    const/16 v1, 0x111

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 96
    nop

    .line 97
    const/16 v1, 0x112

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 98
    nop

    .line 99
    const/16 v1, 0x115

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 100
    nop

    .line 101
    const/16 v1, 0x116

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 102
    nop

    .line 103
    const/16 v1, 0x117

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 104
    nop

    .line 105
    const/16 v1, 0x11a

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 106
    nop

    .line 107
    const/16 v1, 0x11b

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 108
    nop

    .line 109
    const/16 v1, 0x11c

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 110
    nop

    .line 111
    const/16 v1, 0x128

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 112
    nop

    .line 113
    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 114
    nop

    .line 115
    const/16 v1, 0x131

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 116
    nop

    .line 117
    const/16 v1, 0x132

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 118
    nop

    .line 119
    const/16 v1, 0x13b

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 120
    nop

    .line 121
    const/16 v1, 0x13e

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 122
    nop

    .line 123
    const/16 v1, 0x13f

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 124
    nop

    .line 125
    const/16 v1, 0x211

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 126
    nop

    .line 127
    const/16 v1, 0x212

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 128
    nop

    .line 129
    const/16 v1, 0x213

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 130
    nop

    .line 131
    const/16 v1, 0x214

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 132
    nop

    .line 133
    const/16 v1, -0x7d68

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 134
    nop

    .line 135
    const/16 v1, -0x7897

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 136
    nop

    .line 137
    const/16 v1, -0x77db

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 139
    nop

    .line 140
    const/4 v1, 0x1

    const/16 v2, 0x201

    invoke-static {v1, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 141
    nop

    .line 142
    const/16 v2, 0x202

    invoke-static {v1, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 144
    nop

    .line 145
    const/4 v2, 0x2

    const/16 v3, -0x7d66

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 146
    nop

    .line 147
    const/16 v3, -0x7d63

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 148
    nop

    .line 149
    const/16 v3, -0x77de

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 150
    nop

    .line 151
    const/16 v3, -0x77dc

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 152
    nop

    .line 153
    const/16 v3, -0x77d9

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 154
    nop

    .line 155
    const/16 v3, -0x77d8

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 156
    nop

    .line 157
    const/16 v3, -0x7000

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 158
    nop

    .line 159
    const/16 v3, -0x6ffd

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 160
    nop

    .line 161
    const/16 v3, -0x6ffc

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 162
    nop

    .line 163
    const/16 v3, -0x6eff

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 164
    nop

    .line 165
    const/16 v3, -0x6efe

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 166
    nop

    .line 167
    const/16 v3, -0x6dff

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 168
    nop

    .line 169
    const/16 v3, -0x6dfe

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 170
    nop

    .line 171
    const/16 v3, -0x6dfd

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 172
    nop

    .line 173
    const/16 v3, -0x6dfc

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 174
    nop

    .line 175
    const/16 v3, -0x6dfb

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 176
    nop

    .line 177
    const/16 v3, -0x6dfa

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 178
    nop

    .line 179
    const/16 v3, -0x6df9

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 180
    nop

    .line 181
    const/16 v3, -0x6df8

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 182
    nop

    .line 183
    const/16 v3, -0x6df7

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 184
    nop

    .line 185
    const/16 v3, -0x6df6

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 186
    nop

    .line 187
    const/16 v3, -0x6dec

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 188
    nop

    .line 189
    const/16 v3, -0x6d84

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 190
    nop

    .line 191
    const/16 v3, -0x6d7a

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 192
    nop

    .line 193
    const/16 v3, -0x6d70

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 194
    nop

    .line 195
    const/16 v3, -0x6d6f

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 196
    nop

    .line 197
    const/16 v3, -0x6d6e

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 198
    nop

    .line 199
    const/16 v3, -0x6000

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 200
    nop

    .line 201
    const/16 v3, -0x5fff

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 202
    nop

    .line 203
    const/16 v3, -0x5ffe

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 204
    nop

    .line 205
    const/16 v3, -0x5ffd

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 206
    nop

    .line 207
    const/16 v3, -0x5ffc

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 208
    nop

    .line 209
    const/16 v3, -0x5ffb

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 210
    nop

    .line 211
    const/16 v3, -0x5df5

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 212
    nop

    .line 213
    const/16 v3, -0x5df4

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 214
    nop

    .line 215
    const/16 v3, -0x5df2

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 216
    nop

    .line 217
    const/16 v3, -0x5df1

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 218
    nop

    .line 219
    const/16 v3, -0x5df0

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 220
    nop

    .line 221
    const/16 v3, -0x5dec

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 222
    nop

    .line 223
    const/16 v3, -0x5deb

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 224
    nop

    .line 225
    const/16 v3, -0x5de9

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 226
    nop

    .line 227
    const/16 v3, -0x5d00

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 228
    nop

    .line 229
    const/16 v3, -0x5cff

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 230
    nop

    .line 231
    const/16 v3, -0x5cfe

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 232
    nop

    .line 233
    const/16 v3, -0x5bff

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 234
    nop

    .line 235
    const/16 v3, -0x5bfe

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 236
    nop

    .line 237
    const/16 v3, -0x5bfd

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 238
    nop

    .line 239
    const/16 v3, -0x5bfc

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 240
    nop

    .line 241
    const/16 v3, -0x5bfb

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 242
    nop

    .line 243
    const/16 v3, -0x5bfa

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 244
    nop

    .line 245
    const/16 v3, -0x5bf9

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 246
    nop

    .line 247
    const/16 v3, -0x5bf8

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 248
    nop

    .line 249
    const/16 v3, -0x5bf7

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 250
    nop

    .line 251
    const/16 v3, -0x5bf6

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 252
    nop

    .line 253
    const/16 v3, -0x5bf5

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 254
    nop

    .line 255
    const/16 v3, -0x5bf4

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 256
    nop

    .line 257
    const/16 v3, -0x5be0

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 258
    nop

    .line 259
    const/16 v3, -0x6667

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 261
    nop

    .line 262
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 263
    nop

    .line 264
    invoke-static {v3, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 265
    nop

    .line 266
    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 267
    nop

    .line 268
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 269
    nop

    .line 270
    invoke-static {v3, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 271
    nop

    .line 272
    const/4 v2, 0x5

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 273
    nop

    .line 274
    const/4 v2, 0x6

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 275
    nop

    .line 276
    const/4 v2, 0x7

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 277
    nop

    .line 278
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 279
    nop

    .line 280
    const/16 v2, 0x9

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 281
    nop

    .line 282
    const/16 v2, 0xa

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 283
    nop

    .line 284
    const/16 v2, 0xb

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 285
    nop

    .line 286
    const/16 v2, 0xc

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 287
    nop

    .line 288
    const/16 v2, 0xd

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 289
    nop

    .line 290
    const/16 v2, 0xe

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 291
    nop

    .line 292
    const/16 v2, 0xf

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 293
    nop

    .line 294
    const/16 v2, 0x10

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 295
    nop

    .line 296
    const/16 v2, 0x11

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 297
    nop

    .line 298
    const/16 v2, 0x12

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 299
    nop

    .line 300
    const/16 v2, 0x13

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 301
    nop

    .line 302
    const/16 v2, 0x14

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 303
    nop

    .line 304
    const/16 v2, 0x15

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 305
    nop

    .line 306
    const/16 v2, 0x16

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 307
    nop

    .line 308
    const/16 v2, 0x17

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 309
    nop

    .line 310
    const/16 v2, 0x18

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 311
    nop

    .line 312
    const/16 v2, 0x19

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 313
    nop

    .line 314
    const/16 v2, 0x1a

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 315
    nop

    .line 316
    const/16 v2, 0x1b

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 317
    nop

    .line 318
    const/16 v2, 0x1c

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 319
    nop

    .line 320
    const/16 v2, 0x1d

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 321
    nop

    .line 322
    const/16 v2, 0x1e

    invoke-static {v3, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 324
    nop

    .line 325
    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 333
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 345
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1961
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1962
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1963
    const-string v0, "UTC"

    .line 1964
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 720
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 721
    return-void
.end method

.method public static addXiaomiComment([BLjava/lang/String;)[B
    .locals 8
    .param p0, "jpeg"    # [B
    .param p1, "comment"    # Ljava/lang/String;

    .line 2565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2566
    .local v0, "time":J
    const/4 v2, 0x0

    .line 2567
    .local v2, "outJpeg":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2569
    .local v3, "s":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v4}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 2570
    .local v4, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v4, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 2571
    invoke-virtual {v4, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    .line 2572
    invoke-virtual {v4, p0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 2573
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v2, v5

    .line 2574
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    goto :goto_0

    .line 2578
    :catch_0
    move-exception v4

    .line 2579
    .local v4, "e":Ljava/io/IOException;
    const-class v5, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2580
    move-object v2, p0

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2575
    :catch_1
    move-exception v4

    .line 2576
    .local v4, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    const-class v5, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2577
    move-object v2, p0

    .line 2581
    .end local v4    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_0
    nop

    .line 2583
    :goto_1
    sget-object v4, Lcom/miui/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addXiaomiComment cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    return-object v2
.end method

.method private buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 2032
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2033
    .local v0, "info":I
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 2036
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 2037
    .local v8, "type":S
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 2038
    .local v9, "definedCount":I
    if-eqz v9, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2039
    .local v7, "hasDefinedCount":Z
    :goto_1
    new-instance v10, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v10

    move v4, v8

    move v5, v9

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 2040
    .local v2, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2041
    return-object v1

    .line 2043
    :cond_2
    return-object v2

    .line 2034
    .end local v2    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v7    # "hasDefinedCount":Z
    .end local v8    # "type":S
    .end local v9    # "definedCount":I
    :cond_3
    :goto_2
    return-object v1
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 2208
    if-eqz p0, :cond_0

    .line 2210
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    goto :goto_0

    .line 2211
    :catch_0
    move-exception v0

    .line 2215
    :cond_0
    :goto_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D
    .locals 10
    .param p0, "coordinate"    # [Lcom/miui/gallery3d/exif/Rational;
    .param p1, "reference"    # Ljava/lang/String;

    .line 1923
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1924
    .local v0, "degrees":D
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v2

    .line 1925
    .local v2, "minutes":D
    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1926
    .local v4, "seconds":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double v6, v2, v6

    add-double/2addr v6, v0

    const-wide v8, 0x40ac200000000000L    # 3600.0

    div-double v8, v4, v8

    add-double/2addr v6, v8

    .line 1927
    .local v6, "result":D
    const-string v8, "S"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "W"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1930
    :cond_0
    return-wide v6

    .line 1928
    :cond_1
    :goto_0
    neg-double v8, v6

    return-wide v8

    .line 1931
    .end local v0    # "degrees":D
    .end local v2    # "minutes":D
    .end local v4    # "seconds":D
    .end local v6    # "result":D
    :catch_0
    move-exception v0

    .line 1932
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 14
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 2608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    const/4 v0, 0x0

    return v0

    .line 2613
    :cond_0
    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2617
    .local v2, "pair":[Ljava/lang/String;
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v6, v2, v5

    .line 2618
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v3, v6

    .line 2620
    .local v3, "degrees":D
    aget-object v6, v0, v5

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2621
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v2, v5

    .line 2622
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 2624
    .local v6, "minutes":D
    const/4 v8, 0x2

    aget-object v8, v0, v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 2625
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v1, v2, v5

    .line 2626
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 2628
    .local v8, "seconds":D
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v6, v10

    add-double/2addr v10, v3

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double/2addr v10, v12

    .line 2629
    .local v10, "result":D
    const-string v1, "S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2632
    :cond_1
    double-to-float v1, v10

    return v1

    .line 2630
    :cond_2
    :goto_0
    neg-double v12, v10

    double-to-float v1, v12

    return v1

    .line 2636
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "degrees":D
    .end local v6    # "minutes":D
    .end local v8    # "seconds":D
    .end local v10    # "result":D
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2633
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 2635
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .line 354
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

    .line 2199
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 2200
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 2201
    .local v3, "ret":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2202
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2203
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 2205
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 2504
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 8
    .param p0, "info"    # I

    .line 2508
    invoke-static {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v0

    .line 2509
    .local v0, "ifdFlags":I
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v1

    .line 2510
    .local v1, "ifds":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2511
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 2512
    shr-int v4, v0, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    .line 2513
    .local v4, "flag":I
    if-ne v4, v5, :cond_0

    .line 2514
    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    .end local v4    # "flag":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2517
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 2518
    const/4 v3, 0x0

    return-object v3

    .line 2520
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2521
    .local v3, "ret":[I
    const/4 v4, 0x0

    .line 2522
    .local v4, "j":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2523
    .local v6, "i":I
    add-int/lit8 v7, v4, 0x1

    .local v7, "j":I
    aput v6, v3, v4

    .line 2524
    .end local v4    # "j":I
    .end local v6    # "i":I
    nop

    .line 2522
    move v4, v7

    goto :goto_1

    .line 2525
    .end local v7    # "j":I
    .restart local v4    # "j":I
    :cond_3
    return-object v3
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 2561
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .line 2540
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2543
    :cond_0
    const/4 v1, 0x0

    .line 2544
    .local v1, "flags":I
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2545
    .local v2, "ifds":[I
    move v3, v1

    move v1, v0

    .local v1, "i":I
    .local v3, "flags":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 2546
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2547
    .local v6, "j":I
    aget v7, v2, v1

    if-ne v7, v6, :cond_1

    .line 2548
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 2549
    goto :goto_2

    .line 2546
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2545
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2553
    .end local v1    # "i":I
    :cond_3
    return v3

    .line 2541
    .end local v2    # "ifds":[I
    .end local v3    # "flags":I
    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .line 1873
    rem-int/lit16 p0, p0, 0x168

    .line 1874
    if-gez p0, :cond_0

    .line 1875
    add-int/lit16 p0, p0, 0x168

    .line 1877
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1878
    const/4 v0, 0x1

    return v0

    .line 1879
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1880
    const/4 v0, 0x6

    return v0

    .line 1881
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1882
    const/4 v0, 0x3

    return v0

    .line 1884
    :cond_3
    const/16 v0, 0x8

    return v0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 2
    .param p0, "orientation"    # S

    .line 1895
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1905
    return v1

    .line 1903
    :cond_0
    const/16 v0, 0x10e

    return v0

    .line 1899
    :cond_1
    const/16 v0, 0x5a

    return v0

    .line 1901
    :cond_2
    const/16 v0, 0xb4

    return v0

    .line 1897
    :cond_3
    return v1
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 369
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .line 362
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .line 2557
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 22

    .line 2235
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 2238
    .local v2, "ifdAllowedIfds":[I
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2239
    .local v3, "ifdFlags":I
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v6, 0x20000

    or-int v7, v3, v6

    const/4 v8, 0x0

    or-int/2addr v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v7, 0x40000

    or-int v9, v3, v7

    const/4 v10, 0x1

    or-int/2addr v9, v10

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    or-int v9, v3, v7

    or-int/2addr v9, v10

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v9, 0x30000

    or-int v11, v3, v9

    const/4 v12, 0x3

    or-int/2addr v11, v12

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2255
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int v11, v3, v9

    or-int/2addr v11, v1

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v11, 0x50000

    or-int v13, v3, v11

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    or-int v13, v3, v11

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    or-int v13, v3, v9

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    or-int v13, v3, v7

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    or-int v13, v3, v7

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int v13, v3, v9

    or-int/lit16 v13, v13, 0x300

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int v13, v3, v11

    or-int/2addr v13, v1

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int v13, v3, v11

    or-int/lit8 v13, v13, 0x6

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    or-int v13, v3, v11

    or-int/2addr v13, v12

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    or-int v13, v3, v11

    or-int/lit8 v13, v13, 0x6

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int v13, v3, v6

    or-int/lit8 v13, v13, 0x14

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v4, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    new-array v4, v10, [I

    aput v10, v4, v8

    .line 2305
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    .line 2306
    .local v5, "ifdFlags1":I
    iget-object v13, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int v15, v5, v7

    or-int/2addr v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v13, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    or-int v15, v5, v7

    or-int/2addr v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    new-array v13, v10, [I

    aput v1, v13, v8

    .line 2314
    .local v13, "exifAllowedIfds":[I
    invoke-static {v13}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    .line 2315
    .local v14, "exifFlags":I
    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v16, 0x70000

    or-int v17, v14, v16

    const/16 v18, 0x4

    or-int/lit8 v1, v17, 0x4

    invoke-virtual {v15, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    or-int v15, v14, v16

    or-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v15, v14, v9

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    or-int v15, v14, v16

    or-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int v15, v14, v7

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    or-int v15, v14, v7

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0xd

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x14

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x14

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x21

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    or-int v15, v14, v9

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int v15, v14, v9

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_OECF:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v15, 0xa0000

    or-int v17, v14, v15

    or-int/lit8 v6, v17, 0x1

    invoke-virtual {v1, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    or-int v12, v14, v15

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2365
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    or-int v12, v14, v15

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2369
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2371
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2373
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2375
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2377
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2379
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    or-int v12, v14, v9

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2381
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2383
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2385
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2387
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2391
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v12, v14, v9

    const/16 v17, 0x2

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2393
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2395
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2397
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int v12, v14, v16

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2399
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    or-int v12, v14, v16

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2401
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2403
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2405
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2407
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2409
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2411
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2413
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2415
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2417
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2419
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2421
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2423
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2425
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2427
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v7, v14

    or-int/2addr v7, v10

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2429
    iget-object v1, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    const/high16 v7, 0x20000

    or-int v12, v14, v7

    or-int/lit8 v7, v12, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    new-array v1, v10, [I

    aput v18, v1, v8

    .line 2435
    .local v1, "gpsAllowedIfds":[I
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    .line 2436
    .local v6, "gpsFlags":I
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v17, 0x10000

    or-int v20, v6, v17

    or-int/lit8 v9, v20, 0x4

    invoke-virtual {v7, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int v18, v6, v12

    const/16 v19, 0x2

    or-int/lit8 v8, v18, 0x2

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2440
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    or-int v9, v6, v12

    or-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v9, v6, v15

    const/4 v12, 0x3

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    or-int v9, v6, v15

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2446
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int v9, v6, v17

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2450
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v9, v6, v11

    const/4 v12, 0x3

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2452
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v15, 0x0

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2454
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    or-int v12, v6, v9

    const/4 v15, 0x2

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2456
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    or-int v12, v6, v9

    or-int/lit8 v9, v12, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2458
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2460
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2462
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2464
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2466
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2468
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2470
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2472
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v15, 0x0

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2476
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2478
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2480
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2482
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2484
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2486
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    or-int v9, v6, v16

    const/4 v11, 0x0

    or-int/2addr v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2488
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    or-int v9, v6, v16

    or-int/2addr v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2490
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v9, 0x20000

    or-int v11, v6, v9

    or-int/lit8 v9, v11, 0xb

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2492
    iget-object v7, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v9, 0x30000

    or-int/2addr v9, v6

    or-int/lit8 v9, v9, 0xb

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2495
    new-array v7, v10, [I

    const/4 v8, 0x0

    const/4 v9, 0x3

    aput v9, v7, v8

    .line 2498
    .local v7, "interopAllowedIfds":[I
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    .line 2499
    .local v9, "interopFlags":I
    iget-object v10, v0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/2addr v8, v12

    invoke-virtual {v10, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2501
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 6
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .line 2529
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2530
    .local v0, "ifds":[I
    invoke-static {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2531
    .local v1, "ifdFlags":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 2532
    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 2533
    return v5

    .line 2531
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2536
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .line 1491
    sget-object v0, Lcom/miui/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/miui/gallery3d/exif/Rational;
    .locals 9
    .param p0, "value"    # D

    .line 2187
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2188
    double-to-int v0, p0

    .line 2189
    .local v0, "degrees":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    .line 2190
    .end local p0    # "value":D
    .local v1, "value":D
    double-to-int p0, v1

    .line 2191
    .local p0, "minutes":I
    int-to-double v3, p0

    sub-double v3, v1, v3

    const-wide v5, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v3, v5

    .line 2192
    .end local v1    # "value":D
    .local v3, "value":D
    double-to-int p1, v3

    .line 2193
    .local p1, "seconds":I
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/gallery3d/exif/Rational;

    new-instance v2, Lcom/miui/gallery3d/exif/Rational;

    int-to-long v5, v0

    const-wide/16 v7, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Lcom/miui/gallery3d/exif/Rational;

    int-to-long v5, p0

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/miui/gallery3d/exif/Rational;

    int-to-long v5, p1

    const-wide/16 v7, 0x64

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    return-object v1
.end method

.method public static writeToOutStream(Lcom/miui/gallery3d/exif/ExifInterface;Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;)V
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2589
    if-eqz p0, :cond_0

    .line 2590
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 2592
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2593
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 2595
    :goto_0
    return-void
.end method

.method public static writeToOutStream(Lcom/miui/gallery3d/exif/ExifInterface;[BLjava/io/FileOutputStream;)V
    .locals 0
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .param p1, "jpeg"    # [B
    .param p2, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2599
    if-eqz p0, :cond_0

    .line 2600
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 2602
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2604
    :goto_0
    return-void
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "timestamp"    # J
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .line 1977
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1986
    :cond_0
    return v1

    .line 1979
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1980
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1981
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_2

    .line 1982
    return v1

    .line 1984
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 1985
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    nop

    .line 1988
    const/4 v0, 0x1

    return v0
.end method

.method public addDateTimeStampTag(ILjava/lang/String;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "dateTime"    # Ljava/lang/String;

    .line 1993
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1994
    return v1

    .line 1996
    :cond_0
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2008
    :cond_1
    return v1

    .line 1998
    :cond_2
    :goto_0
    const-string v0, "\u0000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2001
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2002
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_4

    .line 2003
    return v1

    .line 2005
    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2006
    const/4 v1, 0x1

    return v1
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 11
    .param p1, "timestamp"    # J

    .line 2110
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2111
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2112
    return v1

    .line 2114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2115
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2116
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/miui/gallery3d/exif/Rational;

    new-instance v4, Lcom/miui/gallery3d/exif/Rational;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    .line 2117
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/miui/gallery3d/exif/Rational;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    .line 2118
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-instance v6, Lcom/miui/gallery3d/exif/Rational;

    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v10, 0xd

    .line 2119
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v3, v4

    .line 2116
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2121
    if-nez v0, :cond_1

    .line 2122
    return v1

    .line 2124
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2125
    return v5
.end method

.method public addGpsDateTimeStampTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .line 2129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2132
    :cond_0
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2133
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_1

    .line 2134
    return v1

    .line 2136
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2137
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2138
    .local v2, "times":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 2141
    :cond_2
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    new-array v4, v4, [Lcom/miui/gallery3d/exif/Rational;

    new-instance v5, Lcom/miui/gallery3d/exif/Rational;

    aget-object v6, v2, v1

    .line 2142
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/miui/gallery3d/exif/Rational;

    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 2143
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v10, v7

    invoke-direct {v5, v10, v11, v8, v9}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/miui/gallery3d/exif/Rational;

    const/4 v7, 0x2

    aget-object v10, v2, v7

    .line 2144
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v5, v10, v11, v8, v9}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v7

    .line 2141
    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2146
    if-nez v0, :cond_3

    .line 2147
    return v1

    .line 2149
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2150
    return v6

    .line 2139
    :cond_4
    :goto_0
    return v1

    .line 2130
    .end local v0    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v2    # "times":[Ljava/lang/String;
    :cond_5
    :goto_1
    return v1
.end method

.method public addGpsTags(DD)Z
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 2085
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2086
    .local v0, "latTag":Lcom/miui/gallery3d/exif/ExifTag;
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/miui/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 2087
    .local v1, "longTag":Lcom/miui/gallery3d/exif/ExifTag;
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 2088
    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    const-string v5, "N"

    goto :goto_0

    .line 2089
    :cond_0
    const-string v5, "S"

    .line 2087
    :goto_0
    invoke-virtual {p0, v2, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 2090
    .local v2, "latRefTag":Lcom/miui/gallery3d/exif/ExifTag;
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 2091
    cmpl-double v3, p3, v3

    if-ltz v3, :cond_1

    const-string v3, "E"

    goto :goto_1

    .line 2092
    :cond_1
    const-string v3, "W"

    .line 2090
    :goto_1
    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 2093
    .local v3, "longRefTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    .line 2096
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2097
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2098
    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2099
    invoke-virtual {p0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2100
    const/4 v4, 0x1

    return v4

    .line 2094
    :cond_3
    :goto_2
    const/4 v4, 0x0

    return v4
.end method

.method public addTag(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 2047
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2048
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 2049
    const/4 v1, 0x0

    return v1

    .line 2051
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2052
    const/4 v1, 0x1

    return v1
.end method

.method public addUserComment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 2060
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTagIgnoreIfdAllowed(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2061
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 2062
    return v1

    .line 2064
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2065
    const/4 v1, 0x1

    return v1
.end method

.method public addXiaomiComment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 2069
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2070
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 2071
    const/4 v1, 0x0

    return v1

    .line 2073
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 2074
    const/4 v1, 0x1

    return v1
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 1506
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1507
    .local v0, "info":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 1510
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 1511
    .local v8, "type":S
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 1512
    .local v9, "definedCount":I
    if-eqz v9, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1513
    .local v7, "hasDefinedCount":Z
    :goto_1
    invoke-static {v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1514
    return-object v1

    .line 1516
    :cond_2
    new-instance v10, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v10

    move v4, v8

    move v5, v9

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1517
    .local v2, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1518
    return-object v1

    .line 1520
    :cond_3
    return-object v2

    .line 1508
    .end local v2    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v7    # "hasDefinedCount":Z
    .end local v8    # "type":S
    .end local v9    # "definedCount":I
    :cond_4
    :goto_2
    return-object v1
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 1531
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1532
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 11
    .param p1, "tagId"    # I

    .line 1536
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1537
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1538
    const/4 v1, 0x0

    return-object v1

    .line 1540
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    .line 1541
    .local v1, "type":S
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v8

    .line 1542
    .local v8, "definedCount":I
    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1543
    .local v7, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v9

    .line 1544
    .local v9, "ifdId":I
    new-instance v10, Lcom/miui/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v10

    move v4, v1

    move v5, v8

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1545
    .local v2, "t":Lcom/miui/gallery3d/exif/ExifTag;
    return-object v2
.end method

.method public clearExif()V
    .locals 2

    .line 785
    new-instance v0, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v1, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 786
    return-void
.end method

.method public deleteTag(I)V
    .locals 1
    .param p1, "tagId"    # I

    .line 1623
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1624
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->deleteTag(II)V

    .line 1625
    return-void
.end method

.method public deleteTag(II)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1614
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 1615
    return-void
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

    .line 1141
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1142
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
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

    .line 1096
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    const/4 v0, 0x0

    .line 1098
    .local v0, "reWriteRet":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1101
    goto :goto_0

    .line 1099
    :catch_0
    move-exception v1

    .line 1102
    :goto_0
    if-nez v0, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1105
    .local v1, "tempData":Lcom/miui/gallery3d/exif/ExifData;
    new-instance v2, Lcom/miui/gallery3d/exif/ExifData;

    sget-object v3, Lcom/miui/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v2, v3}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v2, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1106
    const/4 v2, 0x0

    .line 1107
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1109
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1110
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 1111
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1112
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1113
    .local v4, "imageBytes":[B
    invoke-virtual {p0, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 1114
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1115
    invoke-virtual {p0, v4, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_1
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    .end local v4    # "imageBytes":[B
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1124
    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 1125
    goto :goto_2

    .line 1122
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1118
    :catch_1
    move-exception v4

    .line 1119
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1120
    throw v4

    .line 1116
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1117
    .local v4, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid exif format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1122
    .end local v4    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1124
    iput-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    throw v4

    .line 1127
    .end local v1    # "tempData":Lcom/miui/gallery3d/exif/ExifData;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_2
    return-void
.end method

.method public getActualTagCount(II)I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1443
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1444
    const/4 v1, 0x0

    return v1

    .line 1446
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    return v1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime(I)Ljava/lang/String;
    .locals 5
    .param p1, "tagId"    # I

    .line 2013
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_2

    .line 2015
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(I)[B

    move-result-object v0

    .line 2016
    .local v0, "values":[B
    if-eqz v0, :cond_2

    .line 2018
    :try_start_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 2019
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const-string v4, "US-ASCII"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 2021
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2023
    :catch_0
    move-exception v1

    .line 2024
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2028
    .end local v0    # "values":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2
    .param p1, "tagId"    # I

    .line 1425
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1426
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1427
    const/4 v1, 0x0

    return v1

    .line 1429
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    return v1
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .line 1457
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1458
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1459
    const/4 v1, -0x1

    return v1

    .line 1461
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    return v1
.end method

.method public getDefinedTagType(I)S
    .locals 2
    .param p1, "tagId"    # I

    .line 1472
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1473
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1474
    const/4 v1, -0x1

    return v1

    .line 1476
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    return v1
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 961
    if-eqz p1, :cond_0

    .line 964
    new-instance v0, Lcom/miui/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V

    .line 965
    .local v0, "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/miui/gallery3d/exif/ExifData;)V

    .line 966
    return-object v0

    .line 962
    .end local v0    # "eos":Lcom/miui/gallery3d/exif/ExifOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 982
    if-eqz p1, :cond_0

    .line 985
    const/4 v0, 0x0

    .line 987
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 991
    nop

    .line 992
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 988
    :catch_0
    move-exception v1

    .line 989
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 990
    throw v1

    .line 983
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGpsDate()Ljava/lang/String;
    .locals 5

    .line 2155
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(I)[B

    move-result-object v0

    .line 2156
    .local v0, "values":[B
    if-eqz v0, :cond_1

    .line 2158
    :try_start_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    .line 2159
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const-string v4, "US-ASCII"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 2161
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2163
    :catch_0
    move-exception v1

    .line 2164
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2167
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGpsTime()Ljava/lang/String;
    .locals 7

    .line 2171
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v0

    .line 2172
    .local v0, "rationals":[Lcom/miui/gallery3d/exif/Rational;
    if-eqz v0, :cond_2

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2174
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 2175
    .local v4, "rational":Lcom/miui/gallery3d/exif/Rational;
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    .end local v4    # "rational":Lcom/miui/gallery3d/exif/Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2177
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2180
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2182
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .line 1945
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v0

    .line 1946
    .local v0, "latitude":[Lcom/miui/gallery3d/exif/Rational;
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "latitudeRef":Ljava/lang/String;
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v2

    .line 1948
    .local v2, "longitude":[Lcom/miui/gallery3d/exif/Rational;
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1949
    .local v3, "longitudeRef":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    array-length v4, v2

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 1954
    .local v4, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1955
    const/4 v5, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/miui/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1956
    return-object v4

    .line 1951
    .end local v4    # "latLon":[D
    :cond_1
    :goto_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getTag(I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .line 1199
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1200
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1185
    invoke-static {p2}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    const/4 v0, 0x0

    return-object v0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery3d/exif/ExifData;->getTag(SI)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I

    .line 1303
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1304
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1292
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1293
    .local v0, "l":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    return-object v1

    .line 1294
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .line 1379
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1380
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1368
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1369
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1370
    const/4 v1, 0x0

    return-object v1

    .line 1372
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    return-object v1
.end method

.method protected getTagDefinition(SI)I
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I

    .line 1685
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/miui/gallery3d/exif/ExifTag;)I
    .locals 4
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 1707
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    .line 1708
    .local v0, "type":S
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 1709
    .local v1, "count":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v2

    .line 1710
    .local v2, "ifd":I
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 16
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "count"    # I
    .param p4, "ifd"    # I

    .line 1714
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v0

    .line 1715
    .local v0, "defs":[I
    if-nez v0, :cond_0

    .line 1716
    const/4 v1, -0x1

    return v1

    .line 1718
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 1719
    .local v1, "infos":Landroid/util/SparseIntArray;
    const/4 v2, -0x1

    .line 1720
    .local v2, "ret":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_7

    aget v6, v0, v5

    .line 1721
    .local v6, "i":I
    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1722
    .local v7, "info":I
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 1723
    .local v8, "def_type":S
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 1724
    .local v9, "def_count":I
    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v10

    .line 1725
    .local v10, "def_ifds":[I
    const/4 v11, 0x0

    .line 1726
    .local v11, "valid_ifd":Z
    array-length v12, v10

    move v13, v4

    :goto_1
    if-ge v13, v12, :cond_2

    aget v14, v10, v13

    .line 1727
    .local v14, "j":I
    move/from16 v15, p4

    if-ne v14, v15, :cond_1

    .line 1728
    const/4 v11, 0x1

    .line 1729
    goto :goto_2

    .line 1726
    .end local v14    # "j":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1732
    :cond_2
    move/from16 v15, p4

    :goto_2
    if-eqz v11, :cond_4

    move/from16 v12, p2

    if-ne v12, v8, :cond_5

    move/from16 v13, p3

    if-eq v13, v9, :cond_3

    if-nez v9, :cond_6

    .line 1734
    :cond_3
    move v2, v6

    .line 1735
    goto :goto_3

    .line 1720
    .end local v6    # "i":I
    .end local v7    # "info":I
    .end local v8    # "def_type":S
    .end local v9    # "def_count":I
    .end local v10    # "def_ifds":[I
    .end local v11    # "valid_ifd":Z
    :cond_4
    move/from16 v12, p2

    :cond_5
    move/from16 v13, p3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1738
    :cond_7
    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v15, p4

    :goto_3
    return v2
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 10
    .param p1, "tagId"    # S

    .line 1689
    invoke-static {}, Lcom/miui/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 1690
    .local v0, "ifds":[I
    array-length v1, v0

    new-array v1, v1, [I

    .line 1691
    .local v1, "defs":[I
    const/4 v2, 0x0

    .line 1692
    .local v2, "counter":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 1693
    .local v3, "infos":Landroid/util/SparseIntArray;
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v2

    move v2, v5

    .end local v2    # "counter":I
    .local v6, "counter":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v7, v0, v2

    .line 1694
    .local v7, "i":I
    invoke-static {v7, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    .line 1695
    .local v8, "def":I
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-eqz v9, :cond_0

    .line 1696
    add-int/lit8 v9, v6, 0x1

    .local v9, "counter":I
    aput v8, v1, v6

    .line 1693
    .end local v6    # "counter":I
    .end local v7    # "i":I
    .end local v8    # "def":I
    move v6, v9

    .end local v9    # "counter":I
    .restart local v6    # "counter":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1699
    :cond_1
    if-nez v6, :cond_2

    .line 1700
    const/4 v2, 0x0

    return-object v2

    .line 1703
    :cond_2
    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    return-object v2
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2221
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2222
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .line 1284
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1285
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1274
    .local v0, "l":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 1275
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .line 1360
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1361
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1349
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1350
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1351
    const/4 v1, 0x0

    return-object v1

    .line 1353
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .line 1265
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1266
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    .line 1255
    .local v0, "l":[J
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1258
    :cond_0
    new-instance v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 1256
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .line 1341
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1342
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1331
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1332
    const/4 v1, 0x0

    return-object v1

    .line 1334
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(I)Lcom/miui/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .line 1322
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1323
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValue(II)Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/miui/gallery3d/exif/Rational;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v0

    .line 1312
    .local v0, "l":[Lcom/miui/gallery3d/exif/Rational;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1315
    :cond_0
    new-instance v1, Lcom/miui/gallery3d/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/Rational;-><init>(Lcom/miui/gallery3d/exif/Rational;)V

    return-object v1

    .line 1313
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagRationalValues(I)[Lcom/miui/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .line 1398
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1399
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/miui/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1388
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1389
    const/4 v1, 0x0

    return-object v1

    .line 1391
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .line 1246
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1247
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1235
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1236
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1237
    const/4 v1, 0x0

    return-object v1

    .line 1239
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I

    .line 1222
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1223
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1209
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1210
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .param p1, "ifdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .param p1, "tagId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1763
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1765
    .local v0, "thumb":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1766
    .end local v0    # "thumb":[B
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    .line 1769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    .line 1785
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCommentAsASCII()Ljava/lang/String;
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getUserCommentAsASCII()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXiaomiComment()Ljava/lang/String;
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getXiaomiComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3
    .param p1, "tagId"    # I

    .line 1409
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1411
    .local v0, "info":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1412
    return v1

    .line 1414
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    if-eqz p1, :cond_0

    .line 745
    new-instance v0, Lcom/miui/gallery3d/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/miui/gallery3d/exif/ExifReader;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifData;

    move-result-object v0

    .line 746
    .local v0, "d":Lcom/miui/gallery3d/exif/ExifData;
    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    .line 747
    return-void

    .line 743
    .end local v0    # "d":Lcom/miui/gallery3d/exif/ExifData;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 3
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    if-eqz p1, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 764
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 767
    nop

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 759
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 731
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 732
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .line 1850
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1851
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1
    .param p1, "tagId"    # I

    .line 1747
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1748
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .line 1754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1755
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
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

    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    move-object/from16 v1, p0

    .line 1011
    const/4 v2, 0x0

    .line 1012
    .local v2, "file":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    move-object v3, v0

    .line 1015
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v4, "temp":Ljava/io/File;
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    .line 1019
    move-object v6, v0

    .line 1021
    .local v6, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    :try_start_2
    invoke-static {v3, v1}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;

    move-result-object v0
    :try_end_2
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    .end local v6    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .local v0, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    nop

    .line 1025
    :try_start_3
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v6

    int-to-long v13, v6

    .line 1028
    .local v13, "exifSize":J
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1029
    const/4 v3, 0x0

    .line 1032
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v6

    .line 1033
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    move-wide v15, v6

    .line 1034
    .local v15, "fileLength":J
    cmp-long v6, v15, v13

    if-ltz v6, :cond_0

    .line 1039
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    move-wide v11, v13

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1043
    .local v6, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v7, p2

    :try_start_4
    invoke-virtual {v1, v6, v7}, Lcom/miui/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .end local v4    # "temp":Ljava/io/File;
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .end local v13    # "exifSize":J
    .end local v15    # "fileLength":J
    move v0, v8

    .line 1048
    .local v0, "ret":Z
    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1049
    nop

    .line 1048
    nop

    .line 1050
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1051
    return v0

    .line 1035
    .local v0, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v13    # "exifSize":J
    .restart local v15    # "fileLength":J
    :cond_0
    move-object/from16 v7, p2

    :try_start_5
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Filesize changed during operation"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1022
    .end local v0    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    .end local v13    # "exifSize":J
    .end local v15    # "fileLength":J
    .local v6, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    move-object v8, v0

    .line 1023
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid exif format : "

    invoke-direct {v8, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1044
    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    .end local v4    # "temp":Ljava/io/File;
    .end local v6    # "parser":Lcom/miui/gallery3d/exif/ExifParser;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1048
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1044
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1048
    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_0
    move-object/from16 v7, p2

    goto :goto_3

    .line 1044
    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    :goto_1
    move-object/from16 v7, p2

    .line 1045
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1046
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1048
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    const/4 v0, 0x0

    .line 1070
    .local v0, "mod":Lcom/miui/gallery3d/exif/ExifModifier;
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifModifier;

    invoke-direct {v1, p1, p0}, Lcom/miui/gallery3d/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/miui/gallery3d/exif/ExifInterface;)V

    move-object v0, v1

    .line 1071
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery3d/exif/ExifTag;

    .line 1072
    .local v2, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, v2}, Lcom/miui/gallery3d/exif/ExifModifier;->modifyTag(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 1073
    .end local v2    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifModifier;->commit()Z

    move-result v1
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .line 1839
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1840
    .local v0, "thumbnail":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    const/4 v1, 0x0

    return v1

    .line 1843
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    return v1
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1
    .param p1, "thumb"    # [B

    .line 1826
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1827
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1828
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->clearExif()V

    .line 778
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 779
    return-void
.end method

.method public setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 1
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 1591
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifInterface;->mData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 15
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I
    .param p3, "tagType"    # S
    .param p4, "defaultComponentCount"    # S
    .param p5, "allowedIfds"    # [I

    move/from16 v0, p2

    .line 1643
    move-object/from16 v1, p5

    sget-object v2, Lcom/miui/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 1644
    return v3

    .line 1646
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1647
    move/from16 v2, p1

    invoke-static {v0, v2}, Lcom/miui/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v4

    .line 1648
    .local v4, "tagDef":I
    if-ne v4, v3, :cond_1

    .line 1649
    return v3

    .line 1651
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v5

    .line 1652
    .local v5, "otherDefs":[I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1654
    .local v6, "infos":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .line 1655
    .local v7, "defaultCheck":Z
    array-length v8, v1

    const/4 v9, 0x0

    move v10, v7

    move v7, v9

    .end local v7    # "defaultCheck":Z
    .local v10, "defaultCheck":Z
    :goto_0
    if-ge v7, v8, :cond_4

    aget v11, v1, v7

    .line 1656
    .local v11, "i":I
    if-ne v0, v11, :cond_2

    .line 1657
    const/4 v10, 0x1

    .line 1659
    :cond_2
    invoke-static {v11}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1660
    return v3

    .line 1655
    .end local v11    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1663
    :cond_4
    if-nez v10, :cond_5

    .line 1664
    return v3

    .line 1667
    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/miui/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v7

    .line 1669
    .local v7, "ifdFlags":I
    if-eqz v5, :cond_7

    .line 1670
    array-length v8, v5

    :goto_1
    if-ge v9, v8, :cond_7

    aget v11, v5, v9

    .line 1671
    .local v11, "def":I
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 1672
    .local v12, "tagInfo":I
    invoke-static {v12}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v13

    .line 1673
    .local v13, "allowedFlags":I
    and-int v14, v7, v13

    if-eqz v14, :cond_6

    .line 1674
    return v3

    .line 1670
    .end local v11    # "def":I
    .end local v12    # "tagInfo":I
    .end local v13    # "allowedFlags":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1678
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v3

    shl-int/lit8 v8, v7, 0x18

    shl-int/lit8 v11, p3, 0x10

    or-int/2addr v8, v11

    or-int v8, v8, p4

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    return v4

    .line 1681
    .end local v4    # "tagDef":I
    .end local v5    # "otherDefs":[I
    .end local v6    # "infos":Landroid/util/SparseIntArray;
    .end local v7    # "ifdFlags":I
    .end local v10    # "defaultCheck":Z
    :cond_8
    move/from16 v2, p1

    return v3
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1561
    .local v0, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1562
    const/4 v1, 0x0

    return v1

    .line 1564
    :cond_0
    invoke-virtual {v0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 1577
    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1578
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1602
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifTag;

    .line 1603
    .local v1, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 1604
    .end local v1    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1605
    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 819
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 820
    .local v0, "s":Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 821
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 822
    return-void

    .line 817
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 887
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 888
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    nop

    .line 893
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 894
    return-void

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 891
    throw v1

    .line 882
    .end local v0    # "s":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 837
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 838
    .local v0, "s":Ljava/io/OutputStream;
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 839
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 840
    return-void

    .line 835
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 914
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 915
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    nop

    .line 920
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 921
    return-void

    .line 916
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 918
    throw v1

    .line 909
    .end local v0    # "s":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jpegFileName"    # Ljava/lang/String;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 941
    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    nop

    .line 946
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 947
    return-void

    .line 942
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 944
    throw v1

    .line 936
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 801
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 802
    .local v0, "s":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 803
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 804
    return-void

    .line 799
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 860
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 861
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    nop

    .line 866
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 867
    return-void

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 864
    throw v1

    .line 855
    .end local v0    # "s":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
