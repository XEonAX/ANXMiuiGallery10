.class public Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
.super Landroid/os/AsyncTask;
.source "PosterElementRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/PosterElementRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadPosterDataTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/collage/PosterModel;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLoadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;

.field private mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

.field private mScale:F

.field private mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/collage/render/PosterElementRender;IIFLandroid/content/Context;)V
    .locals 1
    .param p1, "posterElementRender"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scale"    # F
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mBackgroundColor:I

    .line 100
    iput p2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mWidth:I

    .line 101
    iput p3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mHeight:I

    .line 102
    iput p4, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mScale:F

    .line 103
    iput-object p5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mContext:Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/collage/render/PosterElementRender;IILandroid/content/Context;)V
    .locals 6
    .param p1, "posterElementRender"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;-><init>(Lcom/miui/gallery/collage/render/PosterElementRender;IIFLandroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    check-cast p1, [Lcom/miui/gallery/collage/PosterModel;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->doInBackground([Lcom/miui/gallery/collage/PosterModel;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/gallery/collage/PosterModel;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->performDoInBackground([Lcom/miui/gallery/collage/PosterModel;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->performOnPostExecute(Ljava/lang/Void;)V

    .line 138
    return-void
.end method

.method public varargs performDoInBackground([Lcom/miui/gallery/collage/PosterModel;)V
    .locals 9
    .param p1, "params"    # [Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 114
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .line 115
    .local v2, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    iget-object v1, v2, Lcom/miui/gallery/collage/PosterModel;->imageElementModels:[Lcom/miui/gallery/collage/ImageElementModel;

    .line 116
    .local v1, "imageElementModels":[Lcom/miui/gallery/collage/ImageElementModel;
    iget-object v3, v2, Lcom/miui/gallery/collage/PosterModel;->specifyDrawableModels:[Lcom/miui/gallery/collage/SpecifyDrawableModel;

    .line 117
    .local v3, "specifyDrawableModels":[Lcom/miui/gallery/collage/SpecifyDrawableModel;
    iget-object v4, v2, Lcom/miui/gallery/collage/PosterModel;->textElementModels:[Lcom/miui/gallery/collage/TextElementModel;

    .line 118
    .local v4, "textElementModels":[Lcom/miui/gallery/collage/TextElementModel;
    iget-object v0, v2, Lcom/miui/gallery/collage/PosterModel;->background:Ljava/lang/String;

    .line 120
    .local v0, "backgroundColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mWidth:I

    iget v7, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mHeight:I

    invoke-static {v5, v1, v6, v7}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$000(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_0
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mWidth:I

    iget v7, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mHeight:I

    invoke-static {v5, v3, v6, v7}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$100(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/SpecifyDrawableModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 126
    :cond_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 127
    iget-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mWidth:I

    iget v7, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mHeight:I

    iget v8, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mScale:F

    invoke-static {v5, v4, v6, v7, v8}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$200(Landroid/content/Context;[Lcom/miui/gallery/collage/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 130
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mBackgroundColor:I

    .line 133
    :cond_3
    return-void
.end method

.method public performOnPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/PosterElementRender;->clear()V

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->setImageDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->setSpecifyDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->setTextEditorHolders([Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->setBackground(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mLoadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mLoadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;

    invoke-interface {v0}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;->onLoadFinish()V

    .line 151
    :cond_1
    return-void
.end method

.method public setLoadDataListener(Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;)V
    .locals 0
    .param p1, "loadDataListener"    # Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->mLoadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;

    .line 155
    return-void
.end method
