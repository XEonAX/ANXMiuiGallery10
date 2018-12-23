.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$5;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->showGuidance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3390
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$5;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$5;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$6302(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3394
    const-string v0, "photo_refocus_effects"

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureGuidance;->markAsUsed(Ljava/lang/String;)V

    .line 3395
    return-void
.end method
