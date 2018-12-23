.class public Lcom/miui/gallery/video/editor/NexVideoEditor;
.super Lcom/miui/gallery/video/editor/VideoEditor;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexEngineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$Change;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;,
        Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;
    }
.end annotation


# instance fields
.field private mApplyedEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mContext:Landroid/content/Context;

.field private mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

.field private mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

.field private mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

.field private mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

.field private mEngineState:I

.field private mHandler:Landroid/os/Handler;

.field private mHasApplyedSmartEffect:Z

.field private mHasUsingAutoTrim:Z

.field private mIsDestroy:Z

.field private mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field private mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mOpenClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

.field private mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

.field private mSavedEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekTarget:I

.field private mTempEditValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPickCursor:I

.field private mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

.field private mVideoBitrate:I

.field private mVideoFrames:I

.field private mVideoHeight:I

.field private mVideoPath:Ljava/lang/String;

.field private mVideoRotation:I

.field private mVideoWidth:I

.field private preLoadVideoThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/VideoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

.field private setTimeSuccess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/VideoEditor;-><init>()V

    .line 90
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    .line 91
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 92
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    .line 105
    sget-object v0, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 106
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    .line 107
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    .line 113
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadThumbnail(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->doSeek(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexClip;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexProject;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mOpenClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEndClip:Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Lcom/nexstreaming/nexeditorsdk/nexProject;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCloneProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->finEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->handleHardwareSupport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->configEngine()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadProject()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    return-object v0
.end method

.method private addChange(Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 4
    .param p1, "change"    # Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1077
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v2, :pswitch_data_0

    .line 1106
    const-string v0, "NexVideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChange is not allowed at EngineState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1079
    :pswitch_0
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1080
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$12;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 1098
    :pswitch_1
    invoke-interface {p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$Change;->applyChange()V

    .line 1099
    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 1100
    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1101
    if-eqz p2, :cond_0

    .line 1102
    invoke-interface {p2}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    goto :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private configEngine()V
    .locals 4

    .prologue
    .line 271
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getBestVideoAspect(III)Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    move-result-object v0

    .line 272
    .local v0, "ratio":Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    if-eq v1, v0, :cond_0

    .line 273
    sget-object v1, Lcom/miui/gallery/video/editor/NexVideoEditor$18;->$SwitchMap$com$miui$gallery$video$editor$DisplayAspectRatio:[I

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 304
    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .line 306
    :cond_0
    return-void

    .line 276
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 277
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A16V9"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 281
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A9V16"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :pswitch_2
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 285
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A9V18"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 289
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A18V9"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_4
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 293
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A3V4"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_5
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 297
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A4V3"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_6
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 301
    const-string v1, "NexVideoEditor"

    const-string v2, "current ratio  is  A1V1"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createProject(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 4
    .param p1, "clip"    # Lcom/nexstreaming/nexeditorsdk/nexClip;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1050
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 1052
    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 1054
    :cond_0
    if-eqz p1, :cond_1

    .line 1055
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1056
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    .line 1057
    .local v0, "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1058
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 1061
    .end local v0    # "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    :cond_1
    return-object v0
.end method

.method private doSeek(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 629
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v0, :sswitch_data_0

    .line 641
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilter is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 632
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 633
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    goto :goto_0

    .line 637
    :sswitch_1
    iput p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 638
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    goto :goto_0

    .line 629
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x68 -> :sswitch_1
    .end sparse-switch
.end method

.method private finEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 4
    .param p1, "filterId"    # Ljava/lang/String;

    .prologue
    .line 717
    if-eqz p1, :cond_1

    .line 718
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v1

    .line 719
    .local v1, "colorEffects":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexColorEffect;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 720
    .local v0, "colorEffect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    .end local v0    # "colorEffect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .end local v1    # "colorEffects":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexColorEffect;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHardwareSupport(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p1}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->isSupportEditVideo(Ljava/lang/String;)Z

    move-result v0

    .line 327
    .local v0, "support":Z
    if-nez v0, :cond_0

    .line 328
    const-string v1, "NexVideoEditor"

    const-string/jumbo v2, "the device can not support to edit the video."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v1, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;-><init>(Lcom/miui/gallery/video/editor/VideoEditor;)V

    throw v1

    .line 331
    :cond_0
    return-void
.end method

.method private haveChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "editType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 484
    .local v1, "savedValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    .local v0, "currentValue":Ljava/lang/Object;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v2

    .line 488
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 491
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadMainThumbnail(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/UriUtils;->toSafeString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$1;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 177
    return-void
.end method

.method private loadProject()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->createProject(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 266
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 268
    return-void
.end method

.method private loadThumbnail(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/16 v0, 0xa0

    const/16 v3, 0x5a

    .line 243
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    sget-object v5, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    if-ne v4, v5, :cond_0

    move v1, v0

    .line 244
    .local v1, "thumbnailWidth":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    sget-object v5, Lcom/miui/gallery/video/editor/DisplayAspectRatio;->A16V9:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 245
    .local v2, "thumbnailHeight":I
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v4

    const/16 v5, 0x32

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    new-instance v7, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;

    new-instance v8, Lcom/miui/gallery/video/editor/NexVideoEditor$3;

    invoke-direct {v8, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$3;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-direct {v7, v8}, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;-><init>(Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;)V

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipDetailThumbnails(IIIIIILcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;)I

    .line 260
    return-void

    .end local v1    # "thumbnailWidth":I
    .end local v2    # "thumbnailHeight":I
    :cond_0
    move v1, v3

    .line 243
    goto :goto_0

    .restart local v1    # "thumbnailWidth":I
    :cond_1
    move v2, v0

    .line 244
    goto :goto_1
.end method

.method private loadVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;Z)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 310
    .local v0, "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    .line 312
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    .line 313
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    .line 314
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoBitrate()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoBitrate:I

    .line 315
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getFramesPerSecond()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoFrames:I

    .line 316
    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 320
    return-void

    .line 318
    :cond_0
    new-instance v1, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;-><init>(Lcom/miui/gallery/video/editor/VideoEditor;)V

    throw v1
.end method

.method private pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 3
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 536
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 537
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 538
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 539
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->pause()V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEngineState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 708
    :goto_0
    iput p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    .line 709
    return-void

    .line 672
    :sswitch_0
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 675
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 676
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 679
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 680
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 681
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->hideThumbnail()V

    goto :goto_0

    .line 684
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 685
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 688
    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 689
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->hideThumbnail()V

    goto :goto_0

    .line 693
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 694
    invoke-virtual {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 701
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    goto :goto_0

    .line 704
    :sswitch_7
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setState(I)V

    .line 705
    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method

.method private setTrimInfo(Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v1, "trim"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method private updataSeek()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 647
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 648
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    if-eq v0, v3, :cond_2

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getCurrentPlayTimeTime()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_1

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seekIDROnly(I)V

    .line 651
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEEK IDR progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    .line 667
    :cond_0
    :goto_1
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    .line 654
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSeekTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    if-eqz v0, :cond_3

    .line 659
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 663
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    goto :goto_1

    .line 661
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    goto :goto_2
.end method


# virtual methods
.method public adjustBrightness(I)V
    .locals 2
    .param p1, "bright"    # I

    .prologue
    .line 1518
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1519
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$13;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$13;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setBrightness(I)V

    .line 1527
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1528
    return-void
.end method

.method public adjustContrast(I)V
    .locals 2
    .param p1, "contrast"    # I

    .prologue
    .line 1556
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1557
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$15;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$15;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setContrast(I)V

    .line 1565
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1566
    return-void
.end method

.method public adjustSaturation(I)V
    .locals 2
    .param p1, "saturation"    # I

    .prologue
    .line 1537
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1538
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$14;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$14;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1545
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setSaturation(I)V

    .line 1546
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1547
    return-void
.end method

.method public adjustSharpness(I)V
    .locals 2
    .param p1, "sharpness"    # I

    .prologue
    .line 1593
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1594
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$17;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$17;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setSharpness(I)V

    .line 1602
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_sharpness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1604
    return-void
.end method

.method public adjustVignetteRange(I)V
    .locals 2
    .param p1, "vignetteRange"    # I

    .prologue
    .line 1574
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1575
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$16;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$16;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setVignetteRange(I)V

    .line 1583
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignetteRange:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 1585
    return-void
.end method

.method public apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 730
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->applyAsync(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    return v0
.end method

.method public applyAsync(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    const/4 v2, 0x1

    .line 734
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 735
    invoke-interface {p1}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 761
    :goto_0
    return v2

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    .line 739
    .local v0, "changes":[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    const/4 v1, 0x0

    .line 740
    .local v1, "i":I
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 741
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 742
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v3, :pswitch_data_0

    .line 761
    const/4 v2, 0x0

    goto :goto_0

    .line 744
    :pswitch_0
    const/16 v3, 0x65

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 745
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v4, Lcom/miui/gallery/video/editor/NexVideoEditor$9;

    invoke-direct {v4, p0, p1, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$9;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;)V

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 755
    :pswitch_1
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 756
    new-instance v3, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public autoTrim(ILcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V
    .locals 7
    .param p1, "time"    # I
    .param p2, "tsi"    # Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    .prologue
    .line 887
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->isSupportAutoTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 889
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    .line 890
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 892
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    div-int/lit8 v3, p1, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/video/editor/NexVideoEditor$10;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$10;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->autoTrim(Ljava/lang/String;ZIIILcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;)I

    .line 951
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;->onTrimStart()V

    .line 956
    :cond_0
    return-void
.end method

.method public cancelExport(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 461
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$5;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    .line 472
    :cond_0
    return-void
.end method

.method public checkIDRSupport()Z
    .locals 8

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    .local v0, "start":J
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 134
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSeekPointCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 135
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSeekPointInterval()I

    move-result v3

    const/16 v4, 0xfa0

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 136
    .local v2, "support":Z
    :goto_0
    const-string v3, "NexVideoEditor"

    const-string v4, "get interval costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return v2

    .line 135
    .end local v2    # "support":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 995
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop()V

    .line 997
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->clearProject()V

    .line 998
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEventHandler(Lcom/nexstreaming/nexeditorsdk/nexEngineListener;)V

    .line 999
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setView(Lcom/nexstreaming/nexeditorsdk/nexEngineView;)I

    .line 1000
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->releaseNativeEngine()V

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->keepScreenOn(Z)V

    .line 1003
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mIsDestroy:Z

    .line 1004
    return-void
.end method

.method public export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V
    .locals 9
    .param p1, "outputFileURI"    # Ljava/lang/String;
    .param p2, "esi"    # Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    .prologue
    .line 960
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 984
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 962
    :pswitch_0
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 963
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$11;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    goto :goto_0

    .line 978
    :pswitch_1
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 979
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    .line 980
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    :goto_1
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    :goto_2
    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoBitrate:I

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJI)I

    .line 981
    invoke-interface {p2}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeStart()V

    goto :goto_0

    .line 980
    :cond_0
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoHeight:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoWidth:I

    goto :goto_2

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDisplayRatio()Lcom/miui/gallery/video/editor/DisplayAspectRatio;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentRatio:Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    return-object v0
.end method

.method public getProjectTotalTime()I
    .locals 2

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getProject()Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    .line 1028
    .local v0, "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v1

    .line 1032
    .end local v0    # "project":Lcom/nexstreaming/nexeditorsdk/nexProject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFrames()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoFrames:I

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string v0, ""

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoStartTime()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoTotalTime()I
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    .line 1041
    :goto_0
    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    goto :goto_0

    .line 1041
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdit()Z
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasUsingAutoTrim:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSavedEditState()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceAudioEnable()Z
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportAutoTrim()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mMainVideoClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v0

    const/16 v1, 0x7530

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mHasApplyedSmartEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setKeepScreenOn(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->loadMainThumbnail(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "startTime":J
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 184
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/video/editor/NexVideoEditor$2;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;JLjava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/video/editor/NexEngine;->init(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public onCheckDirectExport(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1223
    return-void
.end method

.method public onClipInfoDone()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public onEncodingDone(ZI)V
    .locals 8
    .param p1, "b"    # Z
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x0

    .line 1141
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v5, :cond_0

    .line 1142
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-nez p1, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v7, v5, p2}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeEnd(ZI)V

    .line 1144
    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1145
    const-string v5, "NexVideoEditor"

    const-string v6, "onEncodingDone errorCode : %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1146
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1148
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1149
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1150
    .local v3, "key":Ljava/lang/String;
    const-string v6, "bg_audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 1152
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    const-string/jumbo v6, "usingBGM"

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->access$2400(Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v5, v6

    .line 1142
    goto :goto_0

    .line 1153
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v6, "filter"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .line 1155
    .local v2, "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    const-string/jumbo v6, "usingFilter"

    invoke-static {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->access$2500(Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;)Lcom/miui/gallery/video/editor/Filter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/video/editor/Filter;->getFilterId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1156
    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_4
    const-string/jumbo v6, "source_audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1157
    const-string v6, "disable_source_audio"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1158
    :cond_5
    const-string/jumbo v6, "trim"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1159
    const-string/jumbo v6, "usingTRIM"

    const-string/jumbo v7, "trim"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1160
    :cond_6
    const-string v6, "edit_type_auto_water_mark_text"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1161
    const-string/jumbo v6, "usingText"

    const-string/jumbo v7, "text"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "video_editor"

    const-string/jumbo v6, "video_editor_using_effect"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1166
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    return-void
.end method

.method public onEncodingProgress(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeProgress(I)V

    .line 1218
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public onFastPreviewStartDone(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 1235
    return-void
.end method

.method public onFastPreviewStopDone(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1239
    return-void
.end method

.method public onFastPreviewTimeDone(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1243
    return-void
.end method

.method public onPlayEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1170
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    .line 1171
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 1173
    const-string v0, "NexVideoEditor"

    const-string v1, "onPlayEnd"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_0
    return-void
.end method

.method public onPlayFail(II)V
    .locals 6
    .param p1, "err"    # I
    .param p2, "iClipID"    # I

    .prologue
    const/4 v5, 0x0

    .line 1179
    const-string v1, "NexVideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayFail : error code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clipId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1181
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "errorcofr"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_play_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1184
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v1, :sswitch_data_0

    .line 1193
    :cond_0
    :goto_0
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1194
    return-void

    .line 1188
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mCurrentEnocdeStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    const/4 v2, -0x1

    invoke-interface {v1, v5, v2}, Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;->onEncodeEnd(ZI)V

    goto :goto_0

    .line 1184
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPlayStart()V
    .locals 2

    .prologue
    .line 1198
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    .line 1199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1200
    const-string v0, "NexVideoEditor"

    const-string v1, "onPlayStart"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_0
    return-void
.end method

.method public onPreviewPeakMeter(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1247
    return-void
.end method

.method public onProgressThumbnailCaching(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTrimStateInterface:Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;->onTrimProgress(I)V

    .line 1230
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine onProgressThumbnailCaching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public onSeekStateChanged(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 1210
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public onSetTimeDone(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTimeSuccess:Z

    .line 1122
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1123
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetTimeDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public onSetTimeFail(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1130
    const-string v0, "NexVideoEditor"

    const-string v1, "onSetTimeFail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method public onSetTimeIgnored()V
    .locals 2

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->updataSeek()V

    .line 1136
    const-string v0, "NexVideoEditor"

    const-string v1, "onSetTimeIgnored"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public onStateChange(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    const/4 v2, 0x2

    .line 1066
    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 1067
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 1068
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mPauseOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 1073
    :cond_0
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nexEngineState : old state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public onTimeChange(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 1114
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->onTimeChanged(I)V

    .line 1117
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 533
    return-void
.end method

.method public pickThumbnail(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 768
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pickThumbnailSerial(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pickThumbnailSerial(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 773
    const/4 v3, 0x0

    .line 774
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 775
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 776
    .local v0, "count":I
    const v1, 0x7fffffff

    .line 777
    .local v1, "differenceValue":I
    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 778
    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->preLoadVideoThumbnails:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/video/editor/VideoThumbnail;

    .line 779
    .local v4, "temp":Lcom/miui/gallery/video/editor/VideoThumbnail;
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getIntrinsicTime()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 780
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getIntrinsicTime()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 781
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mThumbnailPickCursor:I

    .line 782
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoThumbnail;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "count":I
    .end local v1    # "differenceValue":I
    .end local v2    # "i":I
    .end local v4    # "temp":Lcom/miui/gallery/video/editor/VideoThumbnail;
    :cond_0
    return-object v3
.end method

.method public play()V
    .locals 3

    .prologue
    .line 517
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 525
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 519
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 520
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->play()V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->destroy()V

    .line 497
    invoke-static {}, Lcom/miui/gallery/video/editor/NexEngine;->releaseEngine()V

    .line 498
    return-void
.end method

.method public resetProject(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 602
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$8;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 615
    .local v0, "change":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->addChange(Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v1

    return v1
.end method

.method public restoreEditState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 340
    const-string v7, "filter"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "filter"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .line 342
    .local v2, "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    if-nez v2, :cond_0

    .line 343
    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    invoke-direct {v2, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/Filter;)V

    .line 345
    .restart local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "filter"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v2    # "filterEffect":Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
    :cond_1
    const-string v7, "bg_audio"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "bg_audio"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 350
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    if-nez v0, :cond_2

    .line 351
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    invoke-direct {v0, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V

    .line 353
    .restart local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "bg_audio"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v0    # "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    :cond_3
    const-string/jumbo v7, "source_audio"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 357
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string/jumbo v8, "source_audio"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    .line 358
    .local v1, "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    if-nez v1, :cond_4

    .line 359
    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    .end local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    const/4 v7, 0x1

    invoke-direct {v1, p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 361
    .restart local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v8, "source_audio"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v1    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;
    :cond_5
    const-string v7, "edit_type_water_mark"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 365
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_water_mark"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .line 366
    .local v6, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    if-nez v6, :cond_6

    .line 367
    new-instance v6, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .end local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    invoke-direct {v6, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 369
    .restart local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_water_mark"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v6    # "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    :cond_7
    const-string v7, "edit_type_auto_water_mark_text"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 373
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_auto_water_mark_text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .line 374
    .local v4, "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    if-nez v4, :cond_8

    .line 375
    new-instance v4, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    .end local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    invoke-direct {v4, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$1;)V

    .line 377
    .restart local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_auto_water_mark_text"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v4    # "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    :cond_9
    const-string v7, "edit_type_adjust"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 381
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_adjust"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    .line 382
    .local v5, "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    if-nez v5, :cond_a

    .line 383
    new-instance v5, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    .end local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 385
    .restart local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    :cond_a
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_adjust"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v5    # "videoEditorAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;
    :cond_b
    const-string v7, "edit_type_smart_effect_template"

    invoke-direct {p0, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->haveChange(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 389
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_smart_effect_template"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 390
    .local v3, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-nez v3, :cond_c

    .line 391
    new-instance v3, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .end local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    invoke-direct {v3, p0, v9}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/SmartEffect;)V

    .line 393
    .restart local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_c
    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v8, "edit_type_smart_effect_template"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v3    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_d
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 502
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 510
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v0, :cond_0

    .line 505
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setEngineState(I)V

    .line 506
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resume()V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public saveEditState()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mSavedEditValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 336
    return-void
.end method

.method public seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 573
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->seekOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 574
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    sparse-switch v0, :sswitch_data_0

    .line 589
    const-string v0, "NexVideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek is not allowed at EngineState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 576
    :sswitch_0
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$7;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->pause(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto :goto_0

    .line 586
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->doSeek(I)V

    goto :goto_0

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x68 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAutoWaterMark(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showTime"    # I

    .prologue
    .line 874
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;ILcom/miui/gallery/video/editor/NexVideoEditor$1;)V

    .line 875
    .local v0, "textClip":Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_auto_water_mark_text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const/4 v1, 0x0

    return v1
.end method

.method public setBackgroundMusic(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v1, "bg_audio"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    return-void
.end method

.method protected setDisplayView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    check-cast p1, Lcom/nexstreaming/nexeditorsdk/nexEngineView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setView(Lcom/nexstreaming/nexeditorsdk/nexEngineView;)I

    .line 714
    return-void
.end method

.method public setFilter(Lcom/miui/gallery/video/editor/Filter;)V
    .locals 3
    .param p1, "filter"    # Lcom/miui/gallery/video/editor/Filter;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v1, "filter"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/Filter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    return-void
.end method

.method public setSmartEffectTemplate(Lcom/miui/gallery/video/editor/SmartEffect;)Z
    .locals 3
    .param p1, "smartEffect"    # Lcom/miui/gallery/video/editor/SmartEffect;

    .prologue
    .line 1778
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/SmartEffect;)V

    .line 1779
    .local v0, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_smart_effect_template"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    const/4 v1, 0x0

    return v1
.end method

.method public setSourceAudioEnable(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string/jumbo v1, "source_audio"

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor$SourceAudioChange;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    return-void
.end method

.method public setTrimInfo(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 881
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;II)V

    .line 882
    .local v0, "trimInfo":Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setTrimInfo(Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;)V

    .line 883
    return-void
.end method

.method public setVideoEditorAdjust(Z)V
    .locals 3
    .param p1, "adjust"    # Z

    .prologue
    .line 1508
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$VideoEditorAdjust;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)V

    .line 1509
    .local v0, "changeAdjust":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mApplyedEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_adjust"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    return-void
.end method

.method public setWarterMark(ILjava/lang/String;)Z
    .locals 3
    .param p1, "timeType"    # I
    .param p2, "templateid"    # Ljava/lang/String;

    .prologue
    .line 867
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;ILjava/lang/String;)V

    .line 868
    .local v0, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mTempEditValue:Ljava/util/HashMap;

    const-string v2, "edit_type_water_mark"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const/4 v1, 0x0

    return v1
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->startPreview(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 1009
    return-void
.end method

.method public startPreview(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 2
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 1012
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    packed-switch v1, :pswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1015
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngin:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getCurrentPlayTimeTime()I

    move-result v0

    .line 1018
    .local v0, "currentTime":I
    if-nez v0, :cond_1

    const/16 v0, 0x64

    .end local v0    # "currentTime":I
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toThirdEditor(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 417
    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mEngineState:I

    if-nez v3, :cond_1

    .line 419
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mNexProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->makeKineMasterIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 428
    if-eqz v2, :cond_1

    .line 429
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 430
    const-string/jumbo v3, "video_editor"

    const-string/jumbo v4, "video_editor_to_3rd_exitor"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 423
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    :try_start_3
    const-string v3, "com.nexstreaming.app.kinemasterfree"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/video/editor/util/IntentUtil;->makeMarketIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    const-string/jumbo v3, "video_editor"

    const-string/jumbo v4, "video_editor_to_market"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 437
    :catch_2
    move-exception v0

    .line 438
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NexVideoEditor"

    const-string v4, "no market found !!!!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
