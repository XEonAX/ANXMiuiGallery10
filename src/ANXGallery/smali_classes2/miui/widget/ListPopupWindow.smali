.class public Lmiui/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ListPopupWindow$PopupScrollListener;,
        Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiui/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiui/widget/ListPopupWindow$ListSelectorHider;,
        Lmiui/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiui/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field private static final TP:I = 0xfa

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private Mq:Landroid/graphics/Rect;

.field private TF:Landroid/database/DataSetObserver;

.field private final TQ:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

.field private final TS:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

.field private final TU:Lmiui/widget/ListPopupWindow$PopupScrollListener;

.field private final TX:Lmiui/widget/ListPopupWindow$ListSelectorHider;

.field TY:I

.field private Ua:Lmiui/widget/ArrowPopupWindow;

.field private Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

.field private Uc:I

.field private Ud:I

.field private Ue:I

.field private Uf:I

.field private Ug:Z

.field private Uh:Z

.field private Ui:Z

.field private Uj:Landroid/view/View;

.field private Uk:I

.field private Ul:Landroid/view/View;

.field private Um:Landroid/graphics/drawable/Drawable;

.field private Un:Landroid/widget/AdapterView$OnItemClickListener;

.field private Uo:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private Up:Ljava/lang/Runnable;

.field private Uq:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 164
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 175
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->TQ:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    .line 105
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->TS:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->TU:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    .line 109
    new-instance v0, Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->TX:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    .line 111
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/widget/ListPopupWindow;->TY:I

    .line 121
    const/4 v0, -0x2

    iput v0, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    .line 123
    iput v0, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    .line 133
    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Ui:Z

    .line 137
    iput v0, p0, Lmiui/widget/ListPopupWindow;->Uk:I

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    .line 189
    return-void
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;
    .registers 1

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method static synthetic b(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;
    .registers 1

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 1

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->TQ:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 1

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private eV()V
    .registers 3

    .line 599
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 600
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 601
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 602
    check-cast v0, Landroid/view/ViewGroup;

    .line 603
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 606
    :cond_15
    return-void
.end method

.method private eW()I
    .registers 13

    .line 901
    nop

    .line 903
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_c2

    .line 904
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 912
    new-instance v5, Lmiui/widget/ListPopupWindow$1;

    invoke-direct {v5, p0}, Lmiui/widget/ListPopupWindow$1;-><init>(Lmiui/widget/ListPopupWindow;)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->Up:Ljava/lang/Runnable;

    .line 922
    new-instance v5, Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-boolean v6, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    xor-int/2addr v6, v3

    invoke-direct {v5, v0, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 923
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Um:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_28

    .line 924
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Um:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 926
    :cond_28
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 927
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Un:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 928
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 929
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 930
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    new-instance v6, Lmiui/widget/ListPopupWindow$2;

    invoke-direct {v6, p0}, Lmiui/widget/ListPopupWindow$2;-><init>(Lmiui/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 946
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->TU:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 948
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uo:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_5c

    .line 949
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uo:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 952
    :cond_5c
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 954
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    .line 955
    if-eqz v6, :cond_bb

    .line 958
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 959
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 961
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 963
    iget v8, p0, Lmiui/widget/ListPopupWindow;->Uk:I

    packed-switch v8, :pswitch_data_176

    .line 975
    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid hint position "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lmiui/widget/ListPopupWindow;->Uk:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 965
    :pswitch_8f
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    goto :goto_9d

    .line 970
    :pswitch_96
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 971
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    nop

    .line 981
    :goto_9d
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 982
    nop

    .line 983
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 985
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    .line 989
    nop

    .line 992
    move v0, v5

    move-object v5, v7

    goto :goto_bc

    :cond_bb
    move v0, v4

    :goto_bc
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6, v5}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 993
    goto :goto_d9

    .line 994
    :cond_c2
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    .line 995
    if-eqz v0, :cond_d8

    .line 996
    nop

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 998
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_d9

    .line 1005
    :cond_d8
    move v0, v4

    .line 1006
    :goto_d9
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v5}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1007
    if-eqz v5, :cond_fb

    .line 1008
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1009
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 1013
    iget-boolean v6, p0, Lmiui/widget/ListPopupWindow;->Ug:Z

    if-nez v6, :cond_101

    .line 1014
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    goto :goto_101

    .line 1017
    :cond_fb
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1021
    move v5, v4

    :cond_101
    :goto_101
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    .line 1022
    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10b

    goto :goto_10c

    .line 1023
    :cond_10b
    move v3, v4

    .line 1024
    :goto_10c
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    .line 1023
    invoke-virtual {p0, v4, v6, v3}, Lmiui/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 1026
    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    if-nez v4, :cond_174

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    if-ne v4, v2, :cond_11f

    goto :goto_174

    .line 1031
    :cond_11f
    iget v2, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_17e

    .line 1045
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1049
    :goto_12c
    move v7, v1

    goto :goto_164

    .line 1039
    :pswitch_12e
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v6

    sub-int/2addr v1, v2

    .line 1039
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1043
    goto :goto_12c

    .line 1033
    :pswitch_149
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1034
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    sub-int/2addr v2, v4

    .line 1033
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1037
    goto :goto_12c

    .line 1049
    :goto_164
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(IIIII)I

    move-result v1

    .line 1053
    if-lez v1, :cond_172

    .line 1054
    add-int/2addr v0, v5

    .line 1057
    :cond_172
    add-int/2addr v1, v0

    return v1

    .line 1027
    :cond_174
    :goto_174
    add-int/2addr v3, v5

    return v3

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_96
        :pswitch_8f
    .end packed-switch

    :pswitch_data_17e
    .packed-switch -0x2
        :pswitch_149
        :pswitch_12e
    .end packed-switch
.end method


# virtual methods
.method aq(I)V
    .registers 2

    .line 761
    iput p1, p0, Lmiui/widget/ListPopupWindow;->TY:I

    .line 762
    return-void
.end method

.method public clearListSelection()V
    .registers 3

    .line 652
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 653
    if-eqz v0, :cond_b

    .line 655
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 657
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 659
    :cond_b
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 577
    return-void
.end method

.method public dismiss(Z)V
    .registers 3

    .line 583
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 584
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eV()V

    .line 585
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 586
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->TQ:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    .line 372
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ul:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    .line 354
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 336
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 458
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 389
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Ue:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .line 614
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 751
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 8

    .line 1078
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1079
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1081
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1082
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1084
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1085
    if-eqz p3, :cond_20

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1087
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1089
    :cond_20
    const/4 p3, 0x1

    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 1090
    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 1093
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1094
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_51

    .line 1095
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1096
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 1099
    :cond_51
    return p1
.end method

.method public getPopupWindow()Lmiui/widget/ArrowPopupWindow;
    .registers 2

    .line 195
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    .line 227
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Uk:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    .line 701
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 702
    const/4 v0, 0x0

    return-object v0

    .line 704
    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    .line 727
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 728
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 730
    :cond_9
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .line 714
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 715
    const/4 v0, -0x1

    return v0

    .line 717
    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .line 740
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 741
    const/4 v0, 0x0

    return-object v0

    .line 743
    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .registers 2

    .line 307
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 405
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Ug:Z

    if-nez v0, :cond_6

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_6
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 425
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .line 673
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isModal()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 665
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14

    .line 777
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    .line 783
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a4

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 784
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x42

    if-gez v0, :cond_1b

    if-eq p1, v3, :cond_a4

    if-eq p1, v2, :cond_a4

    .line 787
    :cond_1b
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 790
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4}, Lmiui/widget/ArrowPopupWindow;->isAboveAnchor()Z

    move-result v4

    .line 792
    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 795
    const v7, 0x7fffffff

    .line 796
    const/high16 v8, -0x80000000

    .line 798
    if-eqz v6, :cond_55

    .line 799
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 800
    if-eqz v7, :cond_3a

    .line 802
    move v8, v1

    goto :goto_40

    .line 801
    :cond_3a
    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v8, v1, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v8

    .line 802
    :goto_40
    if-eqz v7, :cond_48

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_53

    .line 803
    :cond_48
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    .line 806
    :goto_53
    move v7, v8

    goto :goto_56

    :cond_55
    move v6, v8

    :goto_56
    const/16 v8, 0x13

    if-eqz v4, :cond_5e

    if-ne p1, v8, :cond_5e

    if-le v0, v7, :cond_66

    :cond_5e
    const/16 v9, 0x14

    if-nez v4, :cond_72

    if-ne p1, v9, :cond_72

    if-lt v0, v6, :cond_72

    .line 810
    :cond_66
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 811
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1, v5}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 812
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 813
    return v5

    .line 817
    :cond_72
    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v10, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 820
    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    .line 825
    if-eqz p2, :cond_96

    .line 828
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 833
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 834
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 836
    if-eq p1, v2, :cond_95

    if-eq p1, v3, :cond_95

    packed-switch p1, :pswitch_data_a6

    goto :goto_a4

    .line 843
    :cond_95
    :pswitch_95
    return v5

    .line 846
    :cond_96
    if-eqz v4, :cond_9d

    if-ne p1, v9, :cond_9d

    .line 849
    if-ne v0, v6, :cond_a4

    .line 850
    return v5

    .line 852
    :cond_9d
    if-nez v4, :cond_a4

    if-ne p1, v8, :cond_a4

    if-ne v0, v7, :cond_a4

    .line 854
    return v5

    .line 860
    :cond_a4
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x13
        :pswitch_95
        :pswitch_95
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 875
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_24

    .line 876
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    .line 877
    if-eqz p2, :cond_23

    .line 878
    const/16 v0, 0x17

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1f

    goto :goto_23

    .line 884
    :cond_1f
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 888
    :cond_23
    :goto_23
    return p2

    .line 890
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(I)Z
    .registers 9

    .line 685
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 686
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Un:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_24

    .line 687
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 688
    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 689
    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Un:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 692
    :cond_24
    const/4 p1, 0x1

    return p1

    .line 694
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public postShow()V
    .registers 3

    .line 513
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Up:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->TF:Landroid/database/DataSetObserver;

    if-nez v0, :cond_d

    .line 206
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->TF:Landroid/database/DataSetObserver;

    goto :goto_18

    .line 207
    :cond_d
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_18

    .line 208
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->TF:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 210
    :cond_18
    :goto_18
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 211
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_23

    .line 212
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->TF:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_23
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz p1, :cond_2e

    .line 216
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_2e
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Ul:Landroid/view/View;

    .line 383
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3

    .line 363
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setAnimationStyle(I)V

    .line 364
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 345
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    .line 445
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_1a

    .line 447
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Mq:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    goto :goto_1d

    .line 450
    :cond_1a
    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->setWidth(I)V

    .line 452
    :goto_1d
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    .line 298
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Ui:Z

    .line 274
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 467
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    .line 468
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    .line 398
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Ue:I

    .line 399
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3

    .line 629
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 630
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Um:Landroid/graphics/drawable/Drawable;

    .line 330
    return-void
