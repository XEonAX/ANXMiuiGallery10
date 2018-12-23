.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;


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
    .line 3289
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSave(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3312
    const-string v1, "PhotoPageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefocusPhotoSave : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 3314
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_0

    .line 3315
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    .line 3317
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo_focused_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 3319
    return-void
.end method

.method public onRecognized(ZLjava/lang/String;)V
    .locals 4
    .param p1, "canRefocus"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 3292
    if-eqz p1, :cond_2

    .line 3293
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3294
    .local v0, "currentItem":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 3295
    .local v1, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p2, :cond_1

    .line 3296
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3297
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5700(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5900(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Landroid/view/View;)V

    .line 3299
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3300
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6000(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendExposureStatic()V

    .line 3308
    .end local v0    # "currentItem":I
    .end local v1    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    :goto_0
    return-void

    .line 3303
    .restart local v0    # "currentItem":I
    .restart local v1    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6100(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Landroid/view/View;)V

    goto :goto_0

    .line 3306
    .end local v0    # "currentItem":I
    .end local v1    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6100(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Landroid/view/View;)V

    goto :goto_0
.end method
