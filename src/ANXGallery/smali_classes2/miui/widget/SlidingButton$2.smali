.class Lmiui/widget/SlidingButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/SlidingButton;->fP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aau:Lmiui/widget/SlidingButton;

.field final synthetic aav:Z


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton;Z)V
    .registers 3

    .line 369
    iput-object p1, p0, Lmiui/widget/SlidingButton$2;->aau:Lmiui/widget/SlidingButton;

    iput-boolean p2, p0, Lmiui/widget/SlidingButton$2;->aav:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 372
    iget-object v0, p0, Lmiui/widget/SlidingButton$2;->aau:Lmiui/widget/SlidingButton;

    invoke-static {v0}, Lmiui/widget/SlidingButton;->d(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 373
    iget-object v0, p0, Lmiui/widget/SlidingButton$2;->aau:Lmiui/widget/SlidingButton;

    invoke-static {v0}, Lmiui/widget/SlidingButton;->d(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SlidingButton$2;->aau:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lmiui/widget/SlidingButton$2;->aav:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 375
    :cond_15
    return-void
.end method
