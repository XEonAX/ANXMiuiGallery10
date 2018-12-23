.class public final enum Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
.super Ljava/lang/Enum;
.source "RefocusEffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum BASIC:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum CIRCLE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum MOTION:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum MOTION_RING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum NONE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum RANDOM:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

.field public static final enum STAR:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->NONE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 5
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->BASIC:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 6
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "CIRCLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->CIRCLE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 7
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "STAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->STAR:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 8
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "MOTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->MOTION:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 9
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "MOTION_RING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->MOTION_RING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 10
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "RANDOM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RANDOM:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 11
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const-string v1, "RELIGHTING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->NONE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->BASIC:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->CIRCLE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->STAR:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->MOTION:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->MOTION_RING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RANDOM:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->RELIGHTING:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->$VALUES:[Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    return-object v0
.end method

.method public static values()[Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->$VALUES:[Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    invoke-virtual {v0}, [Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    return-object v0
.end method
