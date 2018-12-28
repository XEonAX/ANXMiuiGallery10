.class public Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;
.super Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
.source "SearchFeedbackLikelyResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;
    }
.end annotation


# instance fields
.field private mCheckedIds:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mReportButton:Landroid/widget/TextView;

.field private mSelectAllBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    return-void
.end method

.method private getCheckedItemCount()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method private getCheckedPositions()Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 238
    .local v0, "checkedPositions":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 239
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-object v0
.end method

.method private initTopBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 57
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04010c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "customView":Landroid/view/View;
    const v5, 0x7f1200ca

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    .local v4, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0e040f

    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mQueryText:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v5, 0x7f1200c9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "back":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v5, 0x7f120248

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    .line 66
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 70
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v2, v8, v8, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 73
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 74
    return-void
.end method

.method private isChecked(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCheckedAll()Z
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedItemCount()I

    move-result v0

    .line 225
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private report()V
    .locals 5

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedServerIdList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, "checkedServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$2;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V

    .line 219
    .local v1, "completeListener":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mQueryText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mInFeedbackTaskMode:Z

    invoke-static {v2, v3, v4, v0, v1}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportFalseNegativeImages(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V

    goto :goto_0
.end method

.method private toggleSelectAll()V
    .locals 5

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isCheckedAll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->notifyDataSetChanged()V

    .line 199
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    .line 200
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateReportButtonState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isCheckedAll()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0136

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 251
    return-void

    :cond_0
    move v0, v2

    .line 247
    goto :goto_0

    :cond_1
    move v1, v2

    .line 248
    goto :goto_1

    .line 249
    :cond_2
    const v0, 0x7f0e0138

    goto :goto_2
.end method


# virtual methods
.method protected changeFilterData(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 260
    return-void
.end method

.method protected changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 172
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    .line 173
    return-void
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "from_likely_image_result"

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f040119

    return v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 163
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 166
    .end local v0    # "loader":Landroid/content/Loader;
    :goto_0
    return-object v0

    .restart local v0    # "loader":Landroid/content/Loader;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "search_likely_image_result"

    return-object v0
.end method

.method protected getResultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 151
    .local v0, "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setSearchType(Lcom/miui/gallery/search/SearchConstants$SearchType;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 152
    return-object v0
.end method

.method protected initResultQueryInfoBuilder(Landroid/net/Uri;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->initResultQueryInfoBuilder(Landroid/net/Uri;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 125
    .local v0, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setSearchType(Lcom/miui/gallery/search/SearchConstants$SearchType;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 126
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 112
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->finish()V

    goto :goto_0

    .line 106
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->report()V

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->toggleSelectAll()V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1200c9 -> :sswitch_0
        0x7f120248 -> :sswitch_2
        0x7f120258 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "intentUri"    # Landroid/net/Uri;

    .prologue
    .line 78
    const v0, 0x7f120081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->bind(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    const v0, 0x7f1201d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mContentView:Landroid/view/View;

    .line 92
    const v0, 0x7f120258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->initTopBar()V

    .line 96
    return-void
.end method

.method public onLoadMoreRequested()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->closeLoadMore()V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->onLoadMoreRequested()V

    goto :goto_0
.end method

.method protected restartFilterLoader(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 256
    return-void
.end method

.method protected restartSectionDataLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSectionDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 146
    :cond_0
    return-void
.end method

.method protected restartSectionLoader(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v8, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    iget-object v9, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v10, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    const/4 v11, 0x0

    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 134
    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/SearchConstants$SectionType;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;ZLcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    iput-object v8, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 136
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->openLoadMore()V

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->onLoadMoreRequested()V

    .line 139
    return-void
.end method

.method protected updateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method
