.class public Lcom/miui/gallery/util/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# direct methods
.method public static getBabyAlbumNotificationId(ZI)I
    .locals 2
    .param p0, "isSharer"    # Z
    .param p1, "id"    # I

    .prologue
    const v1, 0x186a0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    const v0, 0x30d40

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    .line 59
    :goto_0
    return v0

    :cond_0
    rem-int v0, p1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getPushNotificationId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 64
    const v0, 0x493e0

    const v1, 0x186a0

    rem-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method
