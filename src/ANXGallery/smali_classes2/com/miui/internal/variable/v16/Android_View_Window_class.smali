.class public Lcom/miui/internal/variable/v16/Android_View_Window_class;
.super Lcom/miui/internal/variable/Android_View_Window_class;
.source "SourceFile"


# static fields
.field private static final lL:I = 0x1

.field private static final lM:I = 0x10

.field private static final lN:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_Window_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setTranslucentStatus(Landroid/view/Window;I)Z
    .registers 9

    .line 24
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 25
    return v1

    .line 28
    :cond_6
    nop

    .line 29
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-nez p2, :cond_2e

    .line 31
    :try_start_e
    sget-object p2, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p2, v2, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    .line 35
    goto :goto_49

    .line 32
    :catch_22
    move-exception p1

    .line 33
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "clearExtraFlags failed"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    nop

    .line 35
    goto :goto_56

    .line 37
    :cond_2e
    if-ne p2, v4, :cond_33

    .line 38
    nop

    .line 40
    move p2, v3

    goto :goto_35

    .line 38
    :cond_33
    nop

    .line 40
    move p2, v4

    :goto_35
    :try_start_35
    sget-object v5, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {v5, v2, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_48} :catch_4b

    .line 44
    nop

    .line 47
    :goto_49
    move v1, v4

    goto :goto_56

    .line 41
    :catch_4b
    move-exception p1

    .line 42
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "addExtraFlags failed"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    nop

    .line 47
    :goto_56
    return v1
.end method
