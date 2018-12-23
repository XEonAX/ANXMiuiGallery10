.class public Lcom/miui/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 79
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    .line 80
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 81
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 82
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x4

    aput v2, v0, v2

    .line 83
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v3, 0x8

    const/4 v4, 0x5

    aput v3, v0, v4

    .line 84
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v4, 0x7

    aput v1, v0, v4

    .line 85
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 86
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-short p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    .line 131
    iput-short p2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 132
    iput p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 133
    iput-boolean p5, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 134
    iput p4, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 889
    iget-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 890
    const/4 v0, 0x1

    return v0

    .line 892
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkOverflowForRational([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 8
    .param p1, "value"    # [Lcom/miui/gallery3d/exif/Rational;

    .line 957
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 958
    .local v3, "v":Lcom/miui/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 959
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 960
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    .line 957
    .end local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    .restart local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 964
    .end local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4
    .param p1, "value"    # [I

    .line 937
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 938
    .local v3, "v":I
    if-gez v3, :cond_0

    .line 939
    const/4 v0, 0x1

    return v0

    .line 937
    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7
    .param p1, "value"    # [J

    .line 928
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    .line 929
    .local v3, "v":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    goto :goto_1

    .line 928
    .end local v3    # "v":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    .restart local v3    # "v":J
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 933
    .end local v3    # "v":J
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedRational([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 8
    .param p1, "value"    # [Lcom/miui/gallery3d/exif/Rational;

    .line 946
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 947
    .local v3, "v":Lcom/miui/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 948
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 949
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    .line 946
    .end local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    .restart local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 953
    .end local v3    # "v":Lcom/miui/gallery3d/exif/Rational;
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .line 919
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 920
    .local v3, "v":I
    const v4, 0xffff

    if-gt v3, v4, :cond_1

    if-gez v3, :cond_0

    goto :goto_1

    .line 919
    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .restart local v3    # "v":I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 924
    .end local v3    # "v":I
    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .line 896
    packed-switch p0, :pswitch_data_0

    .line 914
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 912
    :pswitch_1
    const-string v0, "RATIONAL"

    return-object v0

    .line 910
    :pswitch_2
    const-string v0, "LONG"

    return-object v0

    .line 908
    :pswitch_3
    const-string v0, "UNDEFINED"

    return-object v0

    .line 906
    :pswitch_4
    const-string v0, "UNSIGNED_RATIONAL"

    return-object v0

    .line 904
    :pswitch_5
    const-string v0, "UNSIGNED_LONG"

    return-object v0

    .line 902
    :pswitch_6
    const-string v0, "UNSIGNED_SHORT"

    return-object v0

    .line 900
    :pswitch_7
    const-string v0, "ASCII"

    return-object v0

    .line 898
    :pswitch_8
    const-string v0, "UNSIGNED_BYTE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .line 151
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .line 112
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .line 121
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 969
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 970
    return v0

    .line 972
    :cond_0
    instance-of v1, p1, Lcom/miui/gallery3d/exif/ExifTag;

    if-eqz v1, :cond_c

    .line 973
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifTag;

    .line 974
    .local v1, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    iget-short v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_b

    iget v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_b

    iget-short v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 979
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 980
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 981
    return v0

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_4

    .line 983
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-nez v2, :cond_3

    .line 984
    return v0

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 987
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/miui/gallery3d/exif/Rational;

    if-eqz v2, :cond_6

    .line 988
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/miui/gallery3d/exif/Rational;

    if-nez v2, :cond_5

    .line 989
    return v0

    .line 991
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/miui/gallery3d/exif/Rational;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 992
    :cond_6
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_8

    .line 993
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-nez v2, :cond_7

    .line 994
    return v0

    .line 996
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 998
    :cond_8
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1001
    :cond_9
    iget-object v2, v1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_a

    const/4 v0, 0x1

    nop

    :cond_a
    return v0

    .line 977
    :cond_b
    :goto_0
    return v0

    .line 1004
    .end local v1    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_c
    return v0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .line 735
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 736
    .local v0, "l":[J
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lt v3, v1, :cond_0

    .line 737
    aget-wide v1, v0, v2

    return-wide v1

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v3

    .line 740
    .local v3, "b":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v1, :cond_1

    .line 741
    aget-byte v1, v3, v2

    int-to-long v1, v1

    return-wide v1

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v4

    .line 744
    .local v4, "r":[Lcom/miui/gallery3d/exif/Rational;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lt v5, v1, :cond_2

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 745
    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v1

    double-to-long v1, v1

    return-wide v1

    .line 747
    :cond_2
    return-wide p1
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 755
    const-string v0, ""

    return-object v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 757
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 758
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 764
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 768
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 769
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_6

    .line 770
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 771
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 772
    const-string v1, ""

    return-object v1

    .line 774
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 777
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 215
    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 216
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 843
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([BII)V

    .line 844
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 857
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 859
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 862
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_2

    iget v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    goto :goto_1

    .line 861
    :cond_2
    move v2, p3

    :goto_1
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .line 191
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .line 870
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/miui/gallery3d/exif/Rational;
    .locals 3
    .param p1, "index"    # I

    .line 832
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 834
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .line 811
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 812
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 813
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getStringByte()[B
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .line 175
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3
    .param p1, "defaultValue"    # B

    .line 597
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 598
    .local v0, "b":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1

    .line 599
    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsBytes()[B
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    .line 584
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 681
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    .line 682
    .local v0, "i":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 683
    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsInts()[I
    .locals 5

    .line 658
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 659
    return-object v1

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    .line 662
    .local v0, "val":[J
    array-length v1, v0

    new-array v1, v1, [I

    .line 663
    .local v1, "arr":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 664
    aget-wide v3, v0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 668
    .end local v0    # "val":[J
    .end local v1    # "arr":[I
    :cond_2
    return-object v1
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .line 712
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 713
    .local v0, "l":[J
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 714
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public getValueAsLongs()[J
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsRational(J)Lcom/miui/gallery3d/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # J

    .line 646
    new-instance v0, Lcom/miui/gallery3d/exif/Rational;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/miui/gallery3d/exif/Rational;-><init>(JJ)V

    .line 647
    .local v0, "defaultVal":Lcom/miui/gallery3d/exif/Rational;
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsRational(Lcom/miui/gallery3d/exif/Rational;)Lcom/miui/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lcom/miui/gallery3d/exif/Rational;)Lcom/miui/gallery3d/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # Lcom/miui/gallery3d/exif/Rational;

    .line 628
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/miui/gallery3d/exif/Rational;

    move-result-object v0

    .line 629
    .local v0, "r":[Lcom/miui/gallery3d/exif/Rational;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 630
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getValueAsRationals()[Lcom/miui/gallery3d/exif/Rational;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/miui/gallery3d/exif/Rational;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    return-object v0

    .line 615
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    return-object v1

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 554
    :cond_2
    return-object v1
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 568
    return-object p1

    .line 570
    :cond_0
    return-object v0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 795
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 800
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 801
    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .line 881
    iput-boolean p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 882
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .line 168
    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    .line 169
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 877
    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    .line 878
    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3
    .param p1, "time"    # J

    .line 534
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 535
    :try_start_0
    sget-object v1, Lcom/miui/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 309
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 2
    .param p1, "value"    # Lcom/miui/gallery3d/exif/Rational;

    .line 401
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery3d/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 464
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 465
    return v0

    .line 466
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_1

    .line 467
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    and-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result v0

    return v0

    .line 468
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 469
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 470
    :cond_2
    instance-of v1, p1, [I

    if-eqz v1, :cond_3

    .line 471
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 472
    :cond_3
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    .line 473
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0

    .line 474
    :cond_4
    instance-of v1, p1, Lcom/miui/gallery3d/exif/Rational;

    if-eqz v1, :cond_5

    .line 475
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery3d/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    return v0

    .line 476
    :cond_5
    instance-of v1, p1, [Lcom/miui/gallery3d/exif/Rational;

    if-eqz v1, :cond_6

    .line 477
    move-object v0, p1

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    return v0

    .line 478
    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_7

    .line 479
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0

    .line 480
    :cond_7
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 481
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result v0

    return v0

    .line 482
    :cond_8
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 483
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(J)Z

    move-result v0

    return v0

    .line 484
    :cond_9
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_a

    .line 485
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(B)Z

    move-result v0

    return v0

    .line 486
    :cond_a
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_d

    .line 488
    move-object v1, p1

    check-cast v1, [Ljava/lang/Short;

    .line 489
    .local v1, "arr":[Ljava/lang/Short;
    array-length v3, v1

    new-array v3, v3, [I

    .line 490
    .local v3, "fin":[I
    move v4, v0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_c

    .line 491
    aget-object v5, v1, v4

    if-nez v5, :cond_b

    move v5, v0

    goto :goto_1

    :cond_b
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    and-int/2addr v5, v2

    :goto_1
    aput v5, v3, v4

    .line 490
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    .end local v4    # "i":I
    :cond_c
    invoke-virtual {p0, v3}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 494
    .end local v1    # "arr":[Ljava/lang/Short;
    .end local v3    # "fin":[I
    :cond_d
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 496
    move-object v1, p1

    check-cast v1, [Ljava/lang/Integer;

    .line 497
    .local v1, "arr":[Ljava/lang/Integer;
    array-length v2, v1

    new-array v2, v2, [I

    .line 498
    .local v2, "fin":[I
    move v3, v0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_f

    .line 499
    aget-object v4, v1, v3

    if-nez v4, :cond_e

    move v4, v0

    goto :goto_3

    :cond_e
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    aput v4, v2, v3

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 501
    .end local v3    # "i":I
    :cond_f
    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 502
    .end local v1    # "arr":[Ljava/lang/Integer;
    .end local v2    # "fin":[I
    :cond_10
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_13

    .line 504
    move-object v1, p1

    check-cast v1, [Ljava/lang/Long;

    .line 505
    .local v1, "arr":[Ljava/lang/Long;
    array-length v2, v1

    new-array v2, v2, [J

    .line 506
    .local v2, "fin":[J
    nop

    .local v0, "i":I
    :goto_4
    array-length v3, v1

    if-ge v0, v3, :cond_12

    .line 507
    aget-object v3, v1, v0

    if-nez v3, :cond_11

    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_11
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_5
    aput-wide v3, v2, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 509
    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0

    .line 510
    .end local v1    # "arr":[Ljava/lang/Long;
    .end local v2    # "fin":[J
    :cond_13
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_16

    .line 512
    move-object v1, p1

    check-cast v1, [Ljava/lang/Byte;

    .line 513
    .local v1, "arr":[Ljava/lang/Byte;
    array-length v2, v1

    new-array v2, v2, [B

    .line 514
    .local v2, "fin":[B
    move v3, v0

    .restart local v3    # "i":I
    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_15

    .line 515
    aget-object v4, v1, v3

    if-nez v4, :cond_14

    move v4, v0

    goto :goto_7

    :cond_14
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    :goto_7
    aput-byte v4, v2, v3

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 517
    .end local v3    # "i":I
    :cond_15
    invoke-virtual {p0, v2}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0

    .line 519
    .end local v1    # "arr":[Ljava/lang/Byte;
    .end local v2    # "fin":[B
    :cond_16
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 329
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_0

    .line 330
    return v3

    .line 333
    :cond_0
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 334
    .local v0, "buf":[B
    move-object v4, v0

    .line 335
    .local v4, "finalBuf":[B
    array-length v5, v0

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 336
    array-length v1, v0

    sub-int/2addr v1, v6

    aget-byte v1, v0, v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 337
    :cond_1
    array-length v1, v0

    add-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    :goto_1
    move-object v4, v1

    .line 340
    array-length v1, v0

    sub-int/2addr v1, v6

    aget-byte v1, v0, v1

    if-eqz v1, :cond_4

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_4

    .line 341
    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    goto :goto_2

    .line 343
    :cond_3
    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v1, :cond_4

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v6, :cond_4

    .line 344
    new-array v1, v6, [B

    aput-byte v3, v1, v3

    move-object v4, v1

    .line 346
    :cond_4
    :goto_2
    array-length v1, v4

    .line 347
    .local v1, "count":I
    invoke-direct {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 348
    return v3

    .line 350
    :cond_5
    iput v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 351
    iput-object v4, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 352
    return v6
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .line 434
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 418
    invoke-direct {p0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    return v1

    .line 421
    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    .line 422
    return v1

    .line 424
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iput p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 427
    return v2
.end method

.method public setValue([I)Z
    .locals 5
    .param p1, "value"    # [I

    .line 238
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    return v1

    .line 241
    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    .line 243
    return v1

    .line 245
    :cond_1
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    return v1

    .line 247
    :cond_2
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    return v1

    .line 251
    :cond_3
    array-length v0, p1

    new-array v0, v0, [J

    .line 252
    .local v0, "data":[J
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 253
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_4
    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 256
    array-length v1, p1

    iput v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 257
    const/4 v1, 0x1

    return v1
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .line 288
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    return v1

    .line 294
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 295
    array-length v0, p1

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 296
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_2
    :goto_0
    return v1
.end method

.method public setValue([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 4
    .param p1, "value"    # [Lcom/miui/gallery3d/exif/Rational;

    .line 370
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 371
    return v1

    .line 373
    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    .line 374
    return v1

    .line 376
    :cond_1
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    return v1

    .line 378
    :cond_2
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForRational([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    return v1

    .line 382
    :cond_3
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 383
    array-length v0, p1

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "tag id: %04X\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-short v4, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    .line 1010
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    return-object v0
.end method
