.class Lcom/miui/extraphoto/refocus/RelightingPopupWindow$1;
.super Ljava/lang/Object;
.source "RelightingPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->showAtLocationDelay(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RelightingPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    .line 38
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow$1;->this$0:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow$1;->this$0:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->dismiss()V

    .line 42
    return-void
.end method
