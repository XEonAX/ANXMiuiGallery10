.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;->doExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitEnd()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isExiting:Z

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->finish()V

    .line 296
    return-void
.end method
