.class Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "TextProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

.field private mTextConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 24
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 49
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    invoke-direct {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextConfigList:Ljava/util/List;

    .line 51
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;->getDialogModelList()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "dialogModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 54
    .local v0, "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;-><init>(SLjava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    .line 55
    .local v3, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextConfigList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .end local v3    # "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->notifyInitializeFinish()V

    .line 58
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextConfigList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->initialize()V

    .line 30
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;-><init>()V

    return-object v0
.end method
