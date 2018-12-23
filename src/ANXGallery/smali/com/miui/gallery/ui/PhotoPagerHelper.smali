.class public Lcom/miui/gallery/ui/PhotoPagerHelper;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;
    }
.end annotation


# instance fields
.field private mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

.field private mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

.field private mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

.field private mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

.field private mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

.field private mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

.field private mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

.field private mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

.field private mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

.field private mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

.field private mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

.field private mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

.field private mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

.field private mViewPager:Lcom/miui/gallery/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/miui/gallery/widget/ViewPager;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$1;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    .line 47
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$2;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    .line 63
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$3;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 72
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$4;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 109
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$5;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 118
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$6;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .line 127
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$7;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 136
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$8;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 146
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$9;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .line 155
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$10;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 164
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$11;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .line 196
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setOnPageSettledListener(Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;)V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    return-object v0
.end method


# virtual methods
.method public doExitTransition(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)Z
    .locals 2
    .param p1, "info"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 338
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 340
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveItemCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public getCurItemDisplayRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 355
    .local v1, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v1, :cond_0

    .line 356
    iget-object v3, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 357
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 358
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 359
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v3, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3, v2}, Luk/co/senab/photoview/PhotoView;->getAbsoluteRect(Landroid/graphics/RectF;)Z

    .line 363
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 290
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/ViewPager;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 294
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/ViewPager;->getItemByNativeIndex(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 286
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarVisibleChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 348
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 351
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 331
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 303
    .local v1, "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v1, :cond_0

    .line 304
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->onSelected(Z)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    .line 307
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 308
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v3

    .line 309
    .local v3, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v3, :cond_1

    .line 310
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->onStopTrimMemory(I)V

    .line 307
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v3    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 317
    .local v1, "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    .line 318
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 319
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v3

    .line 320
    .local v3, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 321
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->onTrimMemory(I)V

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_1
    if-eqz v1, :cond_2

    .line 325
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->onUnSelected(Z)V

    .line 327
    :cond_2
    return-void
.end method

.method public setOnAlphaChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;)V
    .locals 0
    .param p1, "alphaChangedListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    .line 271
    return-void
.end method

.method public setOnDisplayRectChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;)V
    .locals 0
    .param p1, "displayRectChangedListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    .line 267
    return-void
.end method

.method public setOnDownloadListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 0
    .param p1, "downloadListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 255
    return-void
.end method

.method public setOnExitListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;)V
    .locals 0
    .param p1, "exitListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    .line 263
    return-void
.end method

.method public setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;)V
    .locals 0
    .param p1, "imageLoadFinishListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

    .line 275
    return-void
.end method

.method public setOnPageChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    .line 247
    return-void
.end method

.method public setOnPageSettledListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    .line 243
    return-void
.end method

.method public setOnScaleChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;)V
    .locals 0
    .param p1, "scaleChangedListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    .line 259
    return-void
.end method

.method public setOnTapListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;)V
    .locals 0
    .param p1, "tapListener"    # Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    .line 251
    return-void
.end method

.method public setPageChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;->onPageChanged(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setPageSettled(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 209
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    invoke-interface {v4, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;->onPageSettled(I)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 214
    .local v1, "curItem":Lcom/miui/gallery/ui/PhotoPageItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 215
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v3

    .line 216
    .local v3, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v3, :cond_1

    .line 217
    if-eq v3, v1, :cond_2

    .line 218
    invoke-virtual {v3, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->onUnSelected(Z)V

    .line 219
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 220
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 221
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    .line 222
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 223
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 224
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    .line 225
    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    .line 236
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v3, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->onSelected(Z)V

    .line 228
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 229
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 230
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    .line 231
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 232
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 233
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    .line 234
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    goto :goto_1

    .line 239
    .end local v3    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_3
    return-void
.end method
