.class public final enum Lcom/xiaomi/mistatistic/sdk/controller/t$a;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/mistatistic/sdk/controller/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

.field public static final enum b:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

.field public static final enum c:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

.field private static final synthetic d:[Lcom/xiaomi/mistatistic/sdk/controller/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    const-string v1, "TYPE_KEY"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    .line 501
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    const-string v1, "TYPE_CATEGORY"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/mistatistic/sdk/controller/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->b:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    .line 502
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    const-string v1, "TYPE_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/mistatistic/sdk/controller/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->c:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    .line 499
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->b:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->c:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->d:[Lcom/xiaomi/mistatistic/sdk/controller/t$a;

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
    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
