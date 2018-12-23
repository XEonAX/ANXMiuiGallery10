.class Lcom/miui/gallery/ui/CtaNoticeFragment$2;
.super Ljava/lang/Object;
.source "CtaNoticeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CtaNoticeFragment;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
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
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->access$100(Lcom/miui/gallery/ui/CtaNoticeFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setToAllowUseOnOfflineGlobal(Z)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->access$200(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/CtaNoticeFragment$2;->this$0:Lcom/miui/gallery/ui/CtaNoticeFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CtaNoticeFragment;->access$200(Lcom/miui/gallery/ui/CtaNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
