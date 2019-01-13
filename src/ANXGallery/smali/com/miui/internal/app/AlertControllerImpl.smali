.class public Lcom/miui/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertController"

.field private static final cd:I = 0x300

.field private static final ce:Lmiui/reflect/Method;

.field private static final cf:I


# instance fields
.field private aR:Lmiui/app/ActionBar;

.field private cA:Landroid/os/Message;

.field private cB:Landroid/widget/ScrollView;

.field private cC:Landroid/content/DialogInterface;

.field private cD:Landroid/view/View$OnClickListener;

.field private cE:Z

.field private cF:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private cG:Landroid/view/Window$Callback;

.field private final cb:Ljava/lang/Runnable;

.field private final cg:I

.field private final ch:I

.field private final ci:I

.field private final cj:I

.field private final ck:I

.field private final cl:Landroid/view/Window;

.field private cm:Landroid/view/ViewGroup;

.field private cn:Landroid/widget/ListView;

.field private co:Lmiui/widget/EditableListViewWrapper;

.field private cp:Landroid/widget/TextView;

.field private cq:Landroid/widget/TextView;

.field private cr:Landroid/widget/Button;

.field private cs:Landroid/widget/Button;

.field private ct:Ljava/lang/CharSequence;

.field private cu:Landroid/os/Message;

.field private cv:Landroid/widget/Button;

.field private cw:Ljava/lang/CharSequence;

.field private cx:Landroid/os/Message;

.field private cy:Landroid/widget/Button;

.field private cz:Ljava/lang/CharSequence;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIsChecked:Z

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMessage:Ljava/lang/CharSequence;

