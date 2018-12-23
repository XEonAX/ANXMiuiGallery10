.class public Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "ExtraPhotoApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/ExtraPhotoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/ExtraPhotoApp;


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/refocus/ExtraPhotoApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/ExtraPhotoApp;

    .line 15
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/ExtraPhotoApp$ApplicationDelegate;->this$0:Lcom/miui/extraphoto/refocus/ExtraPhotoApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 18
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 19
    return-void
.end method
