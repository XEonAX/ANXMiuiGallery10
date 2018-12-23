.class public Lcom/miui/extraphoto/common/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sSyncObj:Ljava/lang/Object;

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    .line 8
    sget-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .line 8
    sput-object p0, Lcom/miui/extraphoto/common/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static cancelCurrentToast()V
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/miui/extraphoto/common/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 58
    :cond_0
    return-void
.end method

.method public static makeText(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I

    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;II)V

    .line 22
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "len"    # I

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 31
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 13
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 14
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "len"    # I

    .line 35
    invoke-static {}, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/common/ToastUtils$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/miui/extraphoto/common/ToastUtils$1;-><init>(Ljava/lang/CharSequence;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;II)V

    .line 26
    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 17
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 18
    return-void
.end method
