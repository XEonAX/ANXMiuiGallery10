.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionConfiguration"
.end annotation


# instance fields
.field private mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

.field private mEnterDuration:I

.field private mExitDuration:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMenuName:Ljava/lang/String;

.field private mMenuOffset:I

.field private mPhotoViewName:Ljava/lang/String;

.field private mRunTransition:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "editor"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .line 1218
    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;)Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    return-object v0
.end method

.method private configureEnterTransition()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1271
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 1272
    .local v0, "enter":Landroid/transition/TransitionSet;
    new-instance v1, Lcom/miui/gallery/editor/photo/app/ImageTransition;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageWidth:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageHeight:I

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/ImageTransition;-><init>(ZLandroid/graphics/Matrix;II)V

    .line 1273
    .local v1, "imageEnter":Lcom/miui/gallery/editor/photo/app/ImageTransition;
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Lcom/miui/gallery/editor/photo/app/ImageTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1274
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mPhotoViewName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/transition/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 1276
    new-instance v2, Lcom/miui/gallery/editor/photo/app/MenuTransition;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuOffset:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4}, Lcom/miui/gallery/editor/photo/app/MenuTransition;-><init>(FZLandroid/content/res/Resources;)V

    .line 1277
    .local v2, "menuEnter":Lcom/miui/gallery/editor/photo/app/MenuTransition;
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/MenuTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1278
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/gallery/compat/transition/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 1281
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEnterDuration:I

    int-to-long v4, v4

    .line 1282
    invoke-virtual {v3, v4, v5}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 1283
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/gallery/compat/view/WindowCompat;->setSharedElementEnterTransition(Landroid/view/Window;Landroid/transition/Transition;)V

    .line 1284
    return-void
.end method

.method private configureExitTransition(Z)V
    .locals 7
    .param p1, "exported"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1287
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 1288
    .local v0, "exit":Landroid/transition/TransitionSet;
    if-eqz p1, :cond_0

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 1289
    .local v1, "imageExit":Landroid/transition/Transition;
    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1290
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mExitDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 1291
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mPhotoViewName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/transition/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 1293
    new-instance v2, Lcom/miui/gallery/editor/photo/app/MenuTransition;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuOffset:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4}, Lcom/miui/gallery/editor/photo/app/MenuTransition;-><init>(FZLandroid/content/res/Resources;)V

    .line 1294
    .local v2, "menuExit":Lcom/miui/gallery/editor/photo/app/MenuTransition;
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/MenuTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1295
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/gallery/compat/transition/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 1298
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1299
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/gallery/compat/view/WindowCompat;->setSharedElementReturnTransition(Landroid/view/Window;Landroid/transition/Transition;)V

    .line 1300
    return-void

    .line 1288
    .end local v1    # "imageExit":Landroid/transition/Transition;
    .end local v2    # "menuExit":Lcom/miui/gallery/editor/photo/app/MenuTransition;
    :cond_0
    new-instance v1, Lcom/miui/gallery/editor/photo/app/ImageTransition;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageWidth:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageHeight:I

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/ImageTransition;-><init>(ZLandroid/graphics/Matrix;II)V

    goto :goto_0
.end method


# virtual methods
.method onActivityCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1221
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/compat/view/WindowCompat;->requestActivityTransition(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "extra_custom_transition"

    .line 1223
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mRunTransition:Z

    .line 1224
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SystemUiUtil;->setDrawSystemBarBackground(Landroid/view/Window;)V

    .line 1225
    return-void
.end method

.method onExit(Z)V
    .locals 2
    .param p1, "exported"    # Z

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mRunTransition:Z

    if-eqz v0, :cond_0

    .line 1258
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->configureExitTransition(Z)V

    .line 1259
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration$1;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/compat/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;)V

    .line 1268
    :goto_0
    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->closeExportDialog()V

    goto :goto_0
.end method

.method onImageLoaded()V
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mRunTransition:Z

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 1254
    :cond_0
    return-void
.end method

.method postActivityCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1228
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mRunTransition:Z

    if-nez v3, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1233
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_image_width"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageWidth:I

    .line 1234
    const-string v3, "extra_image_height"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mImageHeight:I

    .line 1235
    const-string v3, "extra_image_matrix"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v1

    .line 1236
    .local v1, "rawMatrix":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMatrix:Landroid/graphics/Matrix;

    .line 1237
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1239
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1240
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuOffset:I

    .line 1241
    const v3, 0x7f0e0701

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mPhotoViewName:Ljava/lang/String;

    .line 1242
    const v3, 0x7f0e0702

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mMenuName:Ljava/lang/String;

    .line 1243
    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEnterDuration:I

    .line 1244
    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mExitDuration:I

    .line 1246
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->configureEnterTransition()V

    .line 1247
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/compat/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    goto :goto_0
.end method
