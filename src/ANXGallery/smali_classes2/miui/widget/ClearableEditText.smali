.class public Lmiui/widget/ClearableEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ClearableEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private OH:Landroid/graphics/drawable/Drawable;

.field private PP:Z

.field private PQ:Z

.field private PU:Lmiui/widget/ClearableEditText$AccessHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 51
    sget v0, Lcom/miui/internal/R$attr;->editTextSearchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 58
    const/4 p2, 0x0

    aget-object p2, p1, p2

    if-nez p2, :cond_3a

    const/4 p2, 0x1

    aget-object p2, p1, p2

    if-nez p2, :cond_3a

    const/4 p2, 0x2

    aget-object p3, p1, p2

    if-eqz p3, :cond_3a

    const/4 p3, 0x3

    aget-object p3, p1, p3

    if-nez p3, :cond_3a

    .line 61
    aget-object p1, p1, p2

    iput-object p1, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    .line 63
    new-instance p1, Lmiui/widget/ClearableEditText$1;

    invoke-direct {p1, p0}, Lmiui/widget/ClearableEditText$1;-><init>(Lmiui/widget/ClearableEditText;)V

    invoke-virtual {p0, p1}, Lmiui/widget/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_39

    .line 84
    new-instance p1, Lmiui/widget/ClearableEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lmiui/widget/ClearableEditText$AccessHelper;-><init>(Lmiui/widget/ClearableEditText;Landroid/view/View;)V

    iput-object p1, p0, Lmiui/widget/ClearableEditText;->PU:Lmiui/widget/ClearableEditText$AccessHelper;

    .line 85
    iget-object p1, p0, Lmiui/widget/ClearableEditText;->PU:Lmiui/widget/ClearableEditText$AccessHelper;

    invoke-virtual {p0, p1}, Lmiui/widget/ClearableEditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 87
    :cond_39
    return-void

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClearableEditText need only drawableEnd"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lmiui/widget/ClearableEditText;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    return p0
.end method

.method static synthetic a(Lmiui/widget/ClearableEditText;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/ClearableEditText;->PU:Lmiui/widget/ClearableEditText$AccessHelper;

    return-object p0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 3

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 168
    :pswitch_b
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lmiui/widget/ClearableEditText;->PP:Z

    if-eqz p1, :cond_2e

    .line 169
    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->eo()V

    goto :goto_2e

    .line 174
    :pswitch_19
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    if-eqz p1, :cond_2e

    .line 175
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->PP:Z

    goto :goto_2e

    .line 180
    :cond_27
    iget-boolean p1, p0, Lmiui/widget/ClearableEditText;->PP:Z

    if-eqz p1, :cond_2e

    .line 181
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->PP:Z

    .line 184
    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic c(Lmiui/widget/ClearableEditText;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->eo()V

    return-void
.end method

.method static synthetic d(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private eo()V
    .registers 2

    .line 187
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmiui/widget/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->PU:Lmiui/widget/ClearableEditText$AccessHelper;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->PU:Lmiui/widget/ClearableEditText$AccessHelper;

    .line 193
    invoke-virtual {v0, p1}, Lmiui/widget/ClearableEditText$AccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 194
    const/4 p1, 0x1

    return p1

    .line 196
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 109
    nop

    .line 110
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 111
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3d

    .line 113
    nop

    .line 121
    :goto_21
    move v0, v1

    goto :goto_3e

    .line 116
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3d

    .line 117
    goto :goto_21

    .line 121
    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_44

    .line 122
    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText;->c(Landroid/view/MotionEvent;)V

    .line 123
    return v1

    .line 126
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 140
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 142
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 143
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getDrawableState()[I

    move-result-object v0

    .line 146
    iget-object v1, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 148
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->invalidate()V

    .line 150
    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 159
    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    .line 160
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 163
    :cond_c
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    .line 131
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 132
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->PQ:Z

    if-nez v0, :cond_f

    .line 133
    sget-object v0, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    invoke-static {p1, v0}, Lmiui/widget/ClearableEditText;->mergeDrawableStates([I[I)[I

    .line 135
    :cond_f
    return-object p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 91
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-nez p4, :cond_c

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void

    .line 92
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 100
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    if-eqz p3, :cond_e

    if-nez p4, :cond_e

    .line 103
    iput-object p3, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void

    .line 101
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClearableEditText can only set drawableRight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 154
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->OH:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
