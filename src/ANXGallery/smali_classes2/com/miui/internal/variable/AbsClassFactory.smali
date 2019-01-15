.class public abstract Lcom/miui/internal/variable/AbsClassFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CURRENT_SUPPORT_SDK_VERSION:I

.field protected static final MIN_SUPPORT_SDK_VERSION:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/miui/internal/variable/AbsClassFactory;->CURRENT_SUPPORT_SDK_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 21
    sget v0, Lcom/miui/internal/variable/AbsClassFactory;->CURRENT_SUPPORT_SDK_VERSION:I

    :goto_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "com.miui.internal.variable.v%d.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 24
    :try_start_1b
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_23} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    return-object v2

    .line 28
    :catch_24
    move-exception v2

    .line 29
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 26
    :catch_2d
    move-exception v1

    .line 30
    nop

    .line 21
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 32
    :cond_32
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot found class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract get()Ljava/lang/Object;
.end method
