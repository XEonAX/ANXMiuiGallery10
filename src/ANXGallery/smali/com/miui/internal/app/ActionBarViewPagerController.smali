.class public Lcom/miui/internal/app/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
    }
.end annotation


# instance fields
.field private bK:Lcom/miui/internal/app/ActionBarImpl;

.field private bL:Lmiui/view/ViewPager;

.field private bM:Landroid/view/View;

.field private bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field private bO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private bP:Landroid/app/ActionBar$TabListener;

.field private bQ:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

.field private bR:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
    .registers 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$1;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bP:Landroid/app/ActionBar$TabListener;

    .line 66
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    .line 67
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl;->j()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    sget v1, Lmiui/R$id;->view_pager:I

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    instance-of v2, v1, Lmiui/view/ViewPager;

    if-eqz v2, :cond_25

    .line 72
    check-cast v1, Lmiui/view/ViewPager;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    goto :goto_41

    .line 74
    :cond_25
    new-instance v1, Lmiui/view/ViewPager;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    .line 75
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    sget v2, Lmiui/R$id;->view_pager:I

    invoke-virtual {v1, v2}, Lmiui/view/ViewPager;->setId(I)V

    .line 76
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 77
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :goto_41
    new-instance p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    .line 81
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    new-instance p2, Lcom/miui/internal/app/ActionBarViewPagerController$2;

    invoke-direct {p2, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$2;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    invoke-virtual {p1, p2}, Lmiui/view/ViewPager;->setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;

    .line 118
    if-eqz p3, :cond_66

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_66

    .line 119
    new-instance p1, Lcom/miui/internal/app/b;

    iget-object p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p2, p3}, Lcom/miui/internal/app/b;-><init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 121
    :cond_66
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    return-object p0
.end method


# virtual methods
.method a(Landroid/app/Fragment;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(Landroid/app/Fragment;)I

    move-result p1

    .line 167
    if-ltz p1, :cond_d

    .line 168
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 170
    :cond_d
    return-void
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bP:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 131
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;I)V

    .line 132
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->a(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p1

    return p1
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 124
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bP:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 125
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;)V

    .line 126
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p1

    return p1
.end method

.method addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method c(I)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(I)V

    .line 137
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 138
    return-void
.end method

.method getFragmentAt(I)Landroid/app/Fragment;
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method getFragmentTabCount()I
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method getViewPagerOffscreenPageLimit()I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method removeAllFragmentTab()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->k()V

    .line 154
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->y()V

    .line 155
    return-void
.end method

.method removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bK:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;)V

    .line 149
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/ActionBar$Tab;)I

    .line 150
    return-void
.end method

.method removeFragmentTab(Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->e(Ljava/lang/String;)I

    move-result p1

    .line 142
    if-ltz p1, :cond_b

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(I)V

    .line 145
    :cond_b
    return-void
.end method

.method removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_9
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    .line 174
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_4f

    .line 175
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bQ:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    if-nez v0, :cond_45

    .line 176
    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bQ:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    .line 177
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bQ:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    const-string v1, "Value"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_50

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bR:Landroid/animation/ObjectAnimator;

    .line 178
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bR:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_40

    .line 179
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-virtual {v1}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_42

    .line 180
    :cond_40
    const-wide/16 v1, 0x0

    .line 178
    :goto_42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    :cond_45
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bQ:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->a(IZ)V

    .line 184
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bR:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 186
    :cond_4f
    return-void

    :array_50
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setViewPagerDecor(Landroid/view/View;)V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bM:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bM:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 213
    :cond_b
    if-eqz p1, :cond_1f

    .line 214
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bM:Landroid/view/View;

    .line 215
    new-instance p1, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {p1}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    .line 217
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bM:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lmiui/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_1f
    return-void
.end method

.method setViewPagerOffscreenPageLimit(I)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->bL:Lmiui/view/ViewPager;

    invoke-virtual {v0, p1}, Lmiui/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 207
    return-void
.end method
