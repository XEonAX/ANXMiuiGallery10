.class public interface abstract Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/PermissionCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionCheckCallback"
.end annotation


# virtual methods
.method public abstract getFatalPermissions()[Ljava/lang/String;
.end method

.method public abstract getRuntimePermissions()[Ljava/lang/String;
.end method

.method public abstract onCheckPermissionSucceed()V
.end method
