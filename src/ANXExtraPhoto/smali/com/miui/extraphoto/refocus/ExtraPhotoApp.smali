.class public Lcom/miui/extraphoto/refocus/ExtraPhotoApp;
.super Lmiui/external/Application;
.source "ExtraPhotoApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;
    }
.end annotation


# static fields
.field private static volatile sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/extraphoto/refocus/ExtraPhotoApp;->sContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;
    .locals 1

    .line 11
    sput-object p0, Lcom/miui/extraphoto/refocus/ExtraPhotoApp;->sContext:Landroid/content/Context;

    .line 12
    new-instance v0, Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;-><init>(Lcom/miui/extraphoto/refocus/ExtraPhotoApp;)V

    return-object v0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/ExtraPhotoApp;->onCreateApplicationDelegate()Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;

    move-result-object v0

    return-object v0
.end method
