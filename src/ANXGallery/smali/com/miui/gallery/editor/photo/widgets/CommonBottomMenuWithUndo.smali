.class public Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;
.super Landroid/widget/LinearLayout;
.source "CommonBottomMenuWithUndo.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;


# instance fields
.field private mDiscard:Landroid/widget/ImageView;

.field private mRedo:Landroid/widget/ImageView;

.field private mRenderRecordListener:Lcom/miui/gallery/editor/photo/app/RenderRecord;

.field private mSave:Landroid/widget/ImageView;

.field private mShowTitle:Z

.field private mTitle:Landroid/widget/TextView;

.field private mUndo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mShowTitle:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mShowTitle:Z

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)Lcom/miui/gallery/editor/photo/app/RenderRecord;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRenderRecordListener:Lcom/miui/gallery/editor/photo/app/RenderRecord;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;-><init>(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public isShowTitle()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mShowTitle:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f12012c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f12012d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f120076

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mTitle:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f12012a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mDiscard:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f12012b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mSave:Landroid/widget/ImageView;

    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->init()V

    .line 42
    return-void
.end method

.method public onMenuEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mDiscard:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mSave:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 100
    return-void
.end method

.method public onMenuUpdated(ZZ)V
    .locals 2
    .param p1, "undoEnable"    # Z
    .param p2, "redoEnable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mShowTitle:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 88
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mShowTitle:Z

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public setRenderRecordListener(Lcom/miui/gallery/editor/photo/app/RenderRecord;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/app/RenderRecord;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRenderRecordListener:Lcom/miui/gallery/editor/photo/app/RenderRecord;

    .line 70
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method

.method public updateBottomBar(Z)V
    .locals 3
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->mRedo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
