.class public Lcom/miui/gallery/collage/CollagePositionModel;
.super Ljava/lang/Object;
.source "CollagePositionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/CollagePositionModel$CustomDeserializer;
    }
.end annotation


# instance fields
.field public final margin:F

.field public final position:[F

.field public final size:I


# direct methods
.method constructor <init>(I[FF)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "position"    # [F
    .param p3, "margin"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/miui/gallery/collage/CollagePositionModel;->size:I

    .line 22
    iput-object p2, p0, Lcom/miui/gallery/collage/CollagePositionModel;->position:[F

    .line 23
    iput p3, p0, Lcom/miui/gallery/collage/CollagePositionModel;->margin:F

    .line 24
    return-void
.end method

.method constructor <init>([FF)V
    .locals 1
    .param p1, "position"    # [F
    .param p2, "margin"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lcom/miui/gallery/collage/CollagePositionModel;->margin:F

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/CollagePositionModel;->size:I

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/collage/CollagePositionModel;->position:[F

    .line 30
    return-void
.end method

.method public static getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/CollagePositionModel;I)Lcom/miui/gallery/collage/CollagePositionModel;
    .locals 6
    .param p0, "collagePositionModels"    # [Lcom/miui/gallery/collage/CollagePositionModel;
    .param p1, "imageSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .line 63
    .local v0, "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    iget v4, v0, Lcom/miui/gallery/collage/CollagePositionModel;->size:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/collage/CollagePositionModel;->size:I

    if-ne v4, p1, :cond_1

    .line 67
    .end local v0    # "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    :cond_0
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    :cond_2
    aget-object v0, p0, v2

    goto :goto_1
.end method
