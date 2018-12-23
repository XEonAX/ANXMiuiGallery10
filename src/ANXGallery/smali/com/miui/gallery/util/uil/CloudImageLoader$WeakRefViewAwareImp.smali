.class Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;
.super Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
.source "CloudImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakRefViewAwareImp"
.end annotation


# instance fields
.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;)V
    .locals 11
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "view"    # Landroid/widget/ImageView;
    .param p5, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p6, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p7, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .param p8, "progressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .param p9, "regionRect"    # Landroid/graphics/RectF;

    .prologue
    .line 892
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;Z)V

    .line 893
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;Z)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "view"    # Landroid/widget/ImageView;
    .param p5, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p6, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p7, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .param p8, "progressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .param p9, "regionRect"    # Landroid/graphics/RectF;
    .param p10, "needDisplay"    # Z

    .prologue
    .line 876
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    .line 877
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 878
    invoke-static {p4}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v0

    .line 879
    .local v0, "imageHolder":Lcom/miui/gallery/util/uil/CloudImageHolder;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 880
    invoke-virtual {v1, p3}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 881
    invoke-virtual {v1, p5}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 882
    invoke-virtual {v1, p6}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 883
    invoke-virtual {v1, p7}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 884
    invoke-virtual {v1, p8}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageLoadingProgressListener(Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 885
    invoke-virtual {v1, p9}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setRegionDecodeRect(Landroid/graphics/RectF;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 886
    invoke-virtual {v1, p10}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setNeedDisplay(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;

    .line 887
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 888
    return-void
.end method


# virtual methods
.method public getDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 944
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 945
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 947
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 2

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 917
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 918
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    .line 920
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 2

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 953
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 954
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 956
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 926
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 927
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v1

    .line 929
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 935
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 936
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRegionDecodeRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 962
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 963
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 965
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 908
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 909
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 911
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needDisplay()Z
    .locals 2

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 971
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 972
    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Landroid/view/View;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->needDisplay()Z

    move-result v1

    .line 974
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
