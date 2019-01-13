.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "ProgressBarDelegate"

.field private static final uH:Lmiui/reflect/Method;

.field private static final uI:Lmiui/reflect/Method;

.field private static final uJ:Lmiui/reflect/Method;

.field private static final uK:Lmiui/reflect/Method;

.field private static uL:Lmiui/reflect/Method; = null

.field private static uM:Lmiui/reflect/Method; = null

.field private static final uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final uO:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

.field private static final uP:I = 0x2710


# instance fields
.field private final uQ:Landroid/widget/ProgressBar;

.field private final uR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private uS:Z

.field private uT:Landroid/graphics/drawable/Drawable;

.field private uU:Landroid/graphics/drawable/Drawable;

.field private uV:Z

.field private uW:Landroid/graphics/drawable/Drawable;

.field private uX:Z

.field private uY:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminate"

    const-string v2, "(Z)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uH:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminateDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uI:Lmiui/reflect/Method;

    .line 47
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgressDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uJ:Lmiui/reflect/Method;

    .line 50
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "onSizeChanged"

    const-string v2, "(IIII)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uK:Lmiui/reflect/Method;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_57

    .line 57
    :try_start_36
    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "getLayerGravity"

    const-string v2, "(I)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uL:Lmiui/reflect/Method;

    .line 58
    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "setLayerGravity"

    const-string v2, "(II)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uM:Lmiui/reflect/Method;
    :try_end_4e
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_36 .. :try_end_4e} :catch_4f

    .line 62
    goto :goto_57

    .line 59
    :catch_4f
    move-exception v0

    .line 61
    const-string v1, "ProgressBarDelegate"

    const-string v2, "Fail to find method in LayerDrawable class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_57
    :goto_57
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    .line 69
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uO:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uS:Z

    .line 88
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    .line 89
    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Ljava/lang/Class;

    .line 90
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 10

    .line 303
    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-lez p3, :cond_32

    if-gtz p4, :cond_9

    goto :goto_32

    .line 307
    :cond_9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 310
    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 311
    invoke-virtual {p1, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 304
    :cond_32
    :goto_32
    return-object p1
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .registers 19

    move-object v0, p1

    .line 231
    instance-of v1, v0, Landroid/graphics/drawable/NinePatchDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    if-nez v1, :cond_130

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_f

    goto/16 :goto_130

    .line 235
    :cond_f
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_21

    .line 236
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    if-eq v1, v0, :cond_139

    .line 238
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 299
    :goto_1e
    move-object v1, v0

    goto/16 :goto_139

    .line 240
    :cond_21
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_9d

    .line 241
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 242
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 243
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 245
    move v5, v2

    :goto_2f
    if-ge v5, v1, :cond_58

    .line 246
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 247
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 248
    const v7, 0x102000d

    if-eq v6, v7, :cond_47

    const v7, 0x102000f

    if-ne v6, v7, :cond_44

    goto :goto_47

    .line 251
    :cond_44
    aput-object v8, v4, v5

    goto :goto_55

    .line 249
    :cond_47
    :goto_47
    move-object v7, p0

    move-object v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 245
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 255
    :cond_58
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 256
    move v4, v2

    :goto_5e
    if-ge v4, v1, :cond_98

    .line 257
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 258
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uL:Lmiui/reflect/Method;

    if-eqz v6, :cond_95

    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uM:Lmiui/reflect/Method;

    if-eqz v6, :cond_95

    .line 259
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uL:Lmiui/reflect/Method;

    const-class v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v0, v8}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v6

    .line 260
    sget-object v7, Lcom/miui/internal/widget/ProgressBarDelegate;->uM:Lmiui/reflect/Method;

    const-class v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-virtual {v7, v8, v5, v9}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 256
    :cond_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 264
    :cond_98
    nop

    .line 265
    nop

    .line 299
    move-object v1, v5

    goto/16 :goto_139

    .line 265
    :cond_9d
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_d0

    .line 266
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 267
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 268
    sget-object v3, Lcom/miui/internal/widget/ProgressBarDelegate;->uO:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v3, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    .line 269
    :goto_ae
    if-ge v2, v3, :cond_ce

    .line 270
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uO:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 271
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uO:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v4

    .line 272
    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 273
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 276
    :cond_ce
    nop

    .line 277
    goto :goto_139

    :cond_d0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_118

    .line 278
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 280
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 281
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 283
    :goto_e6
    const/16 v4, 0x2710

    if-ge v2, v1, :cond_107

    .line 284
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 285
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 286
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    .line 288
    :cond_107
    if-eqz p5, :cond_10d

    .line 289
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_114

    .line 291
    :cond_10d
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 293
    :goto_114
    nop

    .line 294
    nop

    .line 299
    move-object v1, v3

    goto :goto_139

    .line 295
    :cond_118
    const-string v1, "ProgressBarDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Drawable subclass, src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    goto/16 :goto_1e

    .line 233
    :cond_130
    :goto_130
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 299
    :cond_139
    :goto_139
    return-object v1
