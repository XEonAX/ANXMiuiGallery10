.class Lcom/miui/gallery/picker/PickGalleryActivity$2;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Landroid/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;->setupTabFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "ratio"    # F
    .param p3, "fromHasActionMenu"    # Z
    .param p4, "toHasActionMenu"    # Z

    .prologue
    .line 205
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 209
    const-string v0, "PickGalleryActivity"

    const-string v1, "onPageSelected %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$000(Lcom/miui/gallery/picker/PickGalleryActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$000(Lcom/miui/gallery/picker/PickGalleryActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$100(Lcom/miui/gallery/picker/PickGalleryActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$100(Lcom/miui/gallery/picker/PickGalleryActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$002(Lcom/miui/gallery/picker/PickGalleryActivity;I)I

    .line 216
    return-void
.end method
