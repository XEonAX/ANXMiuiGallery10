.class Lcom/miui/gallery/ui/CtaNoticeFragment$1;
.super Ljava/lang/Object;
.source "CtaNoticeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CtaNoticeFragment;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CtaNoticeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CtaNoticeFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$1;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$1;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->access$000(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$1;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->access$000(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    :cond_0
    return-void
.end method