.end method

.method private a(IIII)V
    .registers 10

    .line 368
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uK:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 318
    nop

    .line 319
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_d

    .line 320
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_1a

    .line 321
    :cond_d
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_19

    .line 322
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_1a

    .line 325
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_27

    .line 326
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_3d

    .line 328
    :cond_27
    const-string v0, "ProgressBarDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_3d
    return-void
.end method

.method private bM()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->r(Z)V

    .line 178
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 349
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uI:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)",
            "Lcom/miui/internal/widget/ProgressBarDelegate;"
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 357
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uJ:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method private r(Z)V
    .registers 13

    .line 181
    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uS:Z

    if-nez v0, :cond_5

    .line 182
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    .line 186
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 187
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 190
    if-ge v1, v2, :cond_2b

    .line 191
    nop

    .line 192
    nop

    .line 193
    nop

    .line 196
    move v10, v2

    move v2, v1

    move v1, v10

    :cond_2b
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v3, :cond_35

    .line 197
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    :cond_35
    const/4 v3, 0x1

    if-eqz p1, :cond_6d

    iget-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Z

    if-eqz v4, :cond_6d

    .line 201
    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Z

    .line 202
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 204
    if-eqz p1, :cond_69

    if-lez v1, :cond_69

    if-lez v2, :cond_69

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 210
    nop

    .line 211
    sub-int v0, v1, v1

    .line 212
    add-int/lit8 v1, v1, 0x0

    goto :goto_66

    .line 214
    :cond_65
    move v0, v9

    :goto_66
    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    :cond_69
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->c(Landroid/graphics/drawable/Drawable;)V

    .line 217
    goto :goto_87

    :cond_6d
    if-nez p1, :cond_87

    iget-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Z

    if-eqz p1, :cond_87

    .line 218
    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Z

    .line 219
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uU:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->d(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_87
    :goto_87
    return-void
.end method

.method private s(Z)V
    .registers 7

    .line 341
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uH:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    .line 169
    if-nez v0, :cond_13

    .line 170
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 173
    :cond_13
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1a

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1a
    iget v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:F

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 174
    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Z

    .line 161
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Z

    .line 162
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bM()V

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(IIII)V

    .line 164
    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .registers 8

    .line 93
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    sget-object v1, Lmiui/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Landroid/graphics/drawable/Drawable;

    .line 96
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 97
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v4, 0x30

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 100
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 101
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v4, 0x19

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 104
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uN:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    .line 107
    :cond_3b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uS:Z

    .line 108
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_progressMask:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_4d

    .line 110
    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->b(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_50

    .line 113
    :cond_4d
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bM()V

    .line 115
    :goto_50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v0, v1, [I

    const v1, 0x1010033

    aput v1, v0, v2

    invoke-virtual {p2, p1, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:F

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uQ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eq p1, v0, :cond_e

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->r(Z)V

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->s(Z)V

    .line 128
    :cond_e
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    .line 140
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Z

    .line 142
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bM()V

    .line 144
    :cond_c
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uU:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    .line 132
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uU:Landroid/graphics/drawable/Drawable;

    .line 133
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Z

    .line 134
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bM()V

    .line 136
    :cond_c
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_f

    .line 148
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Landroid/graphics/drawable/Drawable;

    .line 149
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Z

    .line 150
    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Z

    .line 151
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bM()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 153
    :cond_f
    monitor-exit p0

    return-void

    .line 146
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