.field private mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    invoke-static {}, Lcom/miui/internal/app/AlertControllerImpl;->t()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/AlertControllerImpl;->ce:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 9

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 163
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$1;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/View$OnClickListener;

    .line 183
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 336
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$2;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cb:Ljava/lang/Runnable;

    .line 936
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$6;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$6;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cF:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 949
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$7;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$7;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/view/Window$Callback;

    .line 226
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/content/DialogInterface;

    .line 228
    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    .line 229
    iget-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 232
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge p3, v2, :cond_56

    const-string p3, "ro.miui.notch"

    .line 233
    invoke-static {p3, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_56

    sget-object p3, Lcom/miui/internal/app/AlertControllerImpl;->ce:Lmiui/reflect/Method;

    if-eqz p3, :cond_56

    .line 234
    sget-object p3, Lcom/miui/internal/app/AlertControllerImpl;->ce:Lmiui/reflect/Method;

    const-class v2, Landroid/view/Window;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0x300

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p3, v2, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 236
    :cond_56
    new-instance p3, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    .line 238
    const/4 p2, 0x0

    sget-object p3, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 242
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    sget p3, Lcom/miui/internal/R$layout;->alert_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:I

    .line 244
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cg:I

    .line 247
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_multichoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ch:I

    .line 250
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget p3, Lmiui/R$layout;->select_dialog_singlechoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:I

    .line 253
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_item:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:I

    .line 257
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 7

    .line 585
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 587
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 589
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$dimen;->dialog_title_vertical_padding:I

    .line 593
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 594
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 595
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 597
    :cond_2b
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->dialog_title_horizontal_padding:I

    .line 598
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 600
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-eqz v3, :cond_46

    .line 601
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_47

    .line 603
    :cond_46
    move v3, v2

    :goto_47
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_55

    .line 604
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 606
    :cond_55
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 609
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    goto :goto_9e

    .line 613
    :cond_66
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 614
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_99

    .line 615
    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    .line 617
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8d

    .line 620
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 623
    :cond_8d
    iget p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    if-eqz p1, :cond_9e

    .line 624
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_9e

    .line 627
    :cond_99
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 630
    :cond_9e
    :goto_9e
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .registers 9

    .line 773
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b7

    .line 774
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 776
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    if-eqz v0, :cond_27

    .line 779
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 782
    :cond_27
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b6

    .line 783
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 785
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->dialog_custom_vertical_padding:I

    .line 786
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 788
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_47

    .line 789
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 790
    :cond_47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    move v2, v3

    goto :goto_52

    :cond_51
    move v2, v4

    :goto_52
    iput-boolean v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Z

    .line 792
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/miui/internal/R$dimen;->dialog_custom_horizontal_padding:I

    .line 793
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 795
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    if-eqz v5, :cond_6b

    .line 796
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    goto :goto_6c

    .line 798
    :cond_6b
    move v5, v2

    :goto_6c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    if-eqz v6, :cond_76

    .line 799
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 801
    :cond_76
    const v6, 0x102000d

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 802
    if-eqz v6, :cond_89

    instance-of v6, v6, Lmiui/widget/ProgressBar;

    if-nez v6, :cond_89

    .line 803
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 804
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Z

    goto :goto_b6

    .line 805
    :cond_89
    sget v6, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_ae

    sget v6, Lcom/miui/internal/R$id;->timePicker:I

    .line 806
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_ae

    sget v6, Lcom/miui/internal/R$id;->dateTimePicker:I

    .line 807
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_a2

    goto :goto_ae

    .line 812
    :cond_a2
    nop

    .line 813
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 812
    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 814
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_b6

    .line 808
    :cond_ae
    :goto_ae
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 809
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->x()V

    .line 810
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Z

    .line 817
    :cond_b6
    :goto_b6
    goto :goto_bc

    .line 818
    :cond_b7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 820
    :goto_bc
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .registers 7

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    .line 635
    :try_start_6
    const-class v0, Landroid/widget/TextView;

    const-string v1, "setBreakStrategy"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 636
    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    .line 638
    goto :goto_21

    .line 637
    :catch_20
    move-exception p1

    .line 640
    :cond_21
    :goto_21
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    .line 420
    iget-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    goto :goto_14

    .line 423
    :cond_9
    instance-of p2, p1, Lcom/miui/internal/widget/SingleCenterTextView;

    if-eqz p2, :cond_13

    .line 424
    check-cast p1, Lcom/miui/internal/widget/SingleCenterTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/SingleCenterTextView;->setEnableSingleCenter(Z)V

    .line 426
    :cond_13
    return-void

    .line 421
    :cond_14
    :goto_14
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .registers 5

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 262
    return v1

    .line 265
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 266
    return v2

    .line 269
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 271
    :cond_14
    if-lez v0, :cond_23

    .line 272
    add-int/lit8 v0, v0, -0x1

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 274
    invoke-static {v3}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 275
    return v1

    .line 279
    :cond_23
    return v2
.end method

.method private a(Landroid/widget/TextView;)Z
    .registers 4

    .line 926
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 927
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 928
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 929
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    if-lez p1, :cond_19

    .line 930
    return v1

    .line 933
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    .line 367
    iget v2, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    iget-object v3, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v4, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 368
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    goto :goto_6

    .line 370
    :cond_26
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/os/Message;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .registers 6

    .line 643
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    .line 645
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 648
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v2, Lmiui/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    .line 649
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    if-nez v0, :cond_23

    .line 650
    return-void

    .line 653
    :cond_23
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    if-eqz v0, :cond_69

    .line 654
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;I)V

    .line 655
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_67

    .line 662
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_message_without_title_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 664
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 664
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 667
    :cond_67
    goto/16 :goto_ee

    .line 668
    :cond_69
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 671
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    if-eqz v0, :cond_eb

    .line 672
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->w()V

    .line 674
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 675
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 681
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->x()V

    .line 685
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    if-eqz v0, :cond_d5

    .line 686
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 687
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 689
    :try_start_b5
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$drawable;->dialog_title_bg_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_c4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b5 .. :try_end_c4} :catch_c5

    .line 693
    goto :goto_c6

    .line 691
    :catch_c5
    move-exception v0

    .line 695
    :goto_c6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 696
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 695
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 699
    :cond_d5
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    if-eqz p1, :cond_ee

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result p1

    if-nez p1, :cond_ee

    .line 700
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$style;->TextAppearance_DialogTitle_SimpleList:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_ee

    .line 703
    :cond_eb
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    :cond_ee
    :goto_ee
    return-void
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 834
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 835
    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 836
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 837
    goto :goto_21

    .line 838
    :cond_1c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 840
    :goto_21
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 2

    .line 375
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .registers 10

    .line 843
    nop

    .line 844
    nop

    .line 845
    nop

    .line 847
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    .line 848
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    .line 849
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 851
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_43

    .line 853
    :cond_2b
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    nop

    .line 856
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v0

    .line 857
    nop

    .line 861
    move v5, v0

    move v0, v2

    move v4, v0

    goto :goto_46

    :cond_43
    :goto_43
    move v0, v3

    move v4, v0

    move v5, v4

    :goto_46
    const v6, 0x102001a

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    .line 862
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    if-eqz v6, :cond_80

    .line 863
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    iget-object v7, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 865
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_80

    .line 867
    :cond_6a
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 869
    nop

    .line 870
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v5

    .line 871
    add-int/lit8 v0, v0, 0x1

    .line 875
    move v4, v2

    :cond_80
    :goto_80
    const v6, 0x102001b

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    .line 876
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    if-eqz v6, :cond_ba

    .line 877
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    iget-object v7, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 879
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ba

    .line 881
    :cond_a4
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 883
    nop

    .line 884
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v5

    .line 885
    add-int/lit8 v0, v0, 0x1

    .line 889
    move v4, v2

    :cond_ba
    :goto_ba
    if-eqz v4, :cond_11f

    .line 890
    sget v1, Lcom/miui/internal/R$id;->buttonGroup:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 893
    if-nez v5, :cond_c9

    const/4 v1, 0x2

    if-le v0, v1, :cond_103

    .line 895
    :cond_c9
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 896
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 899
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    const/4 v1, -0x1

    if-eqz v0, :cond_e1

    .line 900
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 901
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 902
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    :cond_e1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    if-eqz v0, :cond_f2

    .line 905
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 906
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 907
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    :cond_f2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    if-eqz v0, :cond_103

    .line 910
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 911
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    :cond_103
    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Z

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11e

    .line 917
    :cond_10f
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 918
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    .line 917
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 920
    :cond_11e
    goto :goto_122

    .line 921
    :cond_11f
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 923
    :goto_122
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Lmiui/widget/EditableListViewWrapper;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/widget/Button;

    return-object p0
