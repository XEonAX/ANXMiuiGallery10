.class Lcom/miui/extraphoto/refocus/compat/ActivityCompat$1;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/compat/ActivityCompat$1;->val$callback:Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/ActivityCompat$1;->val$callback:Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/ActivityCompat$1;->val$callback:Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;

    invoke-interface {v0}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat$SharedElementCallback;->onSharedElementStart()V

    .line 45
    :cond_0
    return-void
.end method
