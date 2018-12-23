.class public Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;
.super Ljava/lang/Object;
.source "CollageAssistantRenderModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;
    }
.end annotation


# instance fields
.field public final collageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

.field public final index:Ljava/lang/String;

.field public final textExtras:[Ljava/lang/String;

.field public final type:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;


# direct methods
.method public static configPosterModel(Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;)V
    .locals 5
    .param p0, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p1, "collageAssistantRenderModel"    # Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;

    .prologue
    .line 26
    iget-object v2, p1, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->textExtras:[Ljava/lang/String;

    .line 27
    .local v2, "textExtras":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    iget-object v4, p0, Lcom/miui/gallery/collage/PosterModel;->textElementModels:[Lcom/miui/gallery/collage/TextElementModel;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/miui/gallery/collage/PosterModel;->textElementModels:[Lcom/miui/gallery/collage/TextElementModel;

    aget-object v1, v3, v0

    .line 30
    .local v1, "textElementModel":Lcom/miui/gallery/collage/TextElementModel;
    aget-object v3, v2, v0

    iput-object v3, v1, Lcom/miui/gallery/collage/TextElementModel;->currentText:Ljava/lang/String;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    .end local v1    # "textElementModel":Lcom/miui/gallery/collage/TextElementModel;
    :cond_0
    return-void
.end method
