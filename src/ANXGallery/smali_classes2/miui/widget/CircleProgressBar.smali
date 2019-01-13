.class public Lmiui/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final Pp:I = 0xa

.field private static final Pq:I = 0x12c

.field private static final Pr:I = 0x12c


# instance fields
.field private PB:I

.field private PC:Landroid/graphics/Bitmap;

.field private PD:Landroid/graphics/Canvas;

.field private PI:I

.field private PJ:I

.field private PN:I

.field private PO:Landroid/graphics/drawable/Drawable;

.field private Ps:Landroid/graphics/RectF;

.field private Pt:Landroid/graphics/Path;

.field private Pu:Landroid/animation/Animator;

.field private Pv:[I

.field private Pw:[Landroid/graphics/drawable/Drawable;

.field private Px:[Landroid/graphics/drawable/Drawable;

.field private Py:[Landroid/graphics/drawable/Drawable;

.field private Pz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

.field private rb:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Pt:Landroid/graphics/Path;

    .line 61
    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/CircleProgressBar;->PN:I

    .line 74
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/widget/CircleProgressBar;->setIndeterminate(Z)V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .registers 16

    .line 331
    if-eqz p2, :cond_8

    .line 332
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_75

    .line 338
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    .line 339
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    const/4 v6, 0x0

    const/16 v7, 0x1f

    .line 338
    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 342
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 344
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->Pt:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 345
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->Pt:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ps:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    mul-float/2addr p5, v0

    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 346
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->Pt:Landroid/graphics/Path;

    iget-object p5, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 347
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e9

    .line 354
    :cond_75
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/Bitmap;

    if-nez p2, :cond_9a

    .line 355
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 356
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 355
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/Bitmap;

    .line 357
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    .line 360
    :cond_9a
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 361
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 362
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->Ps:Landroid/graphics/RectF;

    const/high16 v5, -0x3d4c0000    # -90.0f

    mul-float v6, v0, p5

    const/4 v7, 0x1

    iget-object v8, p0, Lmiui/widget/CircleProgressBar;->rb:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 364
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 365
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 368
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    :goto_e9
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PO:Landroid/graphics/drawable/Drawable;

    .line 373
    if-eqz p2, :cond_13c

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 376
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    .line 377
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 378
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 379
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 380
    div-int/lit8 v1, v1, 0x2

    sub-int v0, p4, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p5, v2

    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {p2, v0, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 386
    :cond_13c
    if-eqz p3, :cond_144

    .line 387
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 388
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    :cond_144
    return-void
.end method

.method private ai(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 175
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_a
    return-object p1
.end method

.method private aj(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 179
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Px:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Px:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_a
    return-object p1
.end method

.method private ak(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 183
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_a
    return-object p1
.end method

.method private al(I)I
    .registers 3

    .line 237
    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PN:I

    div-int/2addr p1, v0

    return p1
.end method

.method private b([I)[Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 161
    if-nez p1, :cond_4

    .line 162
    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    array-length v2, p1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 166
    move v3, v1

    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_30

    .line 167
    aget v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    aget-object v4, v2, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    aget-object v6, v2, v3

    .line 169
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 168
    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 171
    :cond_30
    return-object v2
.end method

.method private en()F
    .registers 3

    .line 288
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getIntrinsicHeight()I
    .registers 4

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 302
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    .line 303
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 304
    :cond_19
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    .line 305
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 306
    :cond_29
    return v1
.end method

.method private getIntrinsicWidth()I
    .registers 4

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 293
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    .line 294
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 295
    :cond_19
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    .line 296
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    :cond_29
    return v1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .line 242
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 243
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v0

    .line 244
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_3a

    .line 245
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 246
    :cond_19
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Px:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Px:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 247
    :cond_28
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 244
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 249
    :cond_3a
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 250
    return-void
.end method

.method public getPrevAlpha()I
    .registers 2

    .line 406
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PJ:I

    return v0
.end method

.method public getProgressLevelCount()I
    .registers 3

    .line 93
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    array-length v0, v0

    add-int/2addr v1, v0

    :goto_a
    return v1
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    monitor-enter p0

    .line 317
    :try_start_1
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PB:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ai(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PB:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PB:I

    .line 318
    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->en()F

    move-result v6

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PJ:I

    rsub-int v7, v0, 0xff

    .line 317
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 322
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PJ:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_43

    .line 323
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PI:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ai(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PI:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PI:I

    .line 324
    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->en()F

    move-result v6

    iget v7, p0, Lmiui/widget/CircleProgressBar;->PJ:I

    .line 323
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 326
    :cond_43
    monitor-exit p0

    return-void

    .line 316
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 3

    monitor-enter p0

    .line 311
    :try_start_1
    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result p1

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiui/widget/CircleProgressBar;->setMeasuredDimension(II)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 312
    monitor-exit p0

    return-void

    .line 310
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawablesForLevels([I[I[I)V
    .registers 4

    .line 156
    invoke-direct {p0, p1}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 157
    invoke-direct {p0, p3}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 104
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Pw:[Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->Px:[Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p3, p0, Lmiui/widget/CircleProgressBar;->Py:[Landroid/graphics/drawable/Drawable;

    .line 109
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 110
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 111
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 114
    :cond_15
    if-eqz p2, :cond_23

    .line 115
    array-length p1, p2

    move v1, v0

    :goto_19
    if-ge v1, p1, :cond_23

    aget-object v2, p2, v1

    .line 116
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 119
    :cond_23
    if-eqz p3, :cond_31

    .line 120
    array-length p1, p3

    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_31

    aget-object v2, p3, v1

    .line 121
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 125
    :cond_31
    if-eqz p2, :cond_a0

    .line 127
    array-length p1, p2

    move p3, v0

    :goto_35
    if-ge p3, p1, :cond_6d

    aget-object v1, p2, p3

    .line 128
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4e

    .line 129
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_62

    .line 131
    :cond_4e
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_65

    .line 132
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    :goto_62
    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    .line 135
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_6d
    new-instance p1, Landroid/graphics/RectF;

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v2, p2, v0

    .line 142
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    invoke-direct {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Ps:Landroid/graphics/RectF;

    .line 144
    :cond_a0
    return-void
.end method

.method public setOnProgressChangedListener(Lmiui/widget/CircleProgressBar$OnProgressChangedListener;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Pz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    .line 208
    return-void
.end method

.method public setPrevAlpha(I)V
    .registers 2

    .line 397
    iput p1, p0, Lmiui/widget/CircleProgressBar;->PJ:I

    .line 398
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 399
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 7

    monitor-enter p0

    .line 254
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    nop

    .line 257
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 258
    nop

    .line 271
    move v0, v1

    goto :goto_24

    .line 260
    :cond_d
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    array-length v0, v0

    .line 261
    move v2, v1

    :goto_11
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1f

    .line 262
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    aget v4, v4, v2

    if-ge p1, v4, :cond_1c

    .line 263
    nop

    .line 264
    goto :goto_20

    .line 261
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 267
    :cond_1f
    move v2, v3

    :goto_20
    if-ne v2, v3, :cond_23

    .line 268
    goto :goto_24

    .line 271
    :cond_23
    move v0, v2

    :goto_24
    iget p1, p0, Lmiui/widget/CircleProgressBar;->PB:I

    if-eq v0, p1, :cond_4e

    .line 273
    iget p1, p0, Lmiui/widget/CircleProgressBar;->PB:I

    iput p1, p0, Lmiui/widget/CircleProgressBar;->PI:I

    .line 274
    iput v0, p0, Lmiui/widget/CircleProgressBar;->PB:I

    .line 275
    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lmiui/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 276
    const-string p1, "prevAlpha"

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 277
    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 278
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 282
    :cond_4e
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_57

    .line 283
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {p1}, Lmiui/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 285
    :cond_57
    monitor-exit p0

    return-void

    .line 253
    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressByAnimator(I)V
    .registers 3

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    .line 200
    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 216
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 217
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 218
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    .line 219
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->al(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 220
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    if-eqz p2, :cond_40

    .line 222
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    :cond_40
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 225
    return-void
.end method

.method public setProgressLevels([I)V
    .registers 2

    .line 85
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Pv:[I

    .line 86
    return-void
.end method

.method public setRotateVelocity(I)V
    .registers 2

    .line 191
    iput p1, p0, Lmiui/widget/CircleProgressBar;->PN:I

    .line 192
    return-void
.end method

.method public setThumb(I)V
    .registers 3

    .line 414
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PO:Landroid/graphics/drawable/Drawable;

    .line 423
    return-void
.end method

.method public stopProgressAnimator()V
    .registers 2

    .line 231
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Pu:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 234
    :cond_11
    return-void
.end method
