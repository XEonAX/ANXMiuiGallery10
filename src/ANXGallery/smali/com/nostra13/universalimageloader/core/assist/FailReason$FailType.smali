.class public final enum Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
.super Ljava/lang/Enum;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/FailReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum INVALID_LOADING_URI:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 54
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 59
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "NETWORK_DENIED"

    invoke-direct {v0, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 61
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 63
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "INVALID_LOADING_URI"

    invoke-direct {v0, v1, v7}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->INVALID_LOADING_URI:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 65
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->INVALID_LOADING_URI:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0
.end method
