.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source "SourceFile"


# static fields
.field private static final lo:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    invoke-static {}, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->aG()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->lo:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method

.method private static aG()Lmiui/reflect/Method;
    .registers 3

    .line 23
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "getResolvedLayoutDirectionSelf"

    const-string v2, "()I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 24
    :catch_b
    move-exception v0

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    .line 31
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->lo:Lmiui/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 33
    :try_start_5
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->lo:Lmiui/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_e} :catch_f

    return p1

    .line 34
    :catch_f
    move-exception p1

    .line 35
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v2, "android.graphics.drawable.Drawable.getResolvedLayoutDirectionSelf"

    invoke-virtual {v0, v2, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_19
    return v1
.end method
