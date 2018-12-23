.class public Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;
    }
.end annotation


# static fields
.field private static final RUNTIME_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

.field private mIsShowWhenLocked:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isShowWhenLocked"    # Z
    .param p3, "callback"    # Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 20
    iput-object p1, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    .line 21
    iput-boolean p2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mIsShowWhenLocked:Z

    .line 22
    iput-object p3, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    .line 23
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PermissionCheckHelper: activity or callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkPermission()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v0}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "permissions":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/extraphoto/common/utils/PermissionUtils;->getUngrantedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "ungrantedPermissions":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 30
    iget-boolean v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mIsShowWhenLocked:Z

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/miui/extraphoto/common/utils/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v2}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    .line 39
    .end local v1    # "ungrantedPermissions":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v1}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    .line 42
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 45
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "succeed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 49
    aget v3, p3, v2

    if-eqz v3, :cond_0

    .line 50
    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v0, 0x0

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    iget-object v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mCallback:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;

    invoke-interface {v2}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;->onCheckPermissionSucceed()V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 61
    .end local v0    # "succeed":Z
    .end local v1    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void
.end method
