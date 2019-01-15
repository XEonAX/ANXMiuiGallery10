.class public Lcom/miui/internal/variable/v23/Android_View_Window_class;
.super Lcom/miui/internal/variable/v19/Android_View_Window_class;
.source "SourceFile"


# static fields
.field private static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field private static final lY:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/miui/internal/variable/v19/Android_View_Window_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setTranslucentStatus(Landroid/view/Window;I)Z
    .registers 5

    .line 20
    const/high16 v0, -0x80000000

    if-nez p2, :cond_8

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_21

    .line 23
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    if-ne p2, v1, :cond_18

    .line 27
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_21

    .line 29
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 34
    :goto_21
    invoke-super {p0, p1, p2}, Lcom/miui/internal/variable/v19/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result p1

    return p1
.end method
