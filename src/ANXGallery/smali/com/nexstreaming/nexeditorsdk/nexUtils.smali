.class public final Lcom/nexstreaming/nexeditorsdk/nexUtils;
.super Ljava/lang/Object;
.source "nexUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noise(DDD)D
    .locals 2

    .prologue
    .line 30
    invoke-static/range {p0 .. p5}, Lcom/nexstreaming/app/common/util/k;->a(DDD)D

    move-result-wide v0

    return-wide v0
.end method
