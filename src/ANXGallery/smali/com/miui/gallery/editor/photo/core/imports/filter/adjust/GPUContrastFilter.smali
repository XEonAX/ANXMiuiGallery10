.class public Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;
.super Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPURGBLutFilter;
.source "GPUContrastFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPURGBLutFilter;-><init>(I)V

    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mDegree:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 18
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mDegree:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mPercent:F

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mDegree:I

    rsub-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mPercent:F

    goto :goto_0
.end method


# virtual methods
.method protected getLUTPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;->mDegree:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const-string v0, "filter/adjust/adjust_high_contrast.png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "filter/adjust/adjust_low_contrast.png"

    goto :goto_0
.end method
