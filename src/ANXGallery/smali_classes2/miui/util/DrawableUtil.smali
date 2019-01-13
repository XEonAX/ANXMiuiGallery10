.class public Lmiui/util/DrawableUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static isPlaceholder(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 27
    instance-of v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    if-nez v0, :cond_13

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_11

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 27
    :goto_14
    return p0
.end method
