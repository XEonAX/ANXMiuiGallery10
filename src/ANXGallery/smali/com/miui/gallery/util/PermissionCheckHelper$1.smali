.class Lcom/miui/gallery/util/PermissionCheckHelper$1;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/CtaPrivacyPermissionRequestDialog$OnRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/PermissionCheckHelper;->checkCtaPrivacyPermissions([Ljava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/PermissionCheckHelper;

.field final synthetic val$index:I

.field final synthetic val$needCheckCtaPermissions:[Ljava/lang/String;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$runtimePermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/PermissionCheckHelper;[Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/PermissionCheckHelper;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/util/PermissionCheckHelper;

    iput-object p2, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$needCheckCtaPermissions:[Ljava/lang/String;

    iput p3, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$index:I

    iput-object p4, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$permission:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$runtimePermissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Z)V
    .locals 3
    .param p1, "isAllowed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$needCheckCtaPermissions:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$index:I

    aput-object v2, v0, v1

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/util/PermissionCheckHelper;

    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$runtimePermissions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$needCheckCtaPermissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/PermissionCheckHelper;->access$200(Lcom/miui/gallery/util/PermissionCheckHelper;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    :goto_1
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/util/PermissionCheckHelper;

    iget-object v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$permission:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PermissionCheckHelper;->access$000(Lcom/miui/gallery/util/PermissionCheckHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$needCheckCtaPermissions:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$index:I

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$runtimePermissions:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->val$index:I

    aput-object v2, v0, v1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/PermissionCheckHelper;->access$100(Lcom/miui/gallery/util/PermissionCheckHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
