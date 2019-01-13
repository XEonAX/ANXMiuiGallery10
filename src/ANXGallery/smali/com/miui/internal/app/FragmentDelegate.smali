.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "SourceFile"


# static fields
.field public static final MENU_INVALIDATE:I = 0x1

.field private static final cV:I = 0x10


# instance fields
.field private ba:Landroid/content/Context;

.field private final cG:Landroid/view/Window$Callback;

.field private cW:Landroid/app/Fragment;

.field private cX:Landroid/view/View;

.field private cY:I

.field private cZ:B

.field private final cb:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 104
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 53
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$1;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cb:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$2;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cG:Landroid/view/Window$Callback;

    .line 105
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;)B
    .registers 1

    .line 36
    iget-byte p0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;I)B
    .registers 3

    .line 36
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .registers 7

    .line 153
    iget-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_bf

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 155
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 157
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->cG:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 158
    invoke-virtual {p2, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 159
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->aQ:Z

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 162
    iget p3, p0, Lcom/miui/internal/app/FragmentDelegate;->cY:I

    if-eqz p3, :cond_32

    .line 163
    const p3, 0x1010054

    invoke-static {p1, p3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_32
    sget p3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/internal/widget/ActionBarView;

    iput-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 167
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cG:Landroid/view/Window$Callback;

    invoke-virtual {p3, v1}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 170
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureProgress:Z

    if-eqz p3, :cond_4c

    .line 171
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 173
    :cond_4c
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_55

    .line 174
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 178
    :cond_55
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_62

    .line 179
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {p3, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 183
    :cond_62
    const-string p3, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 186
    if-eqz p3, :cond_79

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_89

    .line 190
    :cond_79
    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    sget v1, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    move p1, v1

    :goto_89
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    .line 196
    invoke-virtual {p2, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    .line 197
    if-eqz v1, :cond_b6

    .line 198
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 199
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 200
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 202
    sget v2, Lcom/miui/internal/R$id;->action_context_bar:I

    .line 203
    invoke-virtual {p2, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    .line 204
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 205
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 206
    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 207
    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 210
    :cond_b6
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 211
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 212
    iput-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    .line 213
    goto :goto_e4

    :cond_bf
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e4

    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_e4

    .line 214
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 215
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_e4

    .line 216
    iget-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 219
    :cond_e4
    :goto_e4
    return-void
.end method

.method public createActionBar()Lmiui/app/ActionBar;
    .registers 3

    .line 110
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 294
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    .line 295
    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cY:I

    if-eqz v0, :cond_17

    .line 296
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->cY:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    .line 299
    :cond_17
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .line 263
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_20

    .line 264
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    .line 265
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 267
    :cond_20
    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    instance-of v0, v0, Lmiui/app/IFragment;

    if-eqz v0, :cond_f

    .line 305
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 308
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 232
    if-nez p1, :cond_b

    .line 233
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiui/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 235
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 2

    .line 227
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 119
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 120
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 122
    :cond_20
    sget v1, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 123
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 125
    :cond_2d
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setTranslucentStatus(I)V

    .line 127
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 128
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lcom/miui/internal/app/FragmentDelegate;->aP:Z

    if-eqz v1, :cond_8e

    .line 133
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/internal/app/FragmentDelegate;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 136
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 138
    if-eqz p2, :cond_8d

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_8d

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    :cond_8d
    goto :goto_98

    .line 146
    :cond_8e
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    .line 149
    :goto_98
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    return-object p1

    .line 116
    :cond_9b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 3

    .line 241
    if-nez p1, :cond_9

    .line 242
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 244
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 258
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    instance-of v0, v0, Lmiui/app/IFragment;

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 315
    const/4 p1, 0x1

    return p1

    .line 318
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 249
    if-nez p1, :cond_c

    .line 250
    iget-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:Landroid/app/Fragment;

    check-cast p2, Lmiui/app/IFragment;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lmiui/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    .line 251
    const/4 p1, 0x1

    return p1

    .line 253
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 281
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 282
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 284
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtraThemeRes(I)V
    .registers 2

    .line 288
    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cY:I

    .line 289
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_11

    .line 323
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 325
    :cond_11
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cX:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenu(I)V
    .registers 3

    .line 270
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cZ:B

    .line 271
    return-void
.end method
