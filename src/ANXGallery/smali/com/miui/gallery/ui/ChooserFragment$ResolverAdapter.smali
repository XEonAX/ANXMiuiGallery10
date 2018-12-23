.class Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;
.super Lcom/miui/gallery/widget/PagerAdapter;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;,
        Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;,
        Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;
    }
.end annotation


# instance fields
.field private mCachedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCrop:Z

.field private mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

.field private mLoader:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPriorityComparator:Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

.field private mResumed:Z

.field private mTarIntent:Landroid/content/Intent;

.field private mTheme:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;IZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tarIntent"    # Landroid/content/Intent;
    .param p3, "theme"    # I
    .param p4, "isCrop"    # Z
    .param p5, "resumed"    # Z

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerAdapter;-><init>()V

    .line 233
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    .line 243
    new-instance v0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;-><init>(Lcom/miui/gallery/ui/ChooserFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPriorityComparator:Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    .line 248
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 250
    iput-object p2, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    .line 251
    iput p3, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTheme:I

    .line 252
    iput-boolean p4, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mIsCrop:Z

    .line 253
    new-instance v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mLoader:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    .line 254
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->reBuildList()V

    .line 255
    iput-boolean p5, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    .line 256
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->reBuildList()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/ResolveInfo;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private addResolveListDedupe(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 387
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 388
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 389
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 390
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 392
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 393
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 394
    .local v6, "savedInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v5, v6}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 395
    const/4 v0, 0x1

    .line 399
    .end local v6    # "savedInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 400
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .restart local v6    # "savedInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 403
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "savedInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method private contains(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 366
    .local v1, "mostClosely":Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 367
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 369
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    move-object v1, v2

    .line 371
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    move-object v1, v2

    .line 377
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v1
.end method

.method private conversePos(II)I
    .locals 1
    .param p1, "itemPos"    # I
    .param p2, "cellIndex"    # I

    .prologue
    .line 452
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p2

    return v0
.end method

.method private filterResolveInfoList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_1

    .line 347
    :cond_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 332
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_3

    .line 334
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 335
    add-int/lit8 v0, v0, -0x1

    .line 330
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 339
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 342
    add-int/lit8 v0, v0, -0x1

    .line 343
    goto :goto_1
.end method

.method private generatorChooserItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 406
    :cond_0
    iget-object v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 407
    iget-object v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 408
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 409
    .local v8, "view":Landroid/view/View;
    :goto_0
    if-eqz v8, :cond_0

    .line 440
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v8    # "view":Landroid/view/View;
    :goto_1
    return-object v8

    .line 408
    .restart local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 413
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 414
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04003f

    invoke-virtual {v4, v9, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 415
    .local v5, "item":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v9, 0x5

    if-ge v1, v9, :cond_6

    .line 416
    const v9, 0x7f040040

    invoke-virtual {v4, v9, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "cell":Landroid/view/View;
    const v9, 0x7f1200f0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 418
    .local v2, "imageContainer":Landroid/view/ViewGroup;
    const v9, 0x7f1200f1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 419
    .local v7, "textView":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 420
    .local v3, "imageRes":I
    iget v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTheme:I

    if-nez v9, :cond_4

    .line 421
    iget-boolean v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mIsCrop:Z

    if-eqz v9, :cond_3

    .line 422
    const v3, 0x7f040043

    .line 427
    :goto_3
    iget-object v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0f001d

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 437
    :goto_4
    invoke-virtual {v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 438
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 424
    :cond_3
    const v3, 0x7f040041

    goto :goto_3

    .line 429
    :cond_4
    iget-boolean v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mIsCrop:Z

    if-eqz v9, :cond_5

    .line 430
    const v3, 0x7f040042

    .line 435
    :goto_5
    iget-object v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0f001c

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4

    .line 432
    :cond_5
    const v3, 0x7f040041

    goto :goto_5

    .end local v0    # "cell":Landroid/view/View;
    .end local v2    # "imageContainer":Landroid/view/ViewGroup;
    .end local v3    # "imageRes":I
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_6
    move-object v8, v5

    .line 440
    goto :goto_1
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ResolveInfo;
    .param p1, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 381
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 382
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reBuildList()V
    .locals 18

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 291
    .local v10, "start":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    const/high16 v15, 0x10000

    invoke-virtual {v9, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 292
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_3

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->filterResolveInfoList(Ljava/util/List;)V

    .line 294
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 295
    .local v4, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->addResolveListDedupe(Ljava/util/List;Ljava/util/List;)V

    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    if-lez v2, :cond_3

    .line 301
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 302
    .local v7, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 303
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 304
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v14, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v9, v14, :cond_0

    iget-boolean v9, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v14, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v9, v14, :cond_1

    .line 305
    :cond_0
    :goto_1
    if-ge v5, v2, :cond_1

    .line 306
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 302
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 312
    .local v12, "start1":J
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/util/ShareComponentSorter;->createComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 313
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPriorityComparator:Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getComponentPriority()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v9, v14, v4}, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->build(Ljava/util/List;Ljava/util/List;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPriorityComparator:Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

    invoke-static {v9, v3}, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->access$302(Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mPriorityComparator:Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->sortResolveList(Ljava/util/List;)V

    .line 317
    const-string v9, "ChooserFragment"

    const-string/jumbo v14, "sortResolveList cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    new-instance v15, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1, v9}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;-><init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 323
    .end local v2    # "N":I
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    .end local v7    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "start1":J
    :cond_3
    const-string v9, "ChooserFragment"

    const-string v14, "reBuildList cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method private sortResolveList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getShareComponents()Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "ordered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 352
    .local v3, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    .line 353
    .local v0, "component":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->contains(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 354
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 355
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    .end local v0    # "component":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 361
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 494
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 495
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 502
    .local v0, "dataSize":I
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_0

    div-int/lit8 v1, v0, 0x5

    :goto_0
    return v1

    :cond_0
    div-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 513
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 514
    .local v0, "item":Landroid/view/View;
    const v1, 0x7f12001f

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 515
    const/4 v1, -0x3

    .line 517
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->generatorChooserItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "item":Landroid/view/View;
    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->refreshItem(Ljava/lang/Object;I)V

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 448
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 507
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    .line 267
    return-void
.end method

.method public refreshItem(Ljava/lang/Object;I)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 457
    move-object v12, p1

    check-cast v12, Landroid/view/ViewGroup;

    .line 458
    .local v12, "item":Landroid/view/ViewGroup;
    const v0, 0x7f12001f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 459
    iget-boolean v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    if-nez v0, :cond_1

    .line 490
    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 464
    .local v7, "cellCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 465
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 466
    .local v6, "cell":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;

    .line 467
    .local v9, "holder":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;
    if-nez v9, :cond_2

    .line 468
    new-instance v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;

    .end local v9    # "holder":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;
    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;-><init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;Lcom/miui/gallery/ui/ChooserFragment$1;)V

    .line 469
    .restart local v9    # "holder":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;
    const v0, 0x7f1200f2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    .line 470
    const v0, 0x7f1200f1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mText:Landroid/widget/TextView;

    .line 471
    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 473
    :cond_2
    invoke-direct {p0, p2, v10}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->conversePos(II)I

    move-result v8

    .line 474
    .local v8, "dataPos":I
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    .line 476
    .local v11, "info":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;
    invoke-virtual {v9, v11}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->needRefresh(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    iput-object v11, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    .line 478
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mLoader:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mText:Landroid/widget/TextView;

    iget-object v4, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mIsCrop:Z

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;->loadInfo(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ResolveInfo;Z)V

    .line 483
    :goto_1
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    .end local v11    # "info":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 481
    .restart local v11    # "info":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;
    :cond_3
    iput-object v11, v9, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    goto :goto_1

    .line 486
    .end local v11    # "info":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mLoader:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;->release()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .line 272
    return-void
.end method

.method public requery(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    .line 281
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->reBuildList()V

    .line 282
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->notifyDataSetChanged()V

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mResumed:Z

    .line 261
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_0
    return-void
.end method

.method public setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .line 276
    return-void
.end method
