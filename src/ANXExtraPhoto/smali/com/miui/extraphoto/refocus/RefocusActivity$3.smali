.class Lcom/miui/extraphoto/refocus/RefocusActivity$3;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 276
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeError()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const v1, 0x7f07000b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->finish()V

    .line 319
    return-void
.end method

.method public onInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 279
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1202(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 280
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1300(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1400(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 283
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    move-result-object v3

    iget v3, v3, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    invoke-static {v2, v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1500(Lcom/miui/extraphoto/refocus/RefocusActivity;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1600(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;I)V

    .line 286
    :cond_0
    iget v0, p3, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget v1, p3, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1702(Lcom/miui/extraphoto/refocus/RefocusActivity;I)I

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1702(Lcom/miui/extraphoto/refocus/RefocusActivity;I)I

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1700(Lcom/miui/extraphoto/refocus/RefocusActivity;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42100000    # 36.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1802(Lcom/miui/extraphoto/refocus/RefocusActivity;F)F

    .line 292
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 293
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p2}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 294
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p1

    move-object v8, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eq v1, p1, :cond_2

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v4}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1700(Lcom/miui/extraphoto/refocus/RefocusActivity;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 299
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2000(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onImageLoad(Landroid/graphics/Bitmap;)V

    .line 300
    return-void
.end method

.method public onLoading()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/LoadingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusView;->getCenterXInWindow()I

    move-result v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusView;->getCenterYInWindow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/LoadingDialog;->show(II)V

    .line 350
    :cond_0
    return-void
.end method

.method public onLoadingEnd()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/LoadingDialog;->dismiss()V

    .line 357
    :cond_0
    return-void
.end method

.method public onPreviewUpdate(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public onRelightingEffect()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2800(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusView;->showRelightingWindowByCurrentStatus()V

    .line 368
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2802(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z

    .line 370
    :cond_0
    return-void
.end method

.method public onSave(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "video"    # Z
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "explain"    # Ljava/lang/String;

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "result":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v2, "video/mpeg4"

    goto :goto_0

    :cond_0
    const-string v2, "image/jpeg"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "save_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "save_explain"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, "extra_photo_edit_type"

    const-string v2, "extra_photo_editor_type_refocus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->setResult(ILandroid/content/Intent;)V

    .line 337
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2300(Lcom/miui/extraphoto/refocus/RefocusActivity;ZLandroid/graphics/Bitmap;)V

    .line 338
    return-void
.end method

.method public onSaveCancel()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2400(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V

    .line 343
    return-void
.end method

.method public onSaveStatusChange(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 361
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 362
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2102(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z

    .line 306
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1000(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    .line 308
    :cond_0
    return-void
.end method

.method public onSurfaceReady()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    return-void
.end method
