.class Lcom/miui/gallery/util/BindImageHelper$2$1;
.super Ljava/lang/Object;
.source "BindImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/BindImageHelper$2;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/BindImageHelper$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/BindImageHelper$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/BindImageHelper$2;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->this$0:Lcom/miui/gallery/util/BindImageHelper$2;

    iput-object p2, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2$1;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/util/BindImageHelper;->access$000(Landroid/widget/ImageView;)V

    .line 137
    :cond_0
    return-void
.end method
