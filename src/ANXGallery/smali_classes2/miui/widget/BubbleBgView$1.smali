.class Lmiui/widget/BubbleBgView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/BubbleBgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final Pb:I = 0x64


# instance fields
.field final synthetic Pc:Lmiui/widget/BubbleBgView;


# direct methods
.method constructor <init>(Lmiui/widget/BubbleBgView;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lmiui/widget/BubbleBgView$1;->Pc:Lmiui/widget/BubbleBgView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_16

    .line 67
    :cond_6
    iget-object p1, p0, Lmiui/widget/BubbleBgView$1;->Pc:Lmiui/widget/BubbleBgView;

    invoke-virtual {p1}, Lmiui/widget/BubbleBgView;->invalidate()V

    .line 68
    iget-object p1, p0, Lmiui/widget/BubbleBgView$1;->Pc:Lmiui/widget/BubbleBgView;

    invoke-static {p1}, Lmiui/widget/BubbleBgView;->a(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    :goto_16
    return-void
.end method
