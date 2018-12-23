.class public Lcom/miui/gallery/ui/SlimPhotoPickFragment;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "SlimPhotoPickFragment.java"


# static fields
.field public static final SLIM_COUNT_STAGE:[I


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

.field private mIsFirstLoadFinish:Z

.field private mMultiChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleMultiChoiceModeListener;

.field private mScanResultIds:[J

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectListener:Landroid/view/View$OnClickListener;

.field private mSlimDescriptionDialog:Landroid/app/Dialog;

.field private mStartSlimButton:Landroid/widget/Button;

.field private mStartSlimListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->SLIM_COUNT_STAGE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    .line 75
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 117
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleMultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/SlimPhotoPickFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->onItemSelectedChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private onItemSelectedChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 157
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lmiui/R$string;->deselect_all:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    sget v0, Lmiui/R$string;->select_all:I

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f040131

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "cleaner_slim_photo_pick"

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 5

    .prologue
    .line 186
    const-string v0, "%s AND %s IN (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SYNCED_SLIM_SCAN_SELECTION:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ","

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mScanResultIds:[J

    .line 189
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 186
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    const/4 v2, 0x1

    .line 180
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;->isFirstUsePhotoSlim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "dialogView":Landroid/view/View;
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 137
    const v3, 0x7f120180

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    .local v1, "okButton":Landroid/widget/Button;
    new-instance v3, Lcom/miui/gallery/ui/SlimPhotoPickFragment$5;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$5;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 147
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 148
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 150
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 151
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;->setIsFirstUsePhotoSlim(Ljava/lang/Boolean;)V

    .line 153
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "okButton":Landroid/widget/Button;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onDestroy()V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0e00e0

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v2, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v3, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 64
    new-instance v2, Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-direct {v2, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleMultiChoiceModeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->startChoiceMode()V

    .line 70
    invoke-static {}, Lcom/miui/gallery/cleaner/ScannerManager;->getInstance()Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/cleaner/ScannerManager;->getScanner(I)Lcom/miui/gallery/cleaner/BaseScanner;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;

    .line 71
    .local v0, "scanner":Lcom/miui/gallery/cleaner/slim/SlimScanner;
    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->getScanResultIds()[J

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mScanResultIds:[J

    .line 72
    return-object v1
.end method
