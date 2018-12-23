.class public Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;
.super Ljava/lang/Object;
.source "FrameEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mRatio:F

.field private mScaleProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 2
    .param p1, "ratio"    # F
    .param p2, "scaleProgress"    # F

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    .line 144
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    .line 145
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    .line 185
    return-void
.end method


# virtual methods
.method protected apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 149
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 153
    .local v0, "bitmapRatio":F
    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    cmpl-float v5, v5, v0

    if-ltz v5, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 155
    .local v2, "height":I
    int-to-float v5, v2

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 160
    .local v4, "width":I
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "target":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v2

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 163
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 165
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 167
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 168
    return-object v3

    .line 157
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "target":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 158
    .restart local v4    # "width":I
    int-to-float v5, v4

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "height":I
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 179
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    return-void
.end method
