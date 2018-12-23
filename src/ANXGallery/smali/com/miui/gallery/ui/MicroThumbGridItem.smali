.class public abstract Lcom/miui/gallery/ui/MicroThumbGridItem;
.super Landroid/widget/RelativeLayout;
.source "MicroThumbGridItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$BackgroundImageViewable;
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$ShowNumberWhenPicking;


# instance fields
.field private mBottomIndicatorContainer:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/view/View;

.field private mFavoriteIndicator:Landroid/widget/ImageView;

.field protected mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field protected mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field protected mImageView:Landroid/widget/ImageView;

.field private mIsSimilarBestImage:Z

.field private mItemId:J

.field private mItemStub:Landroid/view/ViewStub;

.field private mMask:Landroid/widget/ImageView;

.field private mPickingNumberIndicator:Landroid/widget/TextView;

.field private mSimilarBestMark:Landroid/widget/ImageView;

.field private mSyncIndicator:Landroid/widget/ImageView;

.field private mSyncState:I

.field private mTopIndicatorContainer:Landroid/view/View;

.field private mTypeIndicator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    .line 64
    return-void
.end method

.method private checkStubInflate()V
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "viewStub":Landroid/view/View;
    const v1, 0x7f120198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mMask:Landroid/widget/ImageView;

    .line 457
    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 458
    const v1, 0x7f12019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    .line 459
    const v1, 0x7f12019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    .line 460
    const v1, 0x7f12019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    .line 461
    const v1, 0x7f12019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    .line 462
    const v1, 0x7f1200d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    .line 463
    const v1, 0x7f12019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    .line 464
    const v1, 0x7f120199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mPickingNumberIndicator:Landroid/widget/TextView;

    .line 465
    const v1, 0x7f12019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    goto :goto_0
.end method

