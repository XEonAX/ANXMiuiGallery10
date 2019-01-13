.class Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private bT:Z

.field private mPosition:I


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(IZ)V
    .registers 3

    .line 226
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 227
    iput-boolean p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bT:Z

    .line 228
    return-void
.end method

.method public setValue(F)V
    .registers 8

    .line 231
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 232
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 233
    instance-of v2, v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_30

    .line 234
    iget v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bT:Z

    iget-boolean v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bT:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    .line 236
    :cond_30
    goto :goto_12

    .line 238
    :cond_31
    return-void
.end method
