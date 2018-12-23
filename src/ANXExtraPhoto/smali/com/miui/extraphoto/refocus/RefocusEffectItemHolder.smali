.class Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RefocusEffectItemHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mRefocusEffectConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->itemView:Landroid/view/View;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mImageView:Landroid/widget/ImageView;

    .line 28
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static getIcon(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 44
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 47
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public setData(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 3
    .param p1, "refocusEffectConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 32
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mRefocusEffectConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 33
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->getIcon(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v0, p1, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->iconColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->iconColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    :cond_0
    return-void
.end method
