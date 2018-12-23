.class Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardHolder"
.end annotation


# instance fields
.field private final mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

.field private mCard:Lcom/miui/gallery/card/Card;

.field private final mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

.field private final mDescription:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    .line 189
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 177
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;-><init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

    .line 190
    const v0, 0x7f1200ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/CardCoverView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    .line 191
    const v0, 0x7f120076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mTitle:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f1200ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mDescription:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/CardCoverView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)Lcom/miui/gallery/card/Card;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->deliveryAction(Ljava/lang/String;)V

    return-void
.end method

.method private deliveryAction(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const-string v2, "CardAdapter"

    const-string v3, "deliveryAction empty"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "card"

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->access$200(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 242
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->recordCardClick()V

    goto :goto_0
.end method

.method private recordCardClick()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scenarioId"

    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "assistant"

    const-string v2, "assistant_card_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/gallery/card/Card;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    const/4 v5, 0x0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->access$200(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/gallery/card/Card;->getImageResId(Landroid/content/Context;)I

    move-result v1

    .line 200
    .local v1, "imageResId":I
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 201
    .local v2, "imageUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 202
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    iget-object v6, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v6, v6, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v1, v6}, Lcom/miui/gallery/widget/CardCoverView;->update(ILcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 215
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mDescription:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    .end local v1    # "imageResId":I
    .end local v2    # "imageUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 203
    .restart local v1    # "imageResId":I
    .restart local v2    # "imageUri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 204
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v3

    .line 207
    .local v3, "selectedImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    invoke-virtual {v6, v4}, Lcom/miui/gallery/widget/CardCoverView;->setImageCount(I)V

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    iget-object v6, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v6, v6, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v0, v6}, Lcom/miui/gallery/widget/CardCoverView;->update(Ljava/util/List;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 207
    goto :goto_2

    .line 211
    .end local v0    # "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v3    # "selectedImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz v2, :cond_0

    .line 212
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mCardCoverView:Lcom/miui/gallery/widget/CardCoverView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v7, v7, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/widget/CardCoverView;->update(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 220
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
