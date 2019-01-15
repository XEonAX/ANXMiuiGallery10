.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.source "SourceFile"


# static fields
.field private static final le:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final lk:Lmiui/reflect/Method;

.field private static final ll:Lmiui/reflect/Method;

.field private static final lm:Lmiui/reflect/Method;

.field private static final ln:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    nop

    .line 24
    :try_start_1
    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    .line 27
    goto :goto_13

    .line 25
    :catch_8
    move-exception v0

    .line 26
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 v0, 0x0

    :goto_13
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->le:Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->le:Ljava/lang/Class;

    const-string v1, "setFramesCount"

    const-string v2, "(I)V"

    .line 32
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lk:Lmiui/reflect/Method;

    .line 34
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->le:Ljava/lang/Class;

    const-string v1, "setFramesDuration"

    const-string v2, "(I)V"

    .line 35
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->ll:Lmiui/reflect/Method;

    .line 37
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->le:Ljava/lang/Class;

    const-string v1, "start"

    const-string v2, "()V"

    .line 38
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lm:Lmiui/reflect/Method;

    .line 40
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->le:Ljava/lang/Class;

    const-string v1, "stop"

    const-string v2, "()V"

    .line 41
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->ln:Lmiui/reflect/Method;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .line 81
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method

.method public setFramesCount(Landroid/graphics/drawable/Drawable;I)V
    .registers 7

    .line 46
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lk:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    .line 49
    goto :goto_1b

    .line 47
    :catch_11
    move-exception p1

    .line 48
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.setFramesCount"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_1b
    return-void
.end method

.method public setFramesDuration(Landroid/graphics/drawable/Drawable;I)V
    .registers 7

    .line 55
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->ll:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    .line 58
    goto :goto_1b

    .line 56
    :catch_11
    move-exception p1

    .line 57
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.setFramesDuration"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :goto_1b
    return-void
.end method

.method public start(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 64
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lm:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 67
    goto :goto_14

    .line 65
    :catch_a
    move-exception p1

    .line 66
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable.start"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_14
    return-void
.end method

.method public stop(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 73
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->ln:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 76
    goto :goto_14

    .line 74
    :catch_a
    move-exception p1

    .line 75
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable.stop"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_14
    return-void
.end method