.end method

.method private setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    .line 350
    return-void

    .line 353
    :cond_5
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 354
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_12

    .line 355
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cF:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 357
    :cond_12
    return-void
.end method

.method private static t()Lmiui/reflect/Method;
    .registers 3

    .line 73
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_a
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 74
    :catch_b
    move-exception v0

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method private u()V
    .registers 6

    .line 294
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_80

    .line 295
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 296
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 297
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 300
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    .line 302
    const/4 v2, 0x1

    if-eqz v1, :cond_49

    .line 303
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 304
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 305
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 307
    sget v3, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContextView;

    .line 309
    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 310
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 311
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 315
    :cond_49
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 316
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:I

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 318
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 322
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/content/DialogInterface;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    .line 323
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 325
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 326
    goto :goto_99

    .line 327
    :cond_80
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ck:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 329
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_99

    .line 330
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 331
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 334
    :cond_99
    :goto_99
    return-void
.end method

.method private v()V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 551
    if-eqz v0, :cond_f

    .line 552
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/ViewGroup;)V

    .line 556
    :cond_f
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 558
    if-eqz v0, :cond_1e

    .line 559
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/view/ViewGroup;)V

    .line 563
    :cond_1e
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 565
    if-eqz v0, :cond_2d

    .line 566
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/FrameLayout;)V

    .line 570
    :cond_2d
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->checkboxPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 572
    if-eqz v0, :cond_3c

    .line 573
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/widget/FrameLayout;)V

    .line 577
    :cond_3c
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 579
    if-eqz v0, :cond_4b

    .line 580
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->c(Landroid/view/ViewGroup;)V

    .line 582
    :cond_4b
    return-void
