.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3322
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3325
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3326
    .local v0, "currentItem":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 3327
    .local v1, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-nez v1, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3330
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3333
    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3334
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3335
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3337
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/IntentUtil;->startAdvancedRefocusAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3338
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6000(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendEnterStatic()V

    goto :goto_0
.end method
