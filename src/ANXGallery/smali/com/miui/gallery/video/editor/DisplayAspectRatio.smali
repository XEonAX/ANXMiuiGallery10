.class public final enum Lcom/miui/gallery/video/editor/DisplayAspectRatio;
.super Ljava/lang/Enum;
.source "DisplayAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/video/editor/DisplayAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A18V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A1V1:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A3V4:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A4V3:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A9V16:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field public static final enum A9V18:Lcom/miui/gallery/video/editor/DisplayAspectRatio;


# instance fields
.field private ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A16V9"

    const v2, 0x3fe38e39

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A9V16"

    const/high16 v2, 0x3f100000    # 0.5625f

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A9V16:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 6
    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A18V9"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A18V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A9V18"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A9V18:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 7
    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A4V3"

    const v2, 0x3faaaaab

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A4V3:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A3V4"

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A3V4:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 8
    new-instance v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    const-string v1, "A1V1"

    const/4 v2, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A1V1:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    sget-object v1, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A9V16:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A18V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A9V18:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A4V3:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A3V4:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A1V1:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->$VALUES:[Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->ratio:F

    .line 13
    return-void
.end method

.method public static getVideoAspectRatio(III)Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 20
    rem-int/lit16 v5, p2, 0xb4

    if-nez v5, :cond_1

    int-to-float v5, p0

    int-to-float v6, p1

    div-float v4, v5, v6

    .line 21
    .local v4, "sourceRate":F
    :goto_0
    const/high16 v2, 0x42fe0000    # 127.0f

    .line 22
    .local v2, "min":F
    sget-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A18V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 23
    .local v0, "displayAspectRatio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    invoke-static {}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->values()[Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 24
    .local v3, "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->getRatio()F

    move-result v8

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 25
    .local v1, "distance":F
    cmpg-float v8, v1, v2

    if-gez v8, :cond_0

    .line 26
    move v2, v1

    .line 27
    move-object v0, v3

    .line 23
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    .end local v0    # "displayAspectRatio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .end local v1    # "distance":F
    .end local v2    # "min":F
    .end local v3    # "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .end local v4    # "sourceRate":F
    :cond_1
    int-to-float v5, p1

    int-to-float v6, p0

    div-float v4, v5, v6

    goto :goto_0

    .line 30
    .restart local v0    # "displayAspectRatio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .restart local v2    # "min":F
    .restart local v4    # "sourceRate":F
    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->$VALUES:[Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    invoke-virtual {v0}, [Lcom/miui/gallery/video/editor/DisplayAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    return-object v0
.end method


# virtual methods
.method public getRatio()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->ratio:F

    return v0
.end method
