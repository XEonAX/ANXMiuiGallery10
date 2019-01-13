.class Lcom/miui/internal/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field bL:Lmiui/view/ViewPager;

.field bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field db:Landroid/graphics/Rect;

.field dc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field dd:I

.field de:Z

.field df:I

.field dg:I

.field dh:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V
    .registers 5

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/b;->db:Landroid/graphics/Rect;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/b;->dd:I

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/b;->de:Z

    .line 480
    iput v0, p0, Lcom/miui/internal/app/b;->df:I

    .line 483
    iput v0, p0, Lcom/miui/internal/app/b;->dg:I

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    .line 493
    iput-object p1, p0, Lcom/miui/internal/app/b;->bL:Lmiui/view/ViewPager;

    .line 494
    iput-object p2, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    .line 495
    return-void
.end method


# virtual methods
.method a(IIIF)I
    .registers 6

    .line 626
    nop

    .line 628
    if-ge p1, p3, :cond_6

    mul-int/2addr p1, p2

    div-int/2addr p1, p3

    goto :goto_7

    .line 629
    :cond_6
    move p1, p2

    :goto_7
    mul-float/2addr p4, p4

    .line 630
    int-to-float p1, p1

    const p3, 0x3dcccccd    # 0.1f

    const v0, 0x3f666666    # 0.9f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    int-to-float p2, p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    .line 631
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1b

    float-to-int p1, p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method a(Landroid/view/ViewGroup;IIFZ)V
    .registers 12

    .line 608
    iget-object v0, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 609
    iget-object p1, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 610
    iget-object p1, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 611
    const v1, 0x7fffffff

    .line 612
    nop

    .line 613
    iget-object v2, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 614
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v1, v4, :cond_47

    .line 615
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 616
    sub-int v1, v0, p1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/miui/internal/app/b;->a(IIIF)I

    move-result v1

    .line 617
    if-eqz p5, :cond_43

    goto :goto_44

    :cond_43
    neg-int v1, v1

    .line 620
    :goto_44
    move v5, v1

    move v1, v0

    move v0, v5

    :cond_47
    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 621
    goto :goto_24

    .line 623
    :cond_4c
    return-void
.end method

.method a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p2, p1}, Lcom/miui/internal/app/b;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 572
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lcom/miui/internal/app/b;->db:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiui/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 575
    iget-object v0, p0, Lcom/miui/internal/app/b;->db:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 576
    return-void

    .line 579
    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 580
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_33

    .line 581
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_30

    .line 583
    :cond_2d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 586
    :cond_33
    return-void
.end method

.method a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 590
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_23

    .line 592
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 595
    :cond_23
    goto :goto_4

    .line 596
    :cond_24
    return-void
.end method

.method d(Landroid/view/ViewGroup;)V
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 600
    iget-object p1, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_24

    .line 601
    iget-object p1, p0, Lcom/miui/internal/app/b;->dc:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 602
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 603
    goto :goto_13

    .line 605
    :cond_24
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 559
    if-nez p1, :cond_16

    .line 560
    iget-object p1, p0, Lcom/miui/internal/app/b;->bL:Lmiui/view/ViewPager;

    invoke-virtual {p1}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/app/b;->dd:I

    .line 561
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/app/b;->de:Z

    .line 563
    iget-object p1, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    if-eqz p1, :cond_16

    .line 564
    iget-object p1, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 567
    :cond_16
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 12

    .line 500
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    const/4 p4, 0x1

    if-nez p3, :cond_13

    .line 501
    iput p1, p0, Lcom/miui/internal/app/b;->dd:I

    .line 502
    iput-boolean p4, p0, Lcom/miui/internal/app/b;->de:Z

    .line 504
    iget-object v0, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 505
    iget-object v0, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 509
    :cond_13
    iget v0, p0, Lcom/miui/internal/app/b;->df:I

    if-eq v0, p1, :cond_33

    .line 510
    iget v0, p0, Lcom/miui/internal/app/b;->dd:I

    if-ge v0, p1, :cond_1e

    .line 511
    iput p1, p0, Lcom/miui/internal/app/b;->dd:I

    goto :goto_26

    .line 512
    :cond_1e
    iget v0, p0, Lcom/miui/internal/app/b;->dd:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_26

    .line 513
    iput v1, p0, Lcom/miui/internal/app/b;->dd:I

    .line 515
    :cond_26
    :goto_26
    iput p1, p0, Lcom/miui/internal/app/b;->df:I

    .line 516
    iput-boolean p4, p0, Lcom/miui/internal/app/b;->de:Z

    .line 518
    iget-object v0, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 519
    iget-object v0, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 523
    :cond_33
    if-lez p3, :cond_9e

    .line 524
    nop

    .line 525
    iget-boolean p3, p0, Lcom/miui/internal/app/b;->de:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_77

    .line 526
    iput-boolean v0, p0, Lcom/miui/internal/app/b;->de:Z

    .line 527
    iget p3, p0, Lcom/miui/internal/app/b;->dd:I

    if-ne p3, p1, :cond_4f

    iget-object p3, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, p4

    if-ge p1, p3, :cond_4f

    .line 528
    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/miui/internal/app/b;->dg:I

    goto :goto_51

    .line 530
    :cond_4f
    iput p1, p0, Lcom/miui/internal/app/b;->dg:I

    .line 532
    :goto_51
    iget-object p3, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget v1, p0, Lcom/miui/internal/app/b;->dg:I

    invoke-virtual {p3, v1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object p3

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    .line 534
    if-eqz p3, :cond_77

    invoke-virtual {p3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 535
    invoke-virtual {p3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    const v1, 0x102000a

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 536
    instance-of v1, p3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_77

    .line 537
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    .line 542
    :cond_77
    iget p3, p0, Lcom/miui/internal/app/b;->dg:I

    if-ne p3, p1, :cond_7f

    .line 543
    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p2, p3, p2

    .line 546
    :cond_7f
    move v5, p2

    iget-object p2, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    if-eqz p2, :cond_9e

    .line 547
    iget-object v2, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    .line 548
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/miui/internal/app/b;->dh:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget p2, p0, Lcom/miui/internal/app/b;->dg:I

    if-eq p2, p1, :cond_98

    .line 547
    move v6, p4

    goto :goto_9a

    .line 548
    :cond_98
    nop

    .line 547
    move v6, v0

    :goto_9a
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;IIFZ)V

    .line 551
    :cond_9e
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 555
    return-void
.end method
