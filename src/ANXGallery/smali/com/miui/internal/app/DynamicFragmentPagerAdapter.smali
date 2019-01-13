.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.super Lmiui/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private bn:Landroid/app/FragmentManager;

.field private cM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cN:Landroid/app/FragmentTransaction;

.field private cO:Landroid/app/Fragment;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V
    .registers 5

    .line 269
    invoke-direct {p0}, Lmiui/view/PagerAdapter;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    .line 267
    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    .line 270
    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    .line 272
    invoke-virtual {p3, p0}, Lmiui/view/ViewPager;->setAdapter(Lmiui/view/PagerAdapter;)V

    .line 273
    return-void
.end method

.method private c(Landroid/app/Fragment;)V
    .registers 4

    .line 457
    if-eqz p1, :cond_15

    .line 458
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_15

    .line 460
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 461
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 462
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 463
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 466
    :cond_15
    return-void
.end method

.method private z()V
    .registers 6

    .line 446
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 448
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_1a

    .line 449
    invoke-virtual {p0, v3, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v4

    .line 450
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 452
    :cond_1a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 453
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 454
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, p2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 383
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 384
    return p2
.end method

.method a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 378
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method b(Landroid/app/Fragment;)I
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1f

    .line 421
    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_1c

    .line 422
    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 423
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 424
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 425
    return v2

    .line 420
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 428
    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method b(IZ)Landroid/app/Fragment;
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 363
    iget-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    if-nez v0, :cond_31

    .line 365
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    iget-object v1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    .line 366
    iget-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    if-nez v0, :cond_31

    if-eqz p2, :cond_31

    .line 367
    iget-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cP:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cR:Landroid/os/Bundle;

    invoke-static {p2, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    .line 368
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cP:Ljava/lang/Class;

    .line 369
    iput-object p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cR:Landroid/os/Bundle;

    .line 372
    :cond_31
    iget-object p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    return-object p1
.end method

.method c(Landroid/app/ActionBar$Tab;)I
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 406
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    .line 407
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 408
    iget-object v3, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cS:Landroid/app/ActionBar$Tab;

    if-ne v3, p1, :cond_23

    .line 409
    iget-object p1, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 410
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 411
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 412
    return v1

    .line 406
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 415
    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method c(I)V
    .registers 3

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 389
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 390
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 391
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 281
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_c

    .line 282
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    .line 284
    :cond_c
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 285
    return-void
.end method

.method e(Ljava/lang/String;)I
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 395
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 396
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 397
    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 398
    return v1

    .line 395
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 401
    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 305
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_11

    .line 306
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 307
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    .line 308
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 310
    :cond_11
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 350
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    if-ne p1, v2, :cond_16

    .line 351
    return v1

    .line 349
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 354
    :cond_19
    const/4 p1, -0x2

    return p1
.end method

.method getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cS:Landroid/app/ActionBar$Tab;

    return-object p1
.end method

.method public hasActionMenu(I)Z
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cT:Z

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_c

    .line 320
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    .line 323
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 325
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_30

    .line 327
    :cond_1d
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cN:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p2, p2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 329
    :goto_30
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    if-eq v0, p1, :cond_3b

    .line 330
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 331
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 334
    :cond_3b
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 314
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method setFragmentActionMenuAt(IZ)V
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 439
    iget-boolean v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cT:Z

    if-eq v0, p2, :cond_11

    .line 440
    iput-boolean p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cT:Z

    .line 441
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 443
    :cond_11
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 289
    check-cast p3, Landroid/app/Fragment;

    .line 290
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    if-eq p3, p1, :cond_20

    .line 291
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    if-eqz p1, :cond_15

    .line 292
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 293
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 295
    :cond_15
    if-eqz p3, :cond_1e

    .line 296
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 297
    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 299
    :cond_1e
    iput-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cO:Landroid/app/Fragment;

    .line 301
    :cond_20
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 277
    return-void
.end method

.method y()V
    .registers 2

    .line 432
    invoke-direct {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->z()V

    .line 433
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 435
    return-void
.end method
