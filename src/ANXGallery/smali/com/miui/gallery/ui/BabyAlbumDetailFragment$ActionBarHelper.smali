.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

.field private mHomeIcon:Landroid/widget/ImageView;

.field private mHomeText:Landroid/widget/TextView;

.field private mIsShowTranslucentStatusBar:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 4
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    const/4 v3, 0x1

    .line 87
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-array v0, v3, [I

    const/4 v1, 0x0

    sget v2, Lmiui/R$attr;->actionBarBackground:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->ATTRS:[I

    .line 92
    iput-boolean v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->setNullStyleActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->setNormalStyleActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->inflateTitle()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    return v0
.end method

.method private inflateTitle()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 95
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->ATTRS:[I

    .line 96
    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "title":Landroid/view/View;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 104
    .local v1, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const v3, 0x7f1200c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    .line 106
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v3, 0x7f1200ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 119
    return-object v2
.end method

.method private refreshHomeIconAndColor()V
    .locals 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_dark:I

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeIcon:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_light:I

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private refreshTopBar(Z)V
    .locals 2
    .param p1, "isShowTranslucentStatusBar"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    .line 124
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshHomeIconAndColor()V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->getTopBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method private setNormalStyleActionBar()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshTopBar(Z)V

    .line 159
    return-void
.end method

.method private setNullStyleActionBar()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->refreshTopBar(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public getTopBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mIsShowTranslucentStatusBar:Z

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
