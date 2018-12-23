.class Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoRefreshReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 3005
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3005
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3009
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3010
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3011
    const-string v6, "extra_file_path"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3012
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    if-nez v6, :cond_1

    .line 3029
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3015
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v1

    .line 3016
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 3017
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v6, v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v5

    .line 3018
    .local v5, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-nez v5, :cond_3

    .line 3016
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3022
    :cond_3
    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getDataItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 3023
    .local v2, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3024
    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageItem;->refreshItem()V

    goto :goto_0
.end method
