.class Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
.super Ljava/lang/Object;
.source "TextAppendConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private final mCornerDialogWidth:I

.field private final mCorrectionDegrees:I

.field private final mCountSizeSpacing:F

.field private mDefaultLocationX:F

.field private mDefaultLocationY:F

.field private final mDefaultStrokeWidth:I

.field private final mDefaultTextSize:F

.field private mDialogDrawable:Landroid/graphics/drawable/Drawable;

.field private mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

.field private final mDialogOutLineOffsetX:I

.field private final mDialogOutLineOffsetY:I

.field private mDialogRect:Landroid/graphics/RectF;

.field private final mDialogWidth:I

.field private mIsActivation:Z

.field private mIsBoldText:Z

.field private mIsCorrection:Z

.field private mIsMirror:Z

.field private mIsRTL:Z

.field private mIsShadow:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMaxTextSize:F

.field private mMaxWidth:F

.field private final mMinTextSize:I

.field private final mOutLineOffsetX:I

.field private final mOutLineOffsetY:I

.field private mOutLineRect:Landroid/graphics/RectF;

.field private mRotateDegrees:F

.field private mScaleMultipleOrigin:F

.field private mTemRect:Landroid/graphics/RectF;

.field private mText:Ljava/lang/String;

.field private final mTextAppendPadding:F

.field private mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

.field private mTextInDialogRect:Landroid/graphics/RectF;

.field private mTextRect:Landroid/graphics/RectF;

.field private mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mTextTransparent:F

.field private mUserLocationX:F

.field private mUserLocationY:F

