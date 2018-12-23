.class public abstract Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
.source "PreloadMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;,
        Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    }
.end annotation


# instance fields
.field private mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

.field private mPreloadNum:I

.field private mPreloadViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycleViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V

    .line 31
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sPreloadNum:I

    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mRecycleViewList:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V

    .line 31
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sPreloadNum:I

    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mRecycleViewList:Ljava/util/List;

    .line 46
    return-void
.end method

.method private doPreload(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->isBackwards()Z

    move-result v3

    .line 88
    .local v3, "isBackwards":Z
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 89
    .local v6, "position":I
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 90
    if-eqz v3, :cond_2

    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    iget v9, v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    if-le v9, v6, :cond_1

    const/4 v2, 0x1

    .line 91
    .local v2, "ignore":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 135
    .end local v2    # "ignore":Z
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    iget v9, v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    if-ge v9, v6, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 98
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    .line 101
    .local v0, "aware":Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    if-eqz v3, :cond_8

    iget v9, v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    if-le v9, v6, :cond_7

    const/4 v4, 0x1

    .line 102
    .local v4, "isBreak":Z
    :goto_2
    if-eqz v4, :cond_a

    .line 110
    .end local v0    # "aware":Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .end local v4    # "isBreak":Z
    :cond_5
    if-eqz v3, :cond_b

    const/4 v9, 0x1

    :goto_3
    add-int v8, v6, v9

    .line 111
    .local v8, "preloadStart":I
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 112
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    iget-object v10, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    iget v10, v9, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    if-eqz v3, :cond_c

    const/4 v9, 0x1

    :goto_4
    add-int v8, v10, v9

    .line 114
    :cond_6
    if-eqz v3, :cond_d

    iget v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    add-int/2addr v9, v6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 117
    .local v7, "preloadEnd":I
    :goto_5
    if-eqz v3, :cond_e

    .line 118
    move v1, v8

    .local v1, "i":I
    :goto_6
    if-gt v1, v7, :cond_0

    .line 119
    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->loadImage(I)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 101
    .end local v1    # "i":I
    .end local v7    # "preloadEnd":I
    .end local v8    # "preloadStart":I
    .restart local v0    # "aware":Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    iget v9, v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    if-ge v9, v6, :cond_9

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 105
    .restart local v4    # "isBreak":Z
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 106
    iget-object v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mRecycleViewList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v0    # "aware":Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .end local v4    # "isBreak":Z
    :cond_b
    const/4 v9, -0x1

    goto :goto_3

    .line 112
    .restart local v8    # "preloadStart":I
    :cond_c
    const/4 v9, -0x1

    goto :goto_4

    .line 114
    :cond_d
    iget v9, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    sub-int v9, v6, v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_5

    .line 125
    .restart local v7    # "preloadEnd":I
    :cond_e
    move v1, v8

    .restart local v1    # "i":I
    :goto_7
    if-lt v1, v7, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->loadImage(I)V

    .line 125
    add-int/lit8 v1, v1, -0x1

    goto :goto_7
.end method

.method private getViewAware()Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mRecycleViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mRecycleViewList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    goto :goto_0
.end method

.method private isBackwards()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImage(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getViewAware()Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    move-result-object v0

    .line 139
    .local v0, "aware":Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "path":Ljava/lang/String;
    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "imageUri":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->setPosition(I)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->setImageUri(Ljava/lang/String;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    move-result-object v3

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getDisplayImageSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    move-result-object v3

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getDisplayScaleType(I)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->setScaleType(Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;

    .line 145
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 146
    iget-object v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private needPreload(I)Z
    .locals 4
    .param p1, "curBindPos"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 71
    :cond_1
    :goto_0
    return v1

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->getScrollState()I

    move-result v0

    .line 65
    .local v0, "scrollState":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 71
    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->getFirstPosition()I

    move-result v3

    if-le p1, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->getLastPosition()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private preload(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->needPreload(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->doPreload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected final doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->preload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 56
    return-void
.end method

.method public final generatePreloadListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p1, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadListener:Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;

    return-object v0
.end method

.method public setPreloadNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->mPreloadNum:I

    .line 50
    return-void
.end method
