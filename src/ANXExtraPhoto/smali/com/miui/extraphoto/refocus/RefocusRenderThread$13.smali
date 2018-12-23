.class synthetic Lcom/miui/extraphoto/refocus/RefocusRenderThread$13;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 237
    invoke-static {}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->values()[Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$13;->$SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType:[I

    :try_start_0
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$13;->$SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType:[I

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->BASIC:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
