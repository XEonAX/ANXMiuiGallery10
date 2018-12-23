.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "TextFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

.field private mTextConfigDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

.field private mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

.field private mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    .line 103
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .line 135
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 280
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object p1
.end method

.method private performSetDialog(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;I)V
    .locals 3
    .param p1, "baseDialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .param p2, "newIndex"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    .line 179
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 180
    .local v1, "newData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    const/4 v0, 0x0

    .line 181
    .local v0, "isNew":Z
    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    move-result-object v1

    .line 183
    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->configSelfByInit(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    .line 184
    const/4 v0, 0x1

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->enableStatusForCurrentItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;Z)V

    .line 187
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    .line 188
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 5
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    .end local p2    # "param":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local p2    # "param":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "param":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    .local v1, "newIndex":I
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemSize()I

    move-result v4

    if-nez v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->addNewItem()V

    .line 163
    :cond_2
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    if-eq v1, v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isItemActivation()Z

    move-result v4

    if-nez v4, :cond_3

    .line 167
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setLastItemActivation()V

    .line 169
    :cond_3
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    move-result-object v3

    .line 170
    .local v3, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getCurrentItemStatus(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;)V

    move-object v2, p1

    .line 172
    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    .line 173
    .local v2, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->getBaseDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    move-result-object v0

    .line 174
    .local v0, "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->performSetDialog(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 272
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 273
    .local v0, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .end local v0    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;-><init>()V

    .line 275
    .restart local v0    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 45
    const v3, 0x7f040068

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .line 47
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .line 48
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setConfigChangeListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V

    .line 50
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setTextEditorListener(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;)V

    .line 51
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setTextWatch(Landroid/text/TextWatcher;)V

    .line 52
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setStatusListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;)V

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 58
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v3, v1, v2, v1, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setPadding(IIII)V

    .line 60
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0, v3, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 61
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 8
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
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    move-result-object v1

    .line 73
    .local v1, "dialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    if-eqz v1, :cond_0

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialog_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-eqz v5, :cond_1

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "font_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "color_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemBold()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    const-string v5, "bold"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemShadow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    const-string v5, "shadow"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v3

    .line 87
    .local v3, "textAlignment":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    sget-object v5, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    if-eq v3, v5, :cond_4

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "align_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemTransparent()F

    move-result v4

    .line 91
    .local v4, "transparent":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 92
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, ".0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transparent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v0    # "decimalFormat":Ljava/text/DecimalFormat;
    :cond_5
    return-object v2
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 0
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 193
    return-void
.end method

.method public render()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
