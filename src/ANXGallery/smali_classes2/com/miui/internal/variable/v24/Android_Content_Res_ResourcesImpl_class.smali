.class public Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;
.source "SourceFile"


# static fields
.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field private static final me:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 28
    const-class v0, Landroid/content/res/ResourcesImpl;

    const-string v1, "getAssets"

    const-string v2, "()Landroid/content/res/AssetManager;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->me:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    .line 32
    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 34
    return-void
.end method

.method public getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;
    .registers 5

    .line 57
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->me:Lmiui/reflect/Method;

    const-class v1, Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 58
    :catch_e
    move-exception p1

    .line 59
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.res.ResourcesImpl.getAssets"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handle()V
    .registers 10

    .line 38
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 42
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 43
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 44
    sget-object p2, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {p2, p1, p6}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    .line 46
    :cond_11
    return-object p1
.end method

.method protected originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v24.Android_Content_Res_ResourcesImpl_class.originalLoadDrawable(long, ResourcesImpl, Resources, TypedValue, int, Resources.Theme, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
