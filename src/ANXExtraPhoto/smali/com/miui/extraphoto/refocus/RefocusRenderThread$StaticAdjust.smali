.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticAdjust"
.end annotation


# instance fields
.field public final adjust:Z

.field public final progress:F

.field public final refocusEffectConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;


# direct methods
.method private constructor <init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZ)V
    .locals 0
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .param p2, "progress"    # F
    .param p3, "adjust"    # Z

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->refocusEffectConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 783
    iput p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->progress:F

    .line 784
    iput-boolean p3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;->adjust:Z

    .line 785
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZLcom/miui/extraphoto/refocus/RefocusRenderThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .param p2, "x1"    # F
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;

    .line 776
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$StaticAdjust;-><init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZ)V

    return-void
.end method
