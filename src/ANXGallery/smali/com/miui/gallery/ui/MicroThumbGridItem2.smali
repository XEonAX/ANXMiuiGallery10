.class public abstract Lcom/miui/gallery/ui/MicroThumbGridItem2;
.super Landroid/widget/RelativeLayout;
.source "MicroThumbGridItem2.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;
.implements Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;
.implements Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;


# instance fields
.field private mBottomIndicatorContainer:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/view/View;

.field private mFavoriteIndicator:Landroid/widget/ImageView;

.field protected mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field protected mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field protected mImageView:Landroid/widget/ImageView;

.field private mItemStub:Landroid/view/ViewStub;

.field private mMask:Landroid/widget/ImageView;

.field private mPickingNumberIndicator:Landroid/widget/TextView;

.field private mSyncIndicator:Landroid/widget/ImageView;

.field private mTopIndicatorContainer:Landroid/view/View;

.field private mTypeIndicator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private checkStubInflate()V
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mItemStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mItemStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "viewStub":Landroid/view/View;
    const v1, 0x7f120198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mMask:Landroid/widget/ImageView;

    .line 262
    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    .line 263
    const v1, 0x7f12019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    .line 264
    const v1, 0x7f12019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    .line 265
    const v1, 0x7f12019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    .line 266
    const v1, 0x7f12019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mBottomIndicatorContainer:Landroid/view/View;

    .line 267
    const v1, 0x7f1200d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mSyncIndicator:Landroid/widget/ImageView;

    .line 268
    const v1, 0x7f12019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTopIndicatorContainer:Landroid/view/View;

    .line 269
    const v1, 0x7f120199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mPickingNumberIndicator:Landroid/widget/TextView;

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mItemStub:Landroid/view/ViewStub;

    goto :goto_0
.end method

.method private isInCheckMode()Z
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v0, 0x8

    .line 184
    .local v0, "visibility":I
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 183
    .end local v0    # "visibility":I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 184
    .restart local v0    # "visibility":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setTypeIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->updateBottomIndicatorBg()V

    .line 204
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindFavoriteIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 179
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->isInCheckMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->updateFavoriteIndicatorVisibility(I)V

    .line 180
    return-void

    .line 179
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindImage(ILjava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p5, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 155
    .local v6, "start":J
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 156
    const-string v0, "bindImage"

    const-string v1, "bind image pos %s, cost %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public getBackgroundImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackgroundMask()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getShowNumberTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mPickingNumberIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSquareItem()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f120197

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mItemStub:Landroid/view/ViewStub;

    .line 62
    const v0, 0x7f120196

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    .line 63
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 64
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->isSquareItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->bindFavoriteIndicator(Z)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setImageForeground(I)V
    .locals 1
    .param p1, "fgDrawableRes"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/gallery/widget/ForegroundImageView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/gallery/widget/ForegroundImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->setForegroundResource(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 71
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 142
    return-void
.end method

.method protected updateBottomIndicatorBg()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    .line 218
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mBottomIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mBottomIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mBottomIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateFavoriteIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->checkStubInflate()V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem2;->updateBottomIndicatorBg()V

    .line 214
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem2;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