.field private mUserScaleMultiple:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    .line 95
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 98
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 99
    iput-boolean v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    .line 101
    :cond_0
    const v2, 0x7f0b02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetX:I

    .line 102
    const v2, 0x7f0b02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetY:I

    .line 103
    const v2, 0x7f0b02d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetX:I

    .line 104
    const v2, 0x7f0b02d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetY:I

    .line 105
    const v2, 0x7f0b02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    .line 106
    const v2, 0x7f0b02d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    .line 107
    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMinTextSize:I

    .line 108
    const v2, 0x7f0b02d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    .line 109
    const/4 v2, 0x5

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    .line 110
    const v2, 0x7f0b02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    .line 111
    const v2, 0x7f0b02e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxTextSize:F

    .line 112
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCountSizeSpacing:F

    .line 113
    const v2, 0x7f0b02e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextAppendPadding:F

    .line 115
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 117
    const v2, 0x7f0e04b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 118
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 119
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 120
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 121
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 123
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 124
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 125
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 126
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 127
    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 128
    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 129
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 130
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 131
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 132
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 133
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    const v3, 0x7f0b02e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLineHeightOffset(F)V

    .line 136
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    .line 139
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    .line 141
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    .line 143
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    .line 145
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    .line 147
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->RIGHT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 148
    return-void

    .line 147
    :cond_1
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 595
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;-><init>(Landroid/content/Context;)V

    .line 596
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 598
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .local v0, "tmpMTextAlignment":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    .line 616
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->initForParcelable()V

    .line 617
    return-void

    .end local v0    # "tmpMTextAlignment":I
    :cond_0
    move v1, v3

    .line 600
    goto :goto_0

    :cond_1
    move v1, v3

    .line 602
    goto :goto_1

    :cond_2
    move v1, v3

    .line 603
    goto :goto_2

    :cond_3
    move v1, v3

    .line 611
    goto :goto_3

    :cond_4
    move v2, v3

    .line 612
    goto :goto_4
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private configTextPaint(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 448
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-nez v1, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 450
    .local v0, "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 451
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getAlphaByConfig()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 453
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    if-eqz v1, :cond_3

    .line 454
    const/high16 v1, 0x66000000

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 458
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 461
    :cond_1
    return-void

    .line 449
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 456
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1
.end method

.method private countDialog()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 386
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    .line 387
    .local v1, "width":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    .line 388
    .local v0, "height":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 389
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    int-to-float v1, v2

    .line 390
    div-float/2addr v0, v3

    .line 391
    div-float/2addr v1, v3

    .line 392
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 393
    return-void
.end method

.method private countDialogCorner()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 416
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 417
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 418
    .local v3, "width":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v4

    .line 419
    .local v0, "height":F
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v0, v4

    .line 420
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    int-to-float v3, v4

    .line 421
    div-float/2addr v0, v7

    .line 422
    div-float/2addr v3, v7

    .line 423
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    neg-float v6, v0

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v1, v4, v7

    .line 425
    .local v1, "offsetX":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v2, v4, v7

    .line 426
    .local v2, "offsetY":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 427
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->cornerPosition:I

    packed-switch v4, :pswitch_data_0

    .line 445
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 430
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 434
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    invoke-virtual {v4, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 438
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 442
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    neg-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private countOutLine()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 360
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 361
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 364
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 375
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 380
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v5

    .line 381
    .local v1, "widthOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v5

    .line 382
    .local v0, "heightOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 383
    return-void

    .line 368
    .end local v0    # "heightOffset":F
    .end local v1    # "widthOffset":F
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 370
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_1
.end method

.method private countTextInDialog()V
    .locals 10

    .prologue
    .line 404
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 405
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->configRect(Landroid/graphics/RectF;Z)V

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 410
    .local v6, "a":J
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMinTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxTextSize:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCountSizeSpacing:F

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countTextArea(FFFFF)V

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 412
    .local v8, "b":J
    const-string v0, "TextAppendConfig"

    const-string/jumbo v1, "\u6d4b\u91cf\u8017\u65f6\uff1a %d"

    sub-long v2, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private countTextNormal(F)V
    .locals 8
    .param p1, "maxWidth"    # F

    .prologue
    .line 396
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 398
    .local v0, "a":J
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p1, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText(FF)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 400
    .local v2, "b":J
    const-string v4, "TextAppendConfig"

    const-string/jumbo v5, "\u6587\u5b57\u8ba1\u7b97\u8017\u65f6\uff1a %d"

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method private getAlphaByConfig()I
    .locals 3

    .prologue
    .line 464
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    const/high16 v2, 0x43660000    # 230.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initForParcelable()V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/TextManager;->loadModule()V

    .line 621
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->readTypeface(Landroid/content/Context;)V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    .line 627
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countLocation(ZF)V

    .line 628
    return-void
.end method

.method private isCornerDialog()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 322
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    add-float v0, v2, v3

    .line 323
    .local v0, "x":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    add-float v1, v2, v3

    .line 324
    .local v1, "y":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    return-void
.end method


# virtual methods
.method public appendUserLocationX(F)V
    .locals 1
    .param p1, "userLocationX"    # F

    .prologue
    .line 239
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 240
    return-void
.end method

.method public appendUserLocationY(F)V
    .locals 1
    .param p1, "userLocationY"    # F

    .prologue
    .line 243
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 244
    return-void
.end method

.method public contains(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 329
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 330
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 331
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v5

    aput p2, v0, v6

    .line 332
    .local v0, "tem":[F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 333
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public countLocation(ZF)V
    .locals 1
    .param p1, "isTextChange"    # Z
    .param p2, "maxWidth"    # F

    .prologue
    .line 339
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    .line 340
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    div-float/2addr p2, v0

    .line 341
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextAppendPadding:F

    sub-float/2addr p2, v0

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->configTextPaint(Landroid/graphics/Paint;)V

    .line 343
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextNormal(F)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextNormal(F)V

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countDialogCorner()V

    .line 350
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countDialog()V

    .line 353
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextInDialog()V

    .line 354
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 471
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    return v0
.end method

.method public getDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    return-object v0
.end method

.method public getOutLineRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->offsetRect(Landroid/graphics/RectF;)V

    .line 257
    return-void
.end method

.method public getRotateDegrees()F
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 278
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 279
    .local v0, "degrees":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    add-float/2addr v0, v4

    .line 280
    :cond_0
    rem-float/2addr v0, v4

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 282
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 283
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_1
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 287
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 288
    const/4 v0, 0x0

    .line 290
    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 291
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 292
    const/high16 v0, 0x42b40000    # 90.0f

    .line 294
    :cond_3
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0xb4

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit16 v1, v1, 0xb4

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 295
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 296
    const/high16 v0, 0x43340000    # 180.0f

    .line 298
    :cond_4
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit16 v1, v1, 0x10e

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 299
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 300
    const/high16 v0, 0x43870000    # 270.0f

    .line 302
    :cond_5
    return v0
.end method

.method public getScaleMultiple()F
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object v0
.end method

.method public getTextTransparent()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    return v0
.end method

.method public getUserLocationX()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    return v0
.end method

.method public getUserLocationY()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    return v0
.end method

.method public getUserScaleMultiple()F
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    return v0
.end method

.method public isActivation()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    return v0
.end method

.method public isBoldText()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    return v0
.end method

.method public isDialogEnable()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShadow()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    return v0
.end method

.method public refreshRotateDegree()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 311
    return-void
.end method

.method public setActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 204
    return-void
.end method

.method public setBoldText(Z)V
    .locals 0
    .param p1, "boldText"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 212
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 168
    return-void
.end method

.method public setDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "dialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 152
    invoke-virtual {p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 156
    :cond_0
    return-void
.end method

.method public setDisplaySize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 474
    div-float v0, p1, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 475
    div-float v0, p2, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 476
    return-void
.end method

.method public setRotateDegrees(F)V
    .locals 0
    .param p1, "rotateDegrees"    # F

    .prologue
    .line 306
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 307
    return-void
.end method

.method public setScaleMultipleOrigin(F)V
    .locals 0
    .param p1, "scaleMultipleOrigin"    # F

    .prologue
    .line 266
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 267
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 220
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 1
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 236
    return-void
.end method

.method public setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 180
    return-void
.end method

.method public setTextTransparent(F)V
    .locals 0
    .param p1, "textTransparent"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 192
    return-void
.end method

.method public setUserLocationX(F)V
    .locals 0
    .param p1, "userLocationX"    # F

    .prologue
    .line 247
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 248
    return-void
.end method

.method public setUserLocationY(F)V
    .locals 0
    .param p1, "userLocationY"    # F

    .prologue
    .line 251
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 252
    return-void
.end method

.method public setUserScaleMultiple(F)V
    .locals 3
    .param p1, "scaleMultiple"    # F

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const v1, 0x3e99999a    # 0.3f

    .line 260
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 261
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 262
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 263
    :cond_1
    return-void
.end method

.method public toggleMirror()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 574
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 576
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 578
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 579
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 580
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 581
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 582
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 583
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 584
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 585
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 586
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 587
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 588
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 589
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 590
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 592
    return-void

    :cond_0
    move v0, v2

    .line 577
    goto :goto_0

    :cond_1
    move v0, v2

    .line 579
    goto :goto_1

    :cond_2
    move v0, v2

    .line 580
    goto :goto_2

    :cond_3
    move v0, v2

    .line 588
    goto :goto_3

    :cond_4
    move v1, v2

    .line 589
    goto :goto_4
.end method
