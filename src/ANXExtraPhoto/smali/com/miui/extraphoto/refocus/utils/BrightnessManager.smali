.class public Lcom/miui/extraphoto/refocus/utils/BrightnessManager;
.super Ljava/lang/Object;
.source "BrightnessManager.java"


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final TAG:Ljava/lang/String; = "BrightnessManager"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCurBrightness:F

.field private mPaused:Z

.field private mSystemBrightnessChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;F)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "brightness"    # F

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mCurBrightness:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mSystemBrightnessChanged:Z

    .line 34
    new-instance v0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;-><init>(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 30
    invoke-direct {p0, p2}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->ensureBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mCurBrightness:F

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    .line 14
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/utils/BrightnessManager;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mSystemBrightnessChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/utils/BrightnessManager;
    .param p1, "x1"    # Z

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->adjustBrightness(Z)V

    return-void
.end method

.method private adjustBrightness(Z)V
    .locals 3
    .param p1, "useDefaultValue"    # Z

    .line 55
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 58
    .local v1, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mCurBrightness:F

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    .end local v1    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method private ensureBrightness(F)F
    .locals 2
    .param p1, "brightness"    # F

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private registerObserver()V
    .locals 5

    .line 81
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    sget-object v2, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "cr":Landroid/content/ContentResolver;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register BrightnessObserver error: %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 5

    .line 94
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister BrightnessObserver error: %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mPaused:Z

    .line 77
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->unregisterObserver()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mPaused:Z

    .line 71
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mSystemBrightnessChanged:Z

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->adjustBrightness(Z)V

    .line 72
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->registerObserver()V

    .line 73
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 65
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mSystemBrightnessChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 66
    .local v0, "useDefaultBrightness":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->adjustBrightness(Z)V

    .line 67
    return-void
.end method
