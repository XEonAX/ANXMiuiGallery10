.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
.super Ljava/lang/Object;
.source "TextFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextStatusData"
.end annotation


# instance fields
.field public color:I

.field public itemDegree:F

.field public itemPositionX:F

.field public itemPositionY:F

.field public itemScale:F

.field public textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

.field public textBold:Z

.field public textShadow:Z

.field public textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field public transparentProgress:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method configSelfByInit(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V
    .locals 5
    .param p1, "baseDialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 293
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    if-eqz v0, :cond_0

    .line 295
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 296
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 297
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 308
    :goto_0
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 310
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 311
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemScale:F

    .line 312
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemDegree:F

    .line 313
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionX:F

    .line 314
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionY:F

    .line 315
    return-void

    .line 299
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 300
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->CENTER:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 301
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    goto :goto_0

    .line 304
    :cond_1
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 305
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 306
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    goto :goto_0
.end method

.method setEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 319
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 320
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 322
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 323
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 324
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemScale:F

    .line 325
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemDegree:F

    .line 326
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionX:F

    .line 327
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionY:F

    .line 328
    return-void
.end method
