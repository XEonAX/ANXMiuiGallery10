.class Lcom/miui/extraphoto/refocus/RefocusPopupWindow$1;
.super Ljava/lang/Object;
.source "RefocusPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    .line 26
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 40
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 34
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->dismiss()V

    .line 35
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 45
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 30
    return-void
.end method