.end method

.method public setModal(Z)V
    .registers 3

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    .line 262
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 263
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 595
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 596
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 478
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Un:Landroid/widget/AdapterView$OnItemClickListener;

    .line 479
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uo:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 490
    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2

    .line 240
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Uk:I

    .line 241
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3

    .line 499
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 500
    if-eqz v0, :cond_9

    .line 501
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eV()V

    .line 503
    :cond_9
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uj:Landroid/view/View;

    .line 504
    if-eqz v0, :cond_10

    .line 505
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 507
    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4

    .line 638
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 639
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 640
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 641
    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 642
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 643
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 646
    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3

    .line 320
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 321
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    .line 417
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    .line 418
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Ug:Z

    .line 419
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 435
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    .line 436
    return-void
.end method

.method public show()V
    .registers 12

    .line 521
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eW()I

    move-result v0

    .line 523
    nop

    .line 524
    nop

    .line 526
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    .line 527
    goto :goto_26

    .line 529
    :cond_d
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    if-ne v1, v2, :cond_1f

    .line 530
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_26

    .line 532
    :cond_1f
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Ud:I

    invoke-virtual {v1, v4}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 536
    :goto_26
    const/4 v9, -0x1

    iget v1, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    if-ne v1, v3, :cond_2c

    .line 537
    goto :goto_3d

    .line 539
    :cond_2c
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    if-ne v1, v2, :cond_36

    .line 540
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_3d

    .line 542
    :cond_36
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    iget v1, p0, Lmiui/widget/ListPopupWindow;->Uc:I

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 546
    :goto_3d
    const/4 v10, -0x1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 547
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6a

    .line 548
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->Ui:Z

    if-nez v3, :cond_58

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    if-nez v3, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 550
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lmiui/widget/ListPopupWindow;->Ue:I

    iget v8, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    invoke-virtual/range {v5 .. v10}, Lmiui/widget/ArrowPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_b1

    .line 553
    :cond_6a
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, v9, v10}, Lmiui/widget/ArrowPopupWindow;->setWindowLayoutMode(II)V

    .line 557
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Ui:Z

    if-nez v4, :cond_7a

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Uh:Z

    if-nez v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 558
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->TS:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 559
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ua:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ListPopupWindow;->Ue:I

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Uf:I

    invoke-virtual {v0, v1, v2, v4}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 561
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 563
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 564
    :cond_a3
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 566
    :cond_a6
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    if-nez v0, :cond_b1

    .line 567
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->TX:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    :cond_b1
    :goto_b1
    return-void
.end method
