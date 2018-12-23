.class public Lcom/miui/gallery/Config$ScreenConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenConfig"
.end annotation


# static fields
.field private static sHeightPixels:I

.field private static sRealHeightPixels:I

.field private static sRealWidthPixels:I

.field private static sWidthPixels:I


# direct methods
.method public static getRealScreenHeight()I
    .locals 1

    .prologue
    .line 198
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sRealHeightPixels:I

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->init()V

    .line 201
    :cond_0
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sRealHeightPixels:I

    return v0
.end method

.method public static getRealScreenWidth()I
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sRealWidthPixels:I

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->init()V

    .line 194
    :cond_0
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sRealWidthPixels:I

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sHeightPixels:I

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->init()V

    .line 187
    :cond_0
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sHeightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sWidthPixels:I

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->init()V

    .line 180
    :cond_0
    sget v0, Lcom/miui/gallery/Config$ScreenConfig;->sWidthPixels:I

    return v0
.end method

.method private static init()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 165
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/gallery/Config$ScreenConfig;->sWidthPixels:I

    .line 169
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/gallery/Config$ScreenConfig;->sHeightPixels:I

    .line 171
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/gallery/Config$ScreenConfig;->sRealWidthPixels:I

    .line 173
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/gallery/Config$ScreenConfig;->sRealHeightPixels:I

    .line 174
    return-void
.end method
