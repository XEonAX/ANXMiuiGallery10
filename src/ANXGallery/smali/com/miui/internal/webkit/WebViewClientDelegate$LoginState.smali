.class final enum Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/webkit/WebViewClientDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum pB:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum pC:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum pD:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field private static final synthetic pE:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 38
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pB:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 39
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_INPROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pC:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 40
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pD:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pB:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pC:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pD:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pE:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    .registers 2

    .line 37
    const-class v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-object p0
.end method

.method public static values()[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    .registers 1

    .line 37
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pE:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    invoke-virtual {v0}, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-object v0
.end method
