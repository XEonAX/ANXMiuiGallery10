.class Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;
.super Ljava/lang/Object;
.source "TextEditorView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesListener"
.end annotation


# instance fields
.field mBaseDegrees:F

.field mBaseDistance:F

.field mCenterX:F

.field mCenterY:F

.field mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

.field mDownConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

.field mDownIndex:I

.field mDownX:F

.field mDownY:F

.field mNeedInit:Z

.field private mPointTemp1:[F

.field private mPointTemp2:[F

.field mPreDegrees:F

.field mPreScale:F

.field mRectF:Landroid/graphics/RectF;

.field mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 149
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    .line 155
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDistance:F

    .line 156
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDegrees:F

    .line 157
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    .line 158
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mRectF:Landroid/graphics/RectF;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mNeedInit:Z

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreScale:F

    .line 162
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreDegrees:F

    .line 166
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    .line 167
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp2:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    return-void
.end method

.method private doScroll(FFLcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V
    .locals 5
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 297
    if-eqz p3, :cond_2

    .line 298
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 299
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 300
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/graphics/RectF;)I

    move-result v0

    .line 302
    .local v0, "flag":I
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 303
    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 308
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    .line 309
    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    const/4 p2, 0x0

    .line 314
    :cond_1
    :goto_1
    neg-float v1, p1

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->appendUserLocationX(F)V

    .line 315
    neg-float v1, p2

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->appendUserLocationY(F)V

    .line 316
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1, p3, v4, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 317
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 321
    .end local v0    # "flag":I
    :cond_2
    return-void

    .line 304
    .restart local v0    # "flag":I
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 305
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 310
    :cond_4
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 311
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActionUp(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    .line 285
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v0

    .line 286
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 287
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 288
    .local v1, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->refreshRotateDegree()V

    .line 289
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    const/4 v3, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 290
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    .line 292
    .end local v1    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    .line 293
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 294
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownX:F

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownY:F

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownY:F

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    .line 176
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    if-eq v0, v4, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 185
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    .line 186
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mNeedInit:Z

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 192
    :goto_1
    const-string v0, "TextEditorView"

    const-string v1, "mTouchAction : %s"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return v3

    .line 180
    :cond_0
    iput-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 190
    iput-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserScaleMultiple()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserScaleMultiple(F)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 339
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 345
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 20
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v15, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp2:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v15, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp2:[F

    const/16 v16, 0x0

    aget v8, v15, v16

    .line 239
    .local v8, "currentX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp2:[F

    const/16 v16, 0x1

    aget v9, v15, v16

    .line 241
    .local v9, "currentY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    const/16 v16, 0x0

    aget v13, v15, v16

    .line 242
    .local v13, "startX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    const/16 v16, 0x1

    aget v14, v15, v16

    .line 244
    .local v14, "startY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move/from16 v0, p3

    invoke-static {v15, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F

    move-result p3

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move/from16 v0, p4

    invoke-static {v15, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F

    move-result p4

    .line 247
    sget-object v15, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$text$TextEditorView$TouchAction:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->doScroll(FFLcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 280
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 281
    :cond_1
    return-void

    .line 249
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mNeedInit:Z

    if-eqz v15, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    .line 252
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    sub-float/2addr v15, v13

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    sub-float/2addr v15, v14

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDistance:F

    .line 253
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    sub-float v15, v14, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    sub-float v15, v13, v15

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDegrees:F

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserScaleMultiple()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreScale:F

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreDegrees:F

    .line 256
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mNeedInit:Z

    .line 258
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    sub-float/2addr v15, v8

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    sub-float/2addr v15, v9

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 259
    .local v6, "currentDistance":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterY:F

    sub-float v15, v9, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCenterX:F

    sub-float v15, v8, v15

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 260
    .local v4, "currentDegrees":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDistance:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v16, v6, v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 261
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mBaseDegrees:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    sub-double v10, v4, v16

    .line 262
    .local v10, "rotateDegrees":D
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreScale:F

    move/from16 v16, v0

    mul-float v16, v16, v12

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserScaleMultiple(F)V

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    double-to-float v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPreDegrees:F

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setRotateDegrees(F)V

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto/16 :goto_0

    .line 272
    .end local v4    # "currentDegrees":D
    .end local v6    # "currentDistance":D
    .end local v10    # "rotateDegrees":D
    .end local v12    # "scale":F
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setActivation(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v15}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->doScroll(FFLcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 198
    const-string v0, "TextEditorView"

    const-string v1, "click number\uff1a %d"

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 201
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    if-eq v0, v4, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mDownIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setActivation(I)V

    .line 231
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$text$TextEditorView$TouchAction:[I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mPointTemp1:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->clearActivation(Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->toggleMirror()V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->mCurrentConfig:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0, v1, v3, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
