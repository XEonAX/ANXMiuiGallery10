.class public Lmiui/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final OF:I = 0x38

.field private static final OG:I = 0x20

.field private static final uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;


# instance fields
.field private OH:Landroid/graphics/drawable/Drawable;

.field private OI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/AnimatedImageView;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private bM()V
    .registers 4

    .line 38
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    .line 41
    :cond_9
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 43
    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object v1, Lmiui/widget/AnimatedImageView;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x38

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 46
    sget-object v1, Lmiui/widget/AnimatedImageView;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_31

    .line 48
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    .line 50
    :goto_31
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->ee()V

    .line 51
    return-void
.end method

.method private ee()V
    .registers 2

    .line 54
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 55
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lmiui/widget/AnimatedImageView;->OI:Z

    if-eqz v0, :cond_12

    .line 56
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->start()V

    goto :goto_15

    .line 58
    :cond_12
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    .line 61
    :cond_15
    :goto_15
    return-void
.end method

.method private start()V
    .registers 3

    .line 99
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 100
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    sget-object v0, Lmiui/widget/AnimatedImageView;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->start(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_1d
    return-void
.end method

.method private stop()V
    .registers 3

    .line 107
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 108
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 109
    sget-object v0, Lmiui/widget/AnimatedImageView;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->stop(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1d
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 78
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->ee()V

    .line 79
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 83
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 84
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->ee()V

    .line 85
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 95
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->ee()V

    .line 96
    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lmiui/widget/AnimatedImageView;->OI:Z

    .line 89
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->ee()V

    .line 90
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->bM()V

    .line 67
    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->bM()V

    .line 73
    return-void
.end method