.method private static displaySyncableState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 231
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displaySyncedState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 223
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displaySyncingState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 227
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displayUnSyncableState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 235
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCheckMode()Z
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v0, 0x8

    .line 209
    .local v0, "visibility":I
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 208
    .end local v0    # "visibility":I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 209
    .restart local v0    # "visibility":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private needRefreshSyncIndicator(JII)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "displayLogic"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    iget-wide v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 258
    const v2, 0x7fffffff

    iput v2, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    iget v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    if-ne v3, p3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    const/16 v0, 0x8

    .line 267
    .local v0, "visibility":I
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needShowSyncIndicator(II)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 266
    .end local v0    # "visibility":I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    goto :goto_1

    .line 267
    .restart local v0    # "visibility":I
    :cond_3
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private needShowSyncIndicator(II)Z
    .locals 1
    .param p1, "syncState"    # I
    .param p2, "displayLogic"    # I

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 242
    :pswitch_0
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncedState(I)Z

    move-result v0

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v0

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncableState(I)Z

    move-result v0

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displayUnSyncableState(I)Z

    move-result v0

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private needShowSyncIndicator(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)Z
    .locals 2
    .param p1, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .prologue
    const/4 v0, 0x1

    .line 213
    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;->SCENE_ALWAYS:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    if-ne p1, v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isInCheckMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSyncIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 351
    if-nez p1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateTopIndicatorBg()V

    .line 358
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTypeIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 398
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateBottomIndicatorBg()V

    .line 403
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSyncIndicator(IILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "resId"    # I
    .param p3, "animation"    # Landroid/view/animation/Animation;
    .param p4, "bgAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 372
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSyncIndicatorVisibility(I)V

    .line 376
    if-eqz p3, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    :cond_2
    :goto_0
    if-eqz p4, :cond_5

    .line 386
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    :cond_3
    :goto_1
    return-void

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1
.end method


# virtual methods
.method public bindFavoriteIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isInCheckMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateFavoriteIndicatorVisibility(I)V

    .line 205
    return-void

    .line 204
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 176
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 177
    return-void
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 172
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 173
    return-void
.end method

.method public bindIndicator(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "specialTypeFlags"    # J

    .prologue
    .line 180
    const/16 v2, 0x8

    .line 181
    .local v2, "visibility":I
    const/4 v0, 0x0

    .line 182
    .local v0, "indicatorText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 183
    .local v1, "leftDrawableRes":I
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const/4 v2, 0x0

    .line 185
    const-string v0, "GIF"

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateTypeIndicator(ILjava/lang/String;I)V

    .line 201
    return-void

    .line 186
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    const/4 v2, 0x0

    .line 188
    invoke-static {p4, p5}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->tryGetHFRIndicatorResId(J)I

    move-result v1

    .line 189
    if-eqz v1, :cond_2

    .line 190
    const-string v0, ""

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {p2, p3}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v0

    .line 193
    const v1, 0x7f0202d4

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4, p5}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->isRefocusSupported(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 197
    const-string v0, ""

    .line 198
    const v1, 0x7f0202d2

    goto :goto_0
.end method

.method public bindSyncIndicator(JILcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "showScene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .prologue
    .line 271
    const/4 v6, 0x7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V

    .line 272
    return-void
.end method

.method public bindSyncIndicator(JILcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "showScene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;
    .param p5, "displayLogic"    # I

    .prologue
    const v6, 0x7f05000f

    .line 275
    invoke-direct {p0, p4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needShowSyncIndicator(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 276
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSyncIndicatorVisibility(I)V

    .line 277
    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needRefreshSyncIndicator(JII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, "visibility":I
    const/4 v2, 0x0

    .line 288
    .local v2, "resId":I
    const/4 v0, 0x0

    .line 289
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 290
    .local v1, "bgAnimation":Landroid/view/animation/Animation;
    sparse-switch p3, :sswitch_data_0

    .line 342
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknow status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :sswitch_0
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncedState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    const v2, 0x7f020211

    .line 295
    const/4 v0, 0x0

    .line 345
    :cond_2
    :goto_1
    iput-wide p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    .line 346
    iput p3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 347
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateSyncIndicator(IILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 297
    :cond_3
    iget v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 298
    const/16 v3, 0x8

    goto :goto_1

    .line 299
    :cond_4
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    const/16 v3, 0x8

    .line 301
    const v2, 0x7f020211

    .line 302
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1

    .line 310
    :sswitch_1
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 311
    const v2, 0x7f020212

    .line 312
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050010

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 315
    :cond_5
    const/16 v3, 0x8

    .line 317
    goto :goto_1

    .line 319
    :sswitch_2
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncableState(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    const v2, 0x7f020212

    .line 321
    const/4 v0, 0x0

    goto :goto_1

    .line 323
    :cond_6
    const/16 v3, 0x8

    .line 325
    goto :goto_1

    .line 327
    :sswitch_3
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displayUnSyncableState(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 328
    const v2, 0x7f020213

    .line 329
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    :cond_7
    const/16 v3, 0x8

    .line 333
    goto :goto_1

    .line 338
    :sswitch_4
    const/4 v2, 0x0

    .line 339
    const/4 v0, 0x0

    .line 340
    goto :goto_1

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method

.method public getBackgroundImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackgroundMask()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getShowNumberTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mPickingNumberIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSquareItem()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f120197

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    .line 70
    const v0, 0x7f120196

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    .line 71
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 72
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 73
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isSquareItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 106
    if-eqz p1, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindFavoriteIndicator(Z)V

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSimilarMarkEnable(Z)V

    .line 115
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setImageForeground(I)V
    .locals 1
    .param p1, "fgDrawableRes"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/gallery/widget/ForegroundImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/gallery/widget/ForegroundImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->setForegroundResource(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 79
    :cond_0
    return-void
.end method

.method public setIsSimilarBestImage(Z)V
    .locals 0
    .param p1, "isBest"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mIsSimilarBestImage:Z

    .line 169
    return-void
.end method

.method public setSimilarMarkEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mIsSimilarBestImage:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 160
    return-void
.end method

.method protected updateBottomIndicatorBg()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    .line 417
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_2
    :goto_0
    return-void

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateFavoriteIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 406
    if-nez p1, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateBottomIndicatorBg()V

    .line 413
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTopIndicatorBg()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 363
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTypeIndicator(ILjava/lang/String;I)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "indicatorText"    # Ljava/lang/String;
    .param p3, "leftDrawableRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 426
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 432
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setTypeIndicatorVisibility(I)V

    goto :goto_0
.end method
