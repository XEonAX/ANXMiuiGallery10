.class public final enum Lcom/xiaomi/xmpush/thrift/BootModeType;
.super Ljava/lang/Enum;
.source "BootModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/BootModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/xmpush/thrift/BootModeType;

.field public static final enum BIND:Lcom/xiaomi/xmpush/thrift/BootModeType;

.field public static final enum START:Lcom/xiaomi/xmpush/thrift/BootModeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/BootModeType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/BootModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/BootModeType;->START:Lcom/xiaomi/xmpush/thrift/BootModeType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/BootModeType;

    const-string v1, "BIND"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/BootModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/BootModeType;->BIND:Lcom/xiaomi/xmpush/thrift/BootModeType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/BootModeType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/BootModeType;->START:Lcom/xiaomi/xmpush/thrift/BootModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/BootModeType;->BIND:Lcom/xiaomi/xmpush/thrift/BootModeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/BootModeType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/BootModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/BootModeType;->value:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/BootModeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/BootModeType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/BootModeType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/xmpush/thrift/BootModeType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/BootModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/BootModeType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/BootModeType;->value:I

    return v0
.end method
