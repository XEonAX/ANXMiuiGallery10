.class Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/filtersdk/filter/base/GPUImageFilter;->setFloatVec3(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field final synthetic val$arrayValue:[F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;I[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;->val$location:I

    iput-object p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;->val$arrayValue:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;->val$location:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$4;->val$arrayValue:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 358
    return-void
.end method
