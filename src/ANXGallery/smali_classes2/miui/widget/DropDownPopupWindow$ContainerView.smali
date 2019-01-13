.class Lmiui/widget/DropDownPopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic Rl:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 89
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Rl:Lmiui/widget/DropDownPopupWindow;

    .line 90
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    .line 109
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 110
    return p2

    .line 113
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_12

    .line 97
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Rl:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 100
    :cond_12
    return v1
.end method
