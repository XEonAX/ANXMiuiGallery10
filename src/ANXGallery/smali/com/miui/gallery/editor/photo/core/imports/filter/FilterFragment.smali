.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/miui/gallery/editor/photo/core/GLFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;,
        Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;
    }
.end annotation


# instance fields
.field private mBeautyBitmap:Landroid/graphics/Bitmap;

.field private mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

.field private mCompareBtn:Landroid/widget/Button;

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

.field private mFloatView:Landroid/view/View;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

.field private mNeedDoRender:Z

.field private mShowFloatView:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    .line 282
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->renderOriginal()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRenderAfterBeauty()V

    return-void
.end method

.method private createFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 84
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 85
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x3ea

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 86
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 87
    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    .line 95
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private doRender()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 189
    .local v1, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isPortraitBeauty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->idBeautyAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 191
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    .line 192
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRenderAfterBeauty()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v0

    .line 198
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 200
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 201
    instance-of v4, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->enableComparison(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private doRenderAfterBeauty()V
    .locals 4

    .prologue
    .line 206
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 207
    .local v1, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isPortraitBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v0

    .line 209
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 211
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 212
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->enableComparison(Z)V

    .line 214
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_0
    return-void

    .line 212
    .restart local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeFloatView()V
    .locals 3

    .prologue
    .line 98
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 101
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    .line 104
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private renderOriginal()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 176
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 1
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 157
    instance-of v0, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    return-void
.end method

.method public enableComparison(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 219
    .local v0, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 58
    const v1, 0x7f04007a

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 60
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v1, v3, v3, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setBackgroundColor(FFF)V

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    const v1, 0x7f040067

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    const v2, 0x7f120144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->createFloatView()V

    .line 74
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mNeedDoRender:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRender()V

    .line 77
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->cancel(Z)Z

    .line 124
    :cond_0
    return-void
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onPause()V

    .line 115
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->removeFloatView()V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->createFloatView()V

    .line 110
    return-void
.end method

.method protected onSample()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    return-object v1

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/Metadata;

    .line 230
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/Metadata;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V9-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 2
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 164
    instance-of v1, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mNeedDoRender:Z

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRender()V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 153
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 257
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 252
    const-string v0, "FilterFragment:AbstractEffectFragment"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;->surfaceDestroyed()V

    .line 262
    return-void
.end method
