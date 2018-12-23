.class Lcom/miui/gallery/ui/PhotoDetailFragment$1;
.super Ljava/lang/Object;
.source "PhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 125
    check-cast v1, [F

    .end local v1    # "obj":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [F

    .line 126
    .local v0, "coordidate":[F
    aget v3, v0, v5

    aget v4, v0, v6

    invoke-static {v3, v4}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordidate(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    aget v4, v0, v5

    float-to-double v4, v4

    aget v6, v0, v6

    float-to-double v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/gallery/util/IntentUtil;->showOnMap(Landroid/content/Context;DD)Z

    move-result v2

    .line 128
    .local v2, "ret":Z
    if-nez v2, :cond_2

    .line 129
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x7f0e02da

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 132
    .end local v2    # "ret":Z
    :cond_2
    const-string v3, "photo_detail"

    const-string/jumbo v4, "show_on_map"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f120208
        :pswitch_0
    .end packed-switch
.end method
