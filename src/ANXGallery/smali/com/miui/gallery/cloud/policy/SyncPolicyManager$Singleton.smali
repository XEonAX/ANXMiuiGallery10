.class Lcom/miui/gallery/cloud/policy/SyncPolicyManager$Singleton;
.super Ljava/lang/Object;
.source "SyncPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/policy/SyncPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/cloud/policy/SyncPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;-><init>(Lcom/miui/gallery/cloud/policy/SyncPolicyManager$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager$Singleton;->sInstance:Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager$Singleton;->sInstance:Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    return-object v0
.end method