.end method

.method private w()V
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_98

    .line 711
    const/4 v1, 0x2

    if-ne v0, v1, :cond_91

    .line 712
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->cancel:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 713
    if-eqz v1, :cond_21

    .line 714
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/AlertControllerImpl$3;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    :cond_21
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->select:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 723
    if-eqz v1, :cond_37

    .line 724
    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/widget/Button;

    .line 725
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$4;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/app/AlertControllerImpl$4;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    :cond_37
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/widget/Button;

    if-eqz v1, :cond_89

    .line 737
    new-instance v1, Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    invoke-direct {v1, v2}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Lmiui/widget/EditableListViewWrapper;

    .line 738
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 739
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Lmiui/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 740
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/app/AlertControllerImpl$5;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    if-eqz v0, :cond_76

    .line 752
    const/4 v0, 0x0

    :goto_65
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_76

    .line 753
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 756
    :cond_76
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 757
    sget v1, Lmiui/R$string;->deselect_all:I

    goto :goto_85

    :cond_83
    sget v1, Lmiui/R$string;->select_all:I

    .line 756
    :goto_85
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 758
    goto :goto_90

    .line 759
    :cond_89
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 761
    :goto_90
    goto :goto_98

    .line 762
    :cond_91
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 766
    :cond_98
    :goto_98
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_ac

    .line 767
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 768
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 770
    :cond_ac
    return-void
.end method

.method private x()V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 824
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_title_average_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    .line 827
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 826
    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 829
    :cond_21
    return-void
.end method


# virtual methods
.method createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    .line 360
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 362
    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 2

    .line 513
    packed-switch p1, :pswitch_data_e

    .line 521
    const/4 p1, 0x0

    return-object p1

    .line 515
    :pswitch_5
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:Landroid/widget/Button;

    return-object p1

    .line 517
    :pswitch_8
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/Button;

    return-object p1

    .line 519
    :pswitch_b
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/Button;

    return-object p1

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getCheckedItems()[Z
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-object v0
.end method

.method public getDialogInterface()Landroid/content/DialogInterface;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public getListItemLayout()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:I

    return v0
.end method

.method public getListLayout()I
    .registers 2

    .line 477
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cg:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMultiChoiceItemLayout()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ch:I

    return v0
.end method

.method public getSingleChoiceItemLayout()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ci:I

    return v0
.end method

.method public installContent()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 288
    :cond_13
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->u()V

    .line 289
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cl:Landroid/view/Window;

    sget v1, Lcom/miui/internal/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    .line 290
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->v()V

    .line 291
    return-void
.end method

.method public isChecked()Z
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Landroid/view/ViewGroup;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 539
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 544
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 380
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_f

    .line 381
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 383
    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 388
    return-void
.end method

.method public setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    .line 465
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    .line 531
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 5

    .line 438
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 439
    iget-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 442
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 459
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :pswitch_15
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Ljava/lang/CharSequence;

    .line 445
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/os/Message;

    .line 446
    goto :goto_24

    .line 449
    :pswitch_1a
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Ljava/lang/CharSequence;

    .line 450
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/os/Message;

    .line 451
    goto :goto_24

    .line 454
    :pswitch_1f
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Ljava/lang/CharSequence;

    .line 455
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/os/Message;

    .line 456
    nop

    .line 461
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .registers 3

    .line 433
    iput-boolean p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    .line 434
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 435
    return-void
.end method

.method public setCheckedItem(I)V
    .registers 2

    .line 534
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 535
    return-void
.end method

.method public setCheckedItems([Z)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    .line 498
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    .line 409
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 396
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 397
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 398
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 392
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 393
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cn:Landroid/widget/ListView;

    .line 474
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 412
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    .line 413
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 414
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 417
    :cond_10
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 401
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    .line 402
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 403
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_b
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    .line 430
    return-void
.end method
