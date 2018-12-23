.class public Lcom/cdv/io/NvOrientationEventListener;
.super Ljava/lang/Object;
.source "NvOrientationEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"


# instance fields
.field private m_cameraId:I

.field private m_orientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_cameraId:I

    .line 35
    iput p1, p0, Lcom/cdv/io/NvOrientationEventListener;->m_cameraId:I

    .line 37
    new-instance v0, Lcom/cdv/io/NvOrientationEventListener$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lcom/cdv/io/NvOrientationEventListener$1;-><init>(Lcom/cdv/io/NvOrientationEventListener;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/cdv/io/NvOrientationEventListener;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_cameraId:I

    return v0
.end method

.method static synthetic access$100(II)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/cdv/io/NvOrientationEventListener;->notifyOrientation(II)V

    return-void
.end method

.method private static native notifyOrientation(II)V
.end method


# virtual methods
.method public disableListener()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 57
    :cond_0
    return-void
.end method

.method public enableListener()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cdv/io/NvOrientationEventListener;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 51
    :cond_0
    return-void
.end method
