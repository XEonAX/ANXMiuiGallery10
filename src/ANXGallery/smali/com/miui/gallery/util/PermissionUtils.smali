.class public Lcom/miui/gallery/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/PermissionUtils$CtaPrivacyPermissions;
    }
.end annotation


# direct methods
.method public static checkPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-static {}, Lcom/miui/gallery/util/PermissionUtils;->supportRuntimePermissionCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-static {}, Lcom/miui/gallery/util/PermissionUtils;->supportRuntimePermissionCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUngrantedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {}, Lcom/miui/gallery/util/PermissionUtils;->supportRuntimePermissionCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 49
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, p1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, p1, v3

    .line 51
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0, v0}, Lcom/miui/gallery/util/PermissionUtils;->checkPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    .end local v0    # "permission":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 60
    .local v1, "permissionArray":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/gallery/util/PermissionUtils;->supportRuntimePermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 38
    :cond_0
    return-void
.end method

.method private static supportRuntimePermissionCheck()Z
    .locals 2

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
