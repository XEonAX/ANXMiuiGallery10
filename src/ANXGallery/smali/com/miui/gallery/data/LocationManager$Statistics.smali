.class Lcom/miui/gallery/data/LocationManager$Statistics;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Statistics"
.end annotation


# instance fields
.field public addressNull:I

.field public cacheDistance:I

.field public cacheHit:I

.field public cost:I

.field public count:I

.field public error:I

.field public latLngInvalid:I

.field public saveFail:I

.field private startTime:J

.field final synthetic this$0:Lcom/miui/gallery/data/LocationManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/LocationManager;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1189
    iput-object p1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->this$0:Lcom/miui/gallery/data/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    .line 1191
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    .line 1192
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cost:I

    .line 1193
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I

    .line 1195
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->latLngInvalid:I

    .line 1196
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->addressNull:I

    .line 1197
    iput v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->saveFail:I

    .line 1198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/LocationManager;
    .param p2, "x1"    # Lcom/miui/gallery/data/LocationManager$1;

    .prologue
    .line 1189
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationManager$Statistics;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    return-void
.end method


# virtual methods
.method public getAverageCost()I
    .locals 3

    .prologue
    .line 1201
    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->error:I

    sub-int v0, v1, v2

    .line 1202
    .local v0, "count":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cost:I

    if-lez v1, :cond_0

    .line 1203
    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cost:I

    div-int/2addr v1, v0

    .line 1205
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvgCacheDistance()I
    .locals 2

    .prologue
    .line 1227
    iget v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheDistance:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    if-lez v0, :cond_0

    .line 1228
    iget v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheDistance:I

    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    div-int/2addr v0, v1

    .line 1230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheHitPercent()I
    .locals 2

    .prologue
    .line 1209
    iget v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    if-gt v0, v1, :cond_0

    .line 1210
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->cacheHit:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalTime()I
    .locals 4

    .prologue
    .line 1220
    iget-wide v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocationManager$Statistics;->startTime:J

    .line 1217
    return-void
.end method
