.class Lcom/miui/internal/app/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    .line 59
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5

    .line 48
    iget-object p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result p2

    .line 49
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_27

    .line 50
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    if-ne v1, p1, :cond_24

    .line 51
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->b(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 52
    goto :goto_27

    .line 49
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 55
    :cond_27
    :goto_27
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    .line 44
    return-void
.end method
