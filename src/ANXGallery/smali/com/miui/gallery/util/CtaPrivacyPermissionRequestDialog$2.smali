.class Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;
.super Ljava/lang/Object;
.source "CtaPrivacyPermissionRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;->this$0:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;->this$0:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    invoke-static {v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->access$000(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setIsCtaPrivacyPermissionsAllowed(Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;->this$0:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    invoke-static {v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->access$100(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$2;->this$0:Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;

    invoke-static {v0}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;->access$100(Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog;)Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;->onRequestResult(Z)V

    .line 85
    :cond_0
    return-void
.end method
