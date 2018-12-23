.class Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;
.super Ljava/lang/Object;
.source "GalleryHybridFragment.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p2, "x1"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 524
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 525
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->startActivity(Landroid/content/Intent;)V

    .line 527
    return-void
.end method
