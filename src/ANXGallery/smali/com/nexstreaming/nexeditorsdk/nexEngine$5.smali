.class final Lcom/nexstreaming/nexeditorsdk/nexEngine$5;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)I
    .locals 2

    .prologue
    .line 4009
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getZOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getZOrder()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4010
    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 4012
    :goto_0
    return v0

    .line 4011
    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4012
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 4006
    check-cast p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    check-cast p2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$5;->a(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)I

    move-result v0

    return v0
.end method
