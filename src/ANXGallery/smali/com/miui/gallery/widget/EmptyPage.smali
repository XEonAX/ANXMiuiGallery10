.class public Lcom/miui/gallery/widget/EmptyPage;
.super Landroid/widget/RelativeLayout;
.source "EmptyPage.java"


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mBigTitle:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/EmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/EmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/EmptyPage;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x0

    const v11, 0x3ccccccd    # 0.025f

    const/4 v10, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/R$styleable;->EmptyPage:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 54
    .local v4, "iconDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 55
    .local v6, "titleText":Ljava/lang/CharSequence;
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 56
    .local v3, "descriptionText":Ljava/lang/CharSequence;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 58
    .local v2, "actionButtonText":Ljava/lang/CharSequence;
    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 60
    .local v5, "showActionButton":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04006a

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 64
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f1200cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    .line 65
    const v8, 0x7f120076

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    .line 66
    const v8, 0x7f120147

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    .line 67
    const v8, 0x7f1200ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    .line 68
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 69
    iget-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 70
    iget-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 72
    :cond_1
    const v8, 0x7f120146

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    .line 74
    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {p0, v4}, Lcom/miui/gallery/widget/EmptyPage;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_2
    if-eqz v3, :cond_6

    .line 78
    invoke-direct {p0, v12}, Lcom/miui/gallery/widget/EmptyPage;->setSingleLineTextMode(Z)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/EmptyPage;->setDescription(Ljava/lang/CharSequence;)V

    .line 80
    if-eqz v6, :cond_3

    .line 81
    invoke-virtual {p0, v6}, Lcom/miui/gallery/widget/EmptyPage;->setBigTitle(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_4
    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_5
    invoke-virtual {p0, v5}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    goto/16 :goto_0

    .line 60
    .end local v1    # "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "actionButtonText":Ljava/lang/CharSequence;
    .end local v3    # "descriptionText":Ljava/lang/CharSequence;
    .end local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "showActionButton":Z
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .end local v7    # "v":Landroid/view/View;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8

    .line 84
    .restart local v1    # "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "actionButtonText":Ljava/lang/CharSequence;
    .restart local v3    # "descriptionText":Ljava/lang/CharSequence;
    .restart local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "showActionButton":Z
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v7    # "v":Landroid/view/View;
    :cond_6
    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/EmptyPage;->setSingleLineTextMode(Z)V

    .line 85
    if-eqz v6, :cond_3

    .line 86
    invoke-virtual {p0, v6}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setSingleLineTextMode(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setActionButtonBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    return-void
.end method

.method public setActionButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setActionButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 169
    return-void
.end method

.method public setActionButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 153
    return-void
.end method

.method public setActionButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public setActionButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setBigTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    return-void
.end method

.method public setBigTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
