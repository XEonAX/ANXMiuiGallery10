.class public Lmiui/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private SF:Z

.field private SJ:Lmiui/widget/FilterSortView;

.field private Sz:Z

.field private sE:Landroid/widget/ImageView;

.field private vp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->filter_sort_tab_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vp:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/miui/internal/R$id;->arrow:I

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sE:Landroid/widget/ImageView;

    .line 136
    if-eqz p2, :cond_3d

    .line 137
    sget-object v0, Lcom/miui/internal/R$styleable;->FilterSortView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    sget p2, Lcom/miui/internal/R$styleable;->FilterSortView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 139
    sget p3, Lcom/miui/internal/R$styleable;->FilterSortView_descending:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-direct {p0, p2, p3}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    .line 144
    :cond_3d
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .registers 5

    .line 147
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setGravity(I)V

    .line 148
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_18

    .line 149
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_18
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, p2}, Lmiui/widget/FilterSortView$TabView;->w(Z)V

    .line 154
    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V
    .registers 3

    .line 110
    invoke-direct {p0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 110
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->v(Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->Sz:Z

    return p0
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 110
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->w(Z)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->SF:Z

    return p0
.end method

.method private v(Z)V
    .registers 7

    .line 162
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiui/widget/FilterSortView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->SJ:Lmiui/widget/FilterSortView;

    .line 163
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->SJ:Lmiui/widget/FilterSortView;

    if-eqz v0, :cond_2c

    .line 164
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->SJ:Lmiui/widget/FilterSortView;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView;->getChildCount()I

    move-result v0

    .line 165
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_2c

    .line 166
    iget-object v3, p0, Lmiui/widget/FilterSortView$TabView;->SJ:Lmiui/widget/FilterSortView;

    invoke-virtual {v3, v2}, Lmiui/widget/FilterSortView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/FilterSortView$TabView;

    .line 167
    if-eq v3, p0, :cond_29

    iget-boolean v4, v3, Lmiui/widget/FilterSortView$TabView;->Sz:Z

    if-eqz v4, :cond_29

    .line 168
    invoke-direct {v3, v1}, Lmiui/widget/FilterSortView$TabView;->v(Z)V

    .line 165
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 173
    :cond_2c
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->Sz:Z

    .line 174
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    return-void
.end method

.method private w(Z)V
    .registers 3

    .line 184
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->SF:Z

    .line 185
    if-eqz p1, :cond_b

    .line 186
    iget-object p1, p0, Lmiui/widget/FilterSortView$TabView;->sE:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_12

    .line 188
    :cond_b
    iget-object p1, p0, Lmiui/widget/FilterSortView$TabView;->sE:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 190
    :goto_12
    return-void
.end method


# virtual methods
.method public isDescending()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->SF:Z

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 203
    new-instance v0, Lmiui/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$1;-><init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method
