.class public Lcom/miui/internal/util/ContextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 22
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/app/Activity;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method
