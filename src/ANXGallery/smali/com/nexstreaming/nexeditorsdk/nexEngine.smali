.class public final Lcom/nexstreaming/nexeditorsdk/nexEngine;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimRatioResultListener;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$a;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;,
        Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;
    }
.end annotation


# static fields
.field public static final DirectExportOption_AudioEncode:I = 0x1

.field public static final DirectExportOption_None:I = 0x0

.field public static final ExportAVCLevel1:I = 0x1

.field public static final ExportAVCLevel11:I = 0x4

.field public static final ExportAVCLevel12:I = 0x8

.field public static final ExportAVCLevel13:I = 0x10

.field public static final ExportAVCLevel1b:I = 0x2

.field public static final ExportAVCLevel2:I = 0x20

.field public static final ExportAVCLevel21:I = 0x40

.field public static final ExportAVCLevel22:I = 0x80

.field public static final ExportAVCLevel3:I = 0x100

.field public static final ExportAVCLevel31:I = 0x200

.field public static final ExportAVCLevel32:I = 0x400

.field public static final ExportAVCLevel4:I = 0x800

.field public static final ExportAVCLevel41:I = 0x1000

.field public static final ExportAVCLevel42:I = 0x2000

.field public static final ExportAVCLevel5:I = 0x4000

.field public static final ExportAVCLevel51:I = 0x8000

.field public static final ExportAVCLevel52:I = 0x10000

.field public static final ExportCodec_AVC:I = 0x10010300

.field public static final ExportCodec_HEVC:I = 0x10010400

.field public static final ExportCodec_MPEG4V:I = 0x10020100

.field public static final ExportCropMode_Enhanced:I = 0x1

.field public static final ExportCropMode_Fill:I = 0x2

.field public static final ExportCropMode_None:I = 0x0

.field public static final ExportHEVCHighTierLevel1:I = 0x2

.field public static final ExportHEVCHighTierLevel2:I = 0x8

.field public static final ExportHEVCHighTierLevel21:I = 0x20

.field public static final ExportHEVCHighTierLevel3:I = 0x80

.field public static final ExportHEVCHighTierLevel31:I = 0x200

.field public static final ExportHEVCHighTierLevel4:I = 0x800

.field public static final ExportHEVCHighTierLevel41:I = 0x2000

.field public static final ExportHEVCHighTierLevel5:I = 0x8000

.field public static final ExportHEVCHighTierLevel51:I = 0x20000

.field public static final ExportHEVCHighTierLevel52:I = 0x80000

.field public static final ExportHEVCHighTierLevel6:I = 0x200000

.field public static final ExportHEVCHighTierLevel61:I = 0x800000

.field public static final ExportHEVCHighTierLevel62:I = 0x2000000

.field public static final ExportHEVCMainTierLevel1:I = 0x1

.field public static final ExportHEVCMainTierLevel2:I = 0x4

.field public static final ExportHEVCMainTierLevel21:I = 0x10

.field public static final ExportHEVCMainTierLevel3:I = 0x40

.field public static final ExportHEVCMainTierLevel31:I = 0x100

.field public static final ExportHEVCMainTierLevel4:I = 0x400

.field public static final ExportHEVCMainTierLevel41:I = 0x1000

.field public static final ExportHEVCMainTierLevel5:I = 0x4000

.field public static final ExportHEVCMainTierLevel51:I = 0x10000

.field public static final ExportHEVCMainTierLevel52:I = 0x40000

.field public static final ExportHEVCMainTierLevel6:I = 0x100000

.field public static final ExportHEVCMainTierLevel61:I = 0x400000

.field public static final ExportHEVCMainTierLevel62:I = 0x1000000

.field public static final ExportMPEG4Level0:I = 0x1

.field public static final ExportMPEG4Level0b:I = 0x2

.field public static final ExportMPEG4Level1:I = 0x4

.field public static final ExportMPEG4Level2:I = 0x8

.field public static final ExportMPEG4Level3:I = 0x10

.field public static final ExportMPEG4Level4:I = 0x20

.field public static final ExportMPEG4Level4a:I = 0x40

.field public static final ExportMPEG4Level5:I = 0x80

.field public static final ExportProfile_AVCBaseline:I = 0x1

.field public static final ExportProfile_AVCExtended:I = 0x3

.field public static final ExportProfile_AVCHigh:I = 0x4

.field public static final ExportProfile_AVCHigh10:I = 0x5

.field public static final ExportProfile_AVCHigh422:I = 0x6

.field public static final ExportProfile_AVCHigh444:I = 0x7

.field public static final ExportProfile_AVCMain:I = 0x2

.field public static final ExportProfile_HEVCMain:I = 0x1

.field public static final ExportProfile_HEVCMain10:I = 0x2

.field public static final ExportProfile_MPEG4VASP:I = 0x8000

.field public static final ExportProfile_MPEG4VSimple:I = 0x1

.field private static final PERSIST_INTERVAL:I = 0x1f4

.field private static final PREWAKE_INTERVAL:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "nexEngine"

.field private static final export_audio_sampling_rate:I = 0xac44

.field private static final export_fps:I = 0xbb8

.field private static final kState_export:I = 0x2

.field private static final kState_idle:I = 0x0

.field private static final kState_load:I = 0x1

.field private static layerZOrderComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final retCheckDirectExport_ClipCountZero:I = 0x3

.field public static final retCheckDirectExport_EncoderDSIMismatch:I = 0xb

.field public static final retCheckDirectExport_FilterApplied:I = 0xf

.field public static final retCheckDirectExport_HasImageClip:I = 0x7

.field public static final retCheckDirectExport_HasSpeedControl:I = 0xc

.field public static final retCheckDirectExport_HasVideoLayer:I = 0x8

.field public static final retCheckDirectExport_InvalidClipList:I = 0x2

.field public static final retCheckDirectExport_InvalidHandle:I = 0x1

.field public static final retCheckDirectExport_InvalidRotate:I = 0xe

.field public static final retCheckDirectExport_InvalidVideoInfo:I = 0x4

.field public static final retCheckDirectExport_NotStartIFrame:I = 0x6

.field public static final retCheckDirectExport_OK:I = 0x0

.field public static final retCheckDirectExport_SetClipEffect:I = 0xa

.field public static final retCheckDirectExport_SetTransitionEffect:I = 0x9

.field public static final retCheckDirectExport_UnmatchedVideoCodec:I = 0x5

.field public static final retCheckDirectExport_UnsupportedCodec:I = 0xd

.field private static sExportVideoTrackUUIDMode:I

.field private static sLoadListAsync:Z

.field private static sNextId:I

.field private static sTranscodeListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

.field private static sTranscodeMode:Z

.field private static sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private static s_exportProfiles:[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;


# instance fields
.field async_facedetect_worker_list_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private bLetterBox:Z

.field bNeedScaling:Z

.field private cacheSeekMode:Z

.field private externalImageExportProcessing:Z

.field private facedetect_asyncmode:Z

.field private facedetect_syncclip_count:I

.field private facedetect_undetected_clip_cropping_mode:I

.field private lastCheckDirectExportOption:I

.field private lastSeekTime:I

.field private mActiveRenderLayers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mCachedNexAudioClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedNexVisualClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPlayTime:I

.field private mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

.field private mEncodeBitrate:I

.field private mEncodeHeight:I

.field private mEncodeMaxFileSize:J

.field private mEncodeWidth:I

.field private mEnhancedCropMode:I

.field private mEnhancedCropOutputHeight:I

.field private mEnhancedCropOutputWidth:I

.field private mEventListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

.field private mExportFilePath:Ljava/lang/String;

.field private mExportTotalTime:I

.field private mForceMixExportMode:Z

.field private mId:I

.field private mLastManualVolCtl:I

.field private mLastProjectFadeIn:I

.field private mLastProjectFadeOut:I

.field private mLastProjectVolume:I

.field private mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field private mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mRenderInCurrentPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

.field private m_layerLock:Z

.field private m_layerRenderCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;

.field private m_layerRenderLock:Ljava/lang/Object;

.field private m_onSurfaceChangeListener:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    sput-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    .line 114
    sput v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    .line 119
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    .line 120
    sput-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 121
    sput-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    .line 142
    sput v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sNextId:I

    .line 4006
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$5;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$5;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->layerZOrderComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 100
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    .line 102
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_onSurfaceChangeListener:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;

    .line 103
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 106
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEventListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    .line 117
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mActiveRenderLayers:Ljava/util/Set;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mRenderInCurrentPass:Ljava/util/List;

    .line 144
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastCheckDirectExportOption:I

    .line 145
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 146
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    .line 1387
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1771
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    .line 2133
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    .line 3155
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeIn:I

    .line 3156
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeOut:I

    .line 3157
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectVolume:I

    .line 3158
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastManualVolCtl:I

    .line 3678
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderLock:Ljava/lang/Object;

    .line 3684
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerLock:Z

    .line 4017
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;

    .line 5087
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    .line 5088
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    .line 5089
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    .line 5123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    .line 499
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    .line 500
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexEngine create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mAppContext:Landroid/content/Context;

    .line 503
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 505
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getOverlayCoordinateMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(III)V

    .line 506
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getScreenMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I)V

    .line 508
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;)V

    .line 512
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->y()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 513
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Z)V

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Z)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 100
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    .line 102
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_onSurfaceChangeListener:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;

    .line 103
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 106
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEventListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    .line 117
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mActiveRenderLayers:Ljava/util/Set;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mRenderInCurrentPass:Ljava/util/List;

    .line 144
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastCheckDirectExportOption:I

    .line 145
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 146
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    .line 1387
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1771
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    .line 2133
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    .line 3155
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeIn:I

    .line 3156
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeOut:I

    .line 3157
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectVolume:I

    .line 3158
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastManualVolCtl:I

    .line 3678
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderLock:Ljava/lang/Object;

    .line 3684
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerLock:Z

    .line 4017
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;

    .line 5087
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    .line 5088
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    .line 5089
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    .line 5123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    .line 521
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    .line 522
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexEngine create internal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mAppContext:Landroid/content/Context;

    .line 525
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 527
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getOverlayCoordinateMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(III)V

    .line 528
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getScreenMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I)V

    .line 530
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;)V

    .line 531
    if-eqz p2, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setMark()V

    .line 534
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCurrentPlayTime:I

    return p1
.end method

.method static synthetic access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/nexstreaming/nexeditorsdk/nexEngine;ZZ)I
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_onSurfaceChangeListener:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadEffectsInEditor(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeWidth:I

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 93
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeBitrate:I

    return v0
.end method

.method static synthetic access$2300(Lcom/nexstreaming/nexeditorsdk/nexEngine;)J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerLock:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mRenderInCurrentPass:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mActiveRenderLayers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->layerZOrderComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexClip;ILandroid/graphics/RectF;I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateFaceInfo2Clip(Lcom/nexstreaming/nexeditorsdk/nexClip;ILandroid/graphics/RectF;I)V

    return-void
.end method

.method static synthetic access$400()Lcom/nexstreaming/nexeditorsdk/nexEngineListener;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEventListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    return v0
.end method

.method static synthetic access$802(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    return p1
.end method

.method static synthetic access$900()Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method private applyCropSpeed()V
    .locals 0

    .prologue
    .line 5688
    return-void
.end method

.method private static bsearch([II)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2654
    .line 2655
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v3, v0

    .line 2656
    :goto_0
    if-gt v3, v2, :cond_3

    .line 2658
    add-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    .line 2659
    aget v4, p0, v1

    if-ne v4, p1, :cond_1

    move v0, v1

    .line 2663
    :cond_0
    :goto_1
    return v0

    .line 2660
    :cond_1
    aget v4, p0, v1

    if-ge v4, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_0

    .line 2661
    :cond_2
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_0

    .line 2663
    :cond_3
    if-lez v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method private checkUpdateProject(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3062
    .line 3063
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3064
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 3065
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 3066
    :goto_0
    if-ge v3, v4, :cond_a

    .line 3067
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3068
    const-string v0, "nexEngine"

    const-string v3, "checkUpdateProject video not equals"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    move v3, v0

    .line 3083
    :goto_2
    if-nez v3, :cond_8

    .line 3084
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 3085
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 3086
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 3087
    :goto_3
    if-ge v2, v4, :cond_8

    .line 3088
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3090
    const-string v0, "nexEngine"

    const-string v2, "checkUpdateProject audio not equals"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_0
    :goto_4
    if-eqz v1, :cond_1

    .line 3106
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    .line 3107
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    .line 3110
    :cond_1
    return v1

    .line 3066
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3075
    :cond_3
    const-string v0, "nexEngine"

    const-string v3, "checkUpdateProject video diff size"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_2

    .line 3078
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v3, v1

    .line 3079
    goto :goto_2

    .line 3087
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3096
    :cond_6
    const-string v0, "nexEngine"

    const-string v2, "checkUpdateProject audio diff size"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3099
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method private clearList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2984
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]clearList()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    if-eqz v0, :cond_0

    .line 2986
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    .line 2987
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->asyncDrawInfoList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I

    .line 2992
    :goto_0
    return-void

    .line 2989
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    .line 2990
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->asyncDrawInfoList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I

    goto :goto_0
.end method

.method private defaultFaceDetectSetting()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5118
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    .line 5119
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    .line 5120
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    .line 5121
    return-void
.end method

.method private encodeEffectOptions(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2995
    const/4 v1, 0x1

    .line 2997
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2998
    if-eqz v1, :cond_0

    .line 2999
    const/4 v1, 0x0

    move v2, v1

    .line 3003
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 3006
    goto :goto_0

    .line 3001
    :cond_0
    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_1

    .line 3007
    :catch_0
    move-exception v0

    .line 3008
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3010
    :cond_1
    return-void
.end method

.method private fastPreviewStart(IIII)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->fastPreviewStart(IIII)I

    .line 2437
    const/4 v0, 0x1

    return v0
.end method

.method private fastPreviewStop()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->fastPreviewStop()I

    .line 2477
    const/4 v0, 0x1

    return v0
.end method

.method private fastPreviewTime(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->fastPreviewTime(I)I

    .line 2457
    const/4 v0, 0x1

    return v0
.end method

.method public static getExportProfile()[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;
    .locals 18

    .prologue
    .line 5780
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 5781
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    .line 5874
    :goto_0
    return-object v1

    .line 5783
    :cond_0
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->s_exportProfiles:[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    if-nez v1, :cond_f

    .line 5784
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 5785
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5786
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v6

    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_e

    aget-object v8, v6, v4

    .line 5788
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5786
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 5790
    :cond_2
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    .line 5792
    const/4 v1, 0x0

    :goto_2
    array-length v2, v9

    if-ge v1, v2, :cond_1

    .line 5793
    aget-object v2, v9, v1

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v9, v1

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v9, v1

    const-string/jumbo v3, "video/mp4v-es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5794
    :cond_3
    new-instance v10, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    invoke-direct {v10}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;-><init>()V

    .line 5795
    aget-object v2, v9, v1

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5796
    const v2, 0x10010300

    invoke-static {v10, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3202(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;I)I

    .line 5802
    :cond_4
    :goto_3
    const-string v2, "nexEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "codec name="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    :try_start_0
    aget-object v2, v9, v1

    invoke-virtual {v8, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 5805
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 5806
    iget-object v12, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v13, v12

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v13, :cond_c

    aget-object v14, v12, v3

    .line 5807
    invoke-static {v10}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3200(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;)I

    move-result v2

    const v15, 0x10010300

    if-ne v2, v15, :cond_a

    .line 5808
    const/4 v2, 0x0

    .line 5809
    iget v15, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v15, :sswitch_data_0

    .line 5825
    :goto_5
    if-nez v2, :cond_8

    .line 5806
    :cond_5
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 5797
    :cond_6
    aget-object v2, v9, v1

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5798
    const v2, 0x10010400

    invoke-static {v10, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3202(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;I)I

    goto :goto_3

    .line 5799
    :cond_7
    aget-object v2, v9, v1

    const-string/jumbo v3, "video/mp4v-es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5800
    const v2, 0x10020100

    invoke-static {v10, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3202(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;I)I

    goto :goto_3

    .line 5811
    :sswitch_0
    const/4 v2, 0x1

    .line 5812
    goto :goto_5

    .line 5814
    :sswitch_1
    const/4 v2, 0x2

    .line 5815
    goto :goto_5

    .line 5820
    :sswitch_2
    const/4 v2, 0x4

    goto :goto_5

    .line 5827
    :cond_8
    :try_start_1
    const-string v15, "nexEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "codec profile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", level="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 5829
    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v2, v14}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 5861
    :catch_0
    move-exception v2

    .line 5862
    const-string v3, "nexEngine"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5792
    :cond_9
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 5831
    :cond_a
    :try_start_2
    invoke-static {v10}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3200(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;)I

    move-result v2

    const v15, 0x10010400

    if-ne v2, v15, :cond_b

    .line 5832
    iget v2, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 5834
    if-eqz v2, :cond_5

    .line 5837
    const-string v15, "nexEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "codec profile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", level="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 5840
    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_6

    .line 5842
    :cond_b
    invoke-static {v10}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3200(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;)I

    move-result v2

    const v15, 0x10020100

    if-ne v2, v15, :cond_5

    .line 5843
    iget v2, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 5845
    if-eqz v2, :cond_5

    .line 5848
    const-string v15, "nexEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "codec profile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", level="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iget v0, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 5851
    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_6

    .line 5856
    :cond_c
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;

    invoke-static {v10, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3302(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;[Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;)[Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;

    .line 5857
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 5858
    invoke-static {v10}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;->access$3300(Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;)[Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;

    move-result-object v3

    new-instance v12, Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/nexstreaming/nexeditorsdk/nexEngine$ProfileAndLevel;-><init>(IILcom/nexstreaming/nexeditorsdk/nexEngine$1;)V

    aput-object v12, v3, v2

    .line 5857
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5860
    :cond_d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 5869
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    sput-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->s_exportProfiles:[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    .line 5870
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 5871
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->s_exportProfiles:[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    aput-object v1, v3, v2

    .line 5870
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    .line 5874
    :cond_f
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->s_exportProfiles:[Lcom/nexstreaming/nexeditorsdk/nexEngine$ExportProfile;

    goto/16 :goto_0

    .line 5809
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private getExternalExport(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;Ljava/lang/String;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1848
    if-eqz p3, :cond_1

    .line 1849
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getInstance()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1851
    if-eqz v1, :cond_0

    .line 1852
    const-class v0, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1853
    check-cast v0, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->OnPrepare(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-direct {v0, p0, v1, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V

    .line 1867
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    .line 1858
    goto :goto_0

    .line 1861
    :cond_1
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getInstance()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    move-result-object v0

    const-class v1, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-virtual {v0, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    .line 1862
    if-eqz v0, :cond_2

    .line 1863
    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->OnPrepare(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1864
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;

    invoke-direct {v1, p0, v0, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1867
    goto :goto_0
.end method

.method private getOverlayVideoCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3992
    .line 3994
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-nez v1, :cond_0

    .line 4003
    :goto_0
    return v0

    .line 3997
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 3998
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3999
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 4001
    goto :goto_1

    :cond_1
    move v0, v1

    .line 4003
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private isSetProject(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 967
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-lez v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 973
    :cond_1
    sget-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-eqz v1, :cond_2

    .line 974
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v1, :cond_2

    .line 975
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-gtz v1, :cond_0

    .line 981
    :cond_2
    if-eqz p1, :cond_3

    .line 982
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ProjectNotAttachedException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ProjectNotAttachedException;-><init>()V

    throw v0

    .line 984
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadClipToEngine(Ljava/util/List;Ljava/util/List;ZZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 3114
    const/4 v1, 0x0

    .line 3115
    if-eqz p4, :cond_0

    .line 3116
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    .line 3117
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    .line 3119
    const-string v1, "nexEngine"

    const-string v2, "loadClipToEngine update force"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 3129
    :goto_0
    if-eqz v2, :cond_5

    .line 3130
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3131
    new-array v0, v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    .line 3133
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3134
    if-nez v1, :cond_3

    .line 3135
    if-eqz p3, :cond_2

    .line 3136
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    invoke-virtual {v1, v0, v4, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    .line 3152
    :goto_1
    return v2

    .line 3121
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->checkUpdateProject(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3122
    const-string v1, "nexEngine"

    const-string v2, "loadClipToEngine update loadlist call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 3123
    goto :goto_0

    .line 3125
    :cond_1
    const-string v0, "nexEngine"

    const-string v2, "loadClipToEngine No update"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    .line 3138
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    invoke-virtual {v1, v0, v4, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    goto :goto_1

    .line 3141
    :cond_3
    new-array v1, v1, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    .line 3142
    if-eqz p3, :cond_4

    .line 3143
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-virtual {v3, v0, v1, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    goto :goto_1

    .line 3145
    :cond_4
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-virtual {v3, v0, v1, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    goto :goto_1

    .line 3150
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->clearProject()I

    goto :goto_1
.end method

.method private loadEffectsInEditor(Z)V
    .locals 0

    .prologue
    .line 4255
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadEffectsInEditor_usingAssetPackageManager(Z)V

    .line 4256
    return-void
.end method

.method private loadEffectsInEditor_usingAssetPackageManager(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 4260
    .line 4261
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4263
    const-string v0, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TranscoderMode ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-eqz v0, :cond_1

    .line 4265
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-nez v0, :cond_0

    .line 4306
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/Iterable;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;ZZ)V

    .line 4307
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3, v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/Iterable;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)V

    .line 4308
    return-void

    .line 4269
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplateApplyMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 4272
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v0

    .line 4273
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4275
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 4277
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEffectID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4282
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplageOverlappedTransitionMode()Z

    move-result v2

    .line 4283
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getPrimaryItems()Ljava/util/List;

    move-result-object v4

    .line 4284
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 4285
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4287
    if-eqz v0, :cond_3

    .line 4288
    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 4289
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4290
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4294
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4296
    if-eqz v0, :cond_4

    .line 4297
    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 4298
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4299
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4284
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method public static prepareSurfaceSetToNull(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4913
    invoke-static {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Z)V

    .line 4914
    return-void
.end method

.method private resolveProject(ZZ)I
    .locals 25

    .prologue
    .line 3161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 3162
    const/4 v13, 0x0

    .line 3163
    sget-boolean v5, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-eqz v5, :cond_3b

    .line 3164
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-object v10, v4

    .line 3167
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    if-eqz v4, :cond_0

    .line 3168
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    .line 3171
    :cond_0
    if-nez v10, :cond_1

    .line 3172
    const-string v4, "nexEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]resolveProject() Project is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->clearList()V

    .line 3175
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    .line 3176
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    .line 3675
    :goto_1
    return v13

    .line 3180
    :cond_1
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 3181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLetterboxEffect()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setBaseFilterRenderItem(Ljava/lang/String;)I

    .line 3182
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getPrimaryItems()Ljava/util/List;

    move-result-object v16

    .line 3184
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 3185
    const/4 v12, 0x1

    .line 3187
    if-nez v17, :cond_2

    .line 3188
    const-string v4, "nexEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]resolveProject() Project["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] clip is zero"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->clearList()V

    .line 3190
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexVisualClips:Ljava/util/List;

    .line 3191
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCachedNexAudioClips:Ljava/util/List;

    goto :goto_1

    .line 3194
    :cond_2
    const-string v4, "nexEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]resolveProject() Project["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getOverlayVideoCount()I

    move-result v18

    .line 3199
    const/4 v14, 0x0

    .line 3203
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3206
    const/16 v11, 0x7531

    .line 3208
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3210
    const/4 v4, 0x0

    move v15, v4

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_1c

    .line 3211
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 3212
    const/4 v7, 0x0

    .line 3214
    if-nez v15, :cond_3

    .line 3215
    const/4 v8, 0x1

    .line 3216
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOpeningTitle()Ljava/lang/String;

    move-result-object v7

    move v9, v8

    move-object v8, v7

    .line 3223
    :goto_3
    new-instance v21, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    invoke-direct/range {v21 .. v21}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;-><init>()V

    .line 3225
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v7

    .line 3226
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 3227
    invoke-virtual {v7, v12}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setClipID(I)V

    .line 3228
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3217
    :cond_3
    add-int/lit8 v8, v17, -0x1

    if-ne v15, v8, :cond_4

    .line 3218
    const/4 v8, 0x2

    .line 3219
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getEndingTitle()Ljava/lang/String;

    move-result-object v7

    move v9, v8

    move-object v8, v7

    goto :goto_3

    .line 3221
    :cond_4
    const/4 v8, 0x0

    move v9, v8

    move-object v8, v7

    goto :goto_3

    .line 3231
    :cond_5
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    .line 3232
    move-object/from16 v0, v21

    iput v12, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 3233
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    .line 3234
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    .line 3236
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    .line 3237
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getBGMVolume()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    .line 3238
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    .line 3240
    const/4 v7, 0x2

    if-ne v9, v7, :cond_a

    .line 3241
    const-string v7, "none"

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    .line 3242
    const/4 v7, 0x0

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    .line 3251
    :goto_6
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    .line 3252
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOverlap()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    .line 3254
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    .line 3255
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    .line 3256
    const/4 v7, 0x0

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    .line 3259
    :cond_6
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectStartTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    .line 3260
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectEndTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    .line 3262
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 3298
    :goto_7
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    .line 3299
    move-object/from16 v0, v21

    iget v14, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    .line 3300
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    .line 3302
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getEncodedEffectOptions(Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    .line 3304
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVignetteEffect()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVignette:I

    .line 3307
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 3308
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3309
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 3311
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 3312
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 3314
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v7, v9, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->enhancedCrop(Landroid/graphics/Rect;IIFF)V

    .line 3315
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v8, v9, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->enhancedCrop(Landroid/graphics/Rect;IIFF)V

    .line 3317
    new-instance v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v9, v0, v1, v2, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3318
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v9, v0, v1, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3336
    :goto_9
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCombinedBrightness()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBrightness:I

    .line 3337
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCombinedSaturation()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSaturation:I

    .line 3338
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCombinedContrast()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mContrast:I

    .line 3339
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTintColor()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTintcolor:I

    .line 3340
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getLUTId()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mLUT:I

    .line 3341
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCustomLUTA()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_A:I

    .line 3342
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCustomLUTB()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_B:I

    .line 3343
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCustomLUTPower()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_Power:I

    .line 3344
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeList()[I

    move-result-object v7

    if-eqz v7, :cond_16

    .line 3345
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeList()[I

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    .line 3349
    :goto_a
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevelList()[I

    move-result-object v7

    if-eqz v7, :cond_17

    .line 3350
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevelList()[I

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    .line 3355
    :goto_b
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isMotionTrackedVideo()Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMotionTracked:I

    .line 3357
    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3360
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAVSyncTime()I

    move-result v7

    .line 3361
    if-eqz v7, :cond_3a

    .line 3363
    new-instance v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-direct {v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;-><init>()V

    .line 3364
    add-int/lit8 v4, v11, 0x1

    iput v11, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 3365
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    .line 3366
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 3367
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    iput-object v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    .line 3368
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 3369
    const/4 v9, 0x0

    move-object/from16 v0, v21

    iput v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    .line 3370
    const/4 v9, 0x3

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 3371
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 3372
    const/4 v9, 0x0

    move-object/from16 v0, v21

    iput v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    .line 3373
    const/4 v9, 0x0

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    .line 3374
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    .line 3375
    int-to-float v9, v7

    iget v11, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    int-to-float v11, v11

    mul-float/2addr v9, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v9, v11

    float-to-int v9, v9

    .line 3377
    if-lez v7, :cond_1b

    .line 3378
    move-object/from16 v0, v21

    iget v11, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    if-nez v11, :cond_19

    .line 3379
    move-object/from16 v0, v21

    iget v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    add-int/2addr v7, v9

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3380
    move-object/from16 v0, v21

    iget v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 3399
    :cond_7
    :goto_d
    const/4 v7, 0x0

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3400
    move-object/from16 v0, v21

    iget v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 3401
    iget v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    iget v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    int-to-float v9, v9

    mul-float/2addr v7, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v7, v9

    float-to-int v7, v7

    .line 3402
    iget v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    iget v11, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    add-int/2addr v7, v11

    sub-int v7, v9, v7

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3403
    iget v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    if-gez v7, :cond_8

    .line 3404
    const/4 v7, 0x0

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3406
    :cond_8
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3210
    :goto_e
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    move v11, v4

    goto/16 :goto_2

    .line 3236
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3244
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    .line 3245
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 3246
    const/4 v7, 0x0

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    goto/16 :goto_6

    .line 3248
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    goto/16 :goto_6

    .line 3264
    :pswitch_1
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    .line 3265
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    .line 3266
    const/4 v7, 0x1

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    .line 3267
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    .line 3268
    const/16 v7, 0x64

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    goto/16 :goto_7

    .line 3271
    :pswitch_2
    const/4 v7, 0x4

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    .line 3272
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    :goto_f
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    .line 3273
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    :goto_10
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    .line 3274
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    .line 3275
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalVideoTime:I

    .line 3276
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    .line 3278
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    if-nez v7, :cond_c

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    if-eqz v7, :cond_d

    .line 3279
    :cond_c
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    .line 3280
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    .line 3282
    :cond_d
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFreezeDuration:I

    .line 3283
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    .line 3284
    iget v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    .line 3285
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    .line 3286
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getVoiceChangerFactor()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVoiceChanger:I

    .line 3287
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getCompressor()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCompressor:I

    .line 3288
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPitch()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPitchFactor:I

    .line 3289
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getMusicEffect()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMusicEffector:I

    .line 3290
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPanLeft()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanLeft:I

    .line 3291
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPanRight()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanRight:I

    .line 3292
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getProcessorStrength()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mProcessorStrength:I

    .line 3293
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getBassStrength()I

    move-result v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBassStrength:I

    .line 3294
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getEnhancedAudioFilter()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 3295
    iget-boolean v7, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mPropertySlowVideoMode:Z

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, v21

    iput v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSlowMotion:I

    goto/16 :goto_7

    .line 3272
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_f

    .line 3273
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 3295
    :cond_10
    const/4 v7, 0x0

    goto :goto_11

    .line 3304
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 3319
    :cond_12
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 3320
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v22, 0x186a0

    const v23, 0x186a0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3321
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v22, 0x186a0

    const v23, 0x186a0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    goto/16 :goto_9

    .line 3323
    :cond_13
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_14

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v7

    iget v7, v7, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_15

    .line 3324
    :cond_14
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    iget v8, v8, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    iget v9, v9, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 3325
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    move/from16 v22, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3326
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    iget v8, v8, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    iget v9, v9, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 3327
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    move/from16 v22, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    goto/16 :goto_9

    .line 3329
    :cond_15
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    iget v8, v8, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    iget v9, v9, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    .line 3330
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    move/from16 v22, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3331
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    iget v8, v8, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v9

    iget v9, v9, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    .line 3332
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    move/from16 v22, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    goto/16 :goto_9

    .line 3347
    :cond_16
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    aput v9, v7, v8

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    goto/16 :goto_a

    .line 3352
    :cond_17
    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    goto/16 :goto_b

    .line 3355
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 3382
    :cond_19
    move-object/from16 v0, v21

    iget v11, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    iput v11, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3384
    move-object/from16 v0, v21

    iget v11, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    if-nez v11, :cond_1a

    .line 3385
    move-object/from16 v0, v21

    iget v7, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    add-int/2addr v7, v9

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3386
    const/4 v7, 0x0

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    goto/16 :goto_d

    .line 3388
    :cond_1a
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    sub-int v7, v9, v7

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 3389
    iget v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    if-gez v7, :cond_7

    .line 3390
    const/4 v7, 0x0

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    goto/16 :goto_d

    .line 3396
    :cond_1b
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    iput v9, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3397
    move-object/from16 v0, v21

    iget v9, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    sub-int v7, v9, v7

    iput v7, v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    goto/16 :goto_d

    .line 3410
    :cond_1c
    sget-boolean v4, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-nez v4, :cond_33

    .line 3412
    if-lez v18, :cond_22

    .line 3414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v4, :cond_22

    .line 3415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v12

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 3416
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 3417
    new-instance v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    invoke-direct {v11}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;-><init>()V

    .line 3418
    iput v7, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 3419
    iput v7, v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVideoEngineId:I

    .line 3420
    const/4 v8, 0x7

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    .line 3421
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getTotalTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    .line 3422
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    .line 3424
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    .line 3426
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTrimTime()I

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTrimTime()I

    move-result v8

    if-eqz v8, :cond_1e

    .line 3427
    :cond_1d
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTrimTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    .line 3428
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTrimTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    .line 3433
    :goto_13
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getWidth()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    .line 3434
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getHeight()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    .line 3435
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->hasVideo()Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    :goto_14
    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    .line 3436
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->hasAudio()Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x1

    :goto_15
    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    .line 3437
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    .line 3438
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    .line 3440
    const/16 v8, 0x64

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    .line 3441
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getAudioOnOff()Z

    move-result v8

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    :goto_16
    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    .line 3442
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getVolume()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    .line 3443
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    .line 3444
    const-string v8, "none"

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    .line 3445
    const/4 v8, 0x0

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    .line 3446
    new-instance v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const v16, 0x186a0

    const v17, 0x186a0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v12, v15, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3447
    new-instance v8, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const v16, 0x186a0

    const v17, 0x186a0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v12, v15, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 3448
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    .line 3449
    const/4 v8, 0x0

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    .line 3450
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    .line 3451
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    .line 3452
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    .line 3453
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getSpeedControl()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    .line 3455
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3457
    add-int/lit8 v4, v7, 0x1

    :goto_17
    move v7, v4

    .line 3459
    goto/16 :goto_12

    .line 3430
    :cond_1e
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    .line 3431
    const/4 v8, 0x0

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    goto/16 :goto_13

    .line 3435
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_14

    .line 3436
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_15

    .line 3441
    :cond_21
    const/4 v8, 0x0

    goto :goto_16

    .line 3463
    :cond_22
    const/16 v4, 0x2711

    .line 3464
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getBackgroundMusic()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    .line 3465
    if-eqz v8, :cond_38

    .line 3466
    new-instance v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-direct {v9}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;-><init>()V

    .line 3467
    const/16 v7, 0x2712

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 3470
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v4

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 3471
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    .line 3472
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    :goto_18
    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 3473
    const/4 v4, 0x3

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 3474
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getBGMMasterVolumeScale()F

    move-result v4

    const/high16 v11, 0x43480000    # 200.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 3475
    const/4 v4, 0x1

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    .line 3476
    iget v4, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3479
    iget v4, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 3480
    iget v4, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    if-nez v4, :cond_26

    .line 3481
    const/4 v4, 0x0

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3489
    :cond_23
    :goto_19
    iget v4, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    iget v11, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    sub-int/2addr v4, v11

    .line 3490
    if-gtz v4, :cond_24

    .line 3491
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v4

    .line 3493
    :cond_24
    iget-boolean v11, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    if-eqz v11, :cond_27

    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v4

    iget v11, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    add-int/2addr v4, v11

    :goto_1a
    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 3495
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeList()[I

    move-result-object v4

    iput-object v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    .line 3496
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevelList()[I

    move-result-object v4

    iput-object v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    .line 3499
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3502
    :goto_1b
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    .line 3503
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 3472
    :cond_25
    const/4 v4, 0x0

    goto :goto_18

    .line 3483
    :cond_26
    iget v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    iget v11, v10, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    sub-int/2addr v4, v11

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3484
    iget v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    if-gez v4, :cond_23

    .line 3485
    const/4 v4, 0x0

    iput v4, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    goto :goto_19

    .line 3493
    :cond_27
    iget v11, v9, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    add-int/2addr v4, v11

    goto :goto_1a

    .line 3506
    :cond_28
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getAudioItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 3507
    new-instance v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    invoke-direct {v11}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;-><init>()V

    .line 3508
    iget-object v12, v4, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 3510
    iput v7, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 3512
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 3513
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    .line 3514
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v8, 0x1

    :goto_1e
    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 3515
    const/4 v8, 0x3

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 3516
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v8

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 3517
    iget v8, v12, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 3518
    iget v8, v12, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 3519
    iget v8, v4, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 3520
    iget v8, v4, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    iput v8, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 3522
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getSpeedControl()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    .line 3524
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeList()[I

    move-result-object v4

    iput-object v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    .line 3525
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevelList()[I

    move-result-object v4

    iput-object v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    .line 3526
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getVoiceChangerFactor()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    .line 3527
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getCompressor()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    .line 3528
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPitch()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    .line 3529
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getMusicEffect()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    .line 3530
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPanLeft()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    .line 3531
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getPanRight()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    .line 3532
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getProcessorStrength()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    .line 3533
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getBassStrength()I

    move-result v4

    iput v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    .line 3534
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEdit()Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->getEnhancedAudioFilter()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 3536
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3537
    add-int/lit8 v7, v7, 0x1

    .line 3538
    goto/16 :goto_1d

    .line 3514
    :cond_29
    const/4 v8, 0x0

    goto/16 :goto_1e

    .line 3540
    :cond_2a
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplateApplyMode()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2b

    .line 3541
    const/4 v8, 0x1

    const/16 v9, 0x101

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadClipToEngine(Ljava/util/List;Ljava/util/List;ZZI)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3542
    const/4 v4, 0x1

    move v5, v4

    .line 3551
    :goto_1f
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v9

    .line 3553
    const/4 v4, 0x0

    .line 3554
    const/4 v7, 0x0

    .line 3555
    if-eqz v9, :cond_36

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_36

    .line 3556
    const-string v4, "nexEngine"

    const-string v6, "resolve Project for top drawInfo(%d) ++++++++++++++++++++"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    new-array v8, v4, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;

    .line 3559
    const/4 v4, 0x0

    .line 3560
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v6, v4

    move v4, v14

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 3562
    new-instance v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;

    invoke-direct {v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;-><init>()V

    .line 3564
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getID()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mID:I

    .line 3565
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getClipID()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTrackID:I

    .line 3566
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSubEffectID()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mSubEffectID:I

    .line 3568
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEffectID()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEffectID:Ljava/lang/String;

    .line 3569
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTitle()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTitle:Ljava/lang/String;

    .line 3570
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getIsTransition()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mIsTransition:I

    .line 3572
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartTime()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mStartTime:I

    .line 3573
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v13

    iput v13, v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEndTime:I

    .line 3589
    aput-object v12, v8, v6

    .line 3590
    add-int/lit8 v6, v6, 0x1

    .line 3591
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v4

    goto :goto_20

    .line 3546
    :cond_2b
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadClipToEngine(Ljava/util/List;Ljava/util/List;ZZI)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3547
    const/4 v4, 0x1

    move v5, v4

    goto/16 :goto_1f

    .line 3595
    :cond_2c
    const-string v6, "nexEngine"

    const-string v11, "resolve Project for top drawInfo(%d) --------------------"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v4

    .line 3598
    :goto_21
    if-eqz v8, :cond_35

    if-eqz v20, :cond_35

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 3600
    const-string v4, "nexEngine"

    const-string v6, "resolve Project for sub drawInfo(%d) ++++++++++++++++++++"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;

    .line 3602
    const/4 v4, 0x0

    .line 3603
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 3604
    new-instance v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;

    invoke-direct {v11}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;-><init>()V

    .line 3605
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getID()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mID:I

    .line 3606
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getClipID()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTrackID:I

    .line 3607
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSubEffectID()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mSubEffectID:I

    .line 3609
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEffectID()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEffectID:Ljava/lang/String;

    .line 3610
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTitle:Ljava/lang/String;

    .line 3612
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartTime()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mStartTime:I

    .line 3613
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEndTime:I

    .line 3615
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mRotateState:I

    .line 3616
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mUserRotateState:I

    .line 3617
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTranslateX:I

    .line 3618
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTranslateY:I

    .line 3619
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mBrightness:I

    .line 3620
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getContrast()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mContrast:I

    .line 3621
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSaturation()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mSaturation:I

    .line 3622
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTintcolor()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTintcolor:I

    .line 3623
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mLUT:I

    .line 3624
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTA()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_A:I

    .line 3625
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTB()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_B:I

    .line 3626
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTPower()I

    move-result v12

    iput v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_Power:I

    .line 3628
    iget-object v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v13, v15, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 3629
    iget-object v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v13, v15, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 3630
    iget-object v12, v11, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mFaceRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v16

    invoke-virtual {v12, v13, v15, v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 3632
    aput-object v11, v7, v6

    .line 3633
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    .line 3636
    goto/16 :goto_22

    .line 3637
    :cond_2d
    const-string v4, "nexEngine"

    const-string v6, "resolve Project for sub drawInfo(%d) --------------------"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 3640
    :goto_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v6, v8, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->asyncDrawInfoList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I

    .line 3642
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getProjectAudioFadeInTime()I

    move-result v4

    int-to-long v8, v4

    .line 3643
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getProjectAudioFadeOutTime()I

    move-result v4

    int-to-long v6, v4

    .line 3645
    add-long v12, v8, v6

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v4, v12, v16

    if-lez v4, :cond_2e

    .line 3646
    int-to-long v12, v14

    mul-long/2addr v12, v8

    add-long/2addr v6, v8

    div-long v8, v12, v6

    .line 3647
    int-to-long v6, v14

    sub-long/2addr v6, v8

    .line 3650
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeIn:I

    int-to-long v12, v4

    cmp-long v4, v12, v8

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeOut:I

    int-to-long v12, v4

    cmp-long v4, v12, v6

    if-eqz v4, :cond_30

    .line 3651
    :cond_2f
    long-to-int v4, v8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeIn:I

    .line 3652
    long-to-int v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectFadeOut:I

    .line 3653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    long-to-int v8, v8

    long-to-int v6, v6

    invoke-virtual {v4, v8, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProjectVolumeFade(II)I

    .line 3657
    :cond_30
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getProjectVolume()I

    move-result v4

    .line 3658
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectVolume:I

    if-eq v6, v4, :cond_31

    .line 3659
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastProjectVolume:I

    .line 3660
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v6, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProjectVolume(I)I

    .line 3664
    :cond_31
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getManualVolumeControl()I

    move-result v4

    .line 3665
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastManualVolCtl:I

    if-eq v6, v4, :cond_32

    .line 3666
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mLastManualVolCtl:I

    .line 3667
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v6, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProjectManualVolumeControl(I)I

    .line 3674
    :cond_32
    :goto_24
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    move v13, v5

    .line 3675
    goto/16 :goto_1

    .line 3670
    :cond_33
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadClipToEngine(Ljava/util/List;Ljava/util/List;ZZI)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3671
    const/4 v5, 0x1

    goto :goto_24

    :cond_34
    move v5, v13

    goto :goto_24

    :cond_35
    move-object v4, v7

    goto/16 :goto_23

    :cond_36
    move-object v8, v4

    goto/16 :goto_21

    :cond_37
    move v5, v13

    goto/16 :goto_1f

    :cond_38
    move v7, v4

    goto/16 :goto_1b

    :cond_39
    move v4, v7

    goto/16 :goto_17

    :cond_3a
    move v4, v11

    goto/16 :goto_e

    :cond_3b
    move-object v10, v4

    goto/16 :goto_0

    .line 3262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3352
    :array_0
    .array-data 4
        0x64
        0x64
    .end array-data
.end method

.method private setEditorListener()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    if-eqz v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    .line 837
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEditorListener:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/c;)V

    goto :goto_0
.end method

.method public static setExportVideoTrackUUID(Z)V
    .locals 3

    .prologue
    .line 4819
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExportVideoTrackUUID()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    if-eqz p0, :cond_0

    .line 4821
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    .line 4826
    :goto_0
    return-void

    .line 4824
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    goto :goto_0
.end method

.method public static setLoadListAsync(Z)V
    .locals 0

    .prologue
    .line 582
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    .line 583
    return-void
.end method

.method private setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V
    .locals 3

    .prologue
    .line 3956
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3957
    :try_start_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$13;->a:[I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 3988
    :goto_0
    monitor-exit v1

    .line 3989
    :goto_1
    return-void

    .line 3964
    :pswitch_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mActiveRenderLayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3965
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b()V

    goto :goto_0

    .line 3988
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3969
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-nez v0, :cond_0

    .line 3970
    monitor-exit v1

    goto :goto_1

    .line 3977
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mActiveRenderLayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 3980
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerLock:Z

    goto :goto_0

    .line 3984
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_layerLock:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3957
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private transcode(Ljava/lang/String;IIIJII)I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 2076
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    if-ne v1, v3, :cond_1

    .line 2077
    const-string v1, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]already export state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    :goto_0
    return v0

    .line 2081
    :cond_1
    invoke-direct {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2082
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 2083
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    invoke-direct {p0, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    .line 2085
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 2086
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    .line 2087
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    .line 2088
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeWidth:I

    .line 2089
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeHeight:I

    .line 2090
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeBitrate:I

    .line 2091
    iput-wide p5, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    .line 2093
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;

    invoke-direct {v1, p0, p8, p7}, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;II)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 2128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private undoForceMixProject()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5692
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    if-eqz v0, :cond_1

    .line 5693
    invoke-direct {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5694
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]undoForceMixProject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    invoke-direct {p0, v4, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    .line 5697
    :cond_0
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    .line 5700
    :cond_1
    return-void
.end method

.method private updateFaceInfo2Clip(Lcom/nexstreaming/nexeditorsdk/nexClip;ILandroid/graphics/RectF;I)V
    .locals 18

    .prologue
    .line 5214
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 5215
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5216
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 5218
    const/4 v2, 0x1

    .line 5220
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v11

    .line 5221
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v12

    .line 5223
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFaceDetectSpeed()I

    move-result v7

    .line 5224
    const-string v3, "nexEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face Detection speed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5227
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v8, v12

    mul-float/2addr v4, v8

    float-to-int v4, v4

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/RectF;->right:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v12

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v3, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 5228
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v8, v12

    mul-float/2addr v4, v8

    float-to-int v4, v4

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/RectF;->right:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v12

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 5230
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5232
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5233
    int-to-double v2, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v8

    double-to-int v2, v2

    int-to-double v8, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double/2addr v8, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v14

    double-to-int v3, v8

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 5234
    const/4 v2, 0x0

    .line 5235
    const-string v3, "nexEngine"

    const-string v4, "Face Detection Empty "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v2

    .line 5259
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_c

    .line 5260
    :cond_0
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5261
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5262
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5264
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5265
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5266
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetected()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :goto_1
    move/from16 v3, p2

    move-object v7, v6

    invoke-virtual/range {v2 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 5269
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setFaceDetectProcessed(ZLandroid/graphics/Rect;)V

    .line 5452
    :goto_2
    return-void

    .line 5241
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v11, v3

    .line 5242
    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 5244
    iget v4, v5, Landroid/graphics/Rect;->left:I

    div-int/lit8 v8, v3, 0x8

    sub-int/2addr v4, v8

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 5245
    iget v4, v5, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 5246
    const-string v3, "nexEngine"

    const-string v4, "Face Detection width addSpace > 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v12, v3

    .line 5250
    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 5252
    iget v4, v5, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v3, 0x8

    sub-int/2addr v4, v8

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 5253
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 5254
    const-string v3, "nexEngine"

    const-string v4, "Face Detection height addSpace>0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v15, v2

    goto/16 :goto_0

    .line 5268
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 5274
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5275
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v8

    move v5, v11

    move v6, v12

    invoke-virtual/range {v2 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 5294
    if-eqz v15, :cond_9

    .line 5295
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5296
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5298
    const-string v2, "nexEngine"

    const-string v5, "Face Detection true"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_7

    .line 5300
    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    .line 5301
    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 5302
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v5, v2

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 5304
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    if-eqz v2, :cond_8

    .line 5305
    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    .line 5306
    iget v5, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v6, v2, 0x4

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 5307
    iget v5, v4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 5308
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    .line 5309
    iget v5, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v2, 0x4

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 5310
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 5311
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5313
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5314
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5315
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5317
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5318
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5319
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5345
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v15, :cond_b

    const/4 v7, 0x1

    :goto_4
    move/from16 v6, p2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 5451
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setFaceDetectProcessed(ZLandroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 5323
    :cond_9
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_a

    .line 5324
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5325
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5327
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5328
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5329
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5330
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5331
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5332
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5343
    :goto_6
    const-string v2, "nexEngine"

    const-string v5, "Face Detection false  "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5334
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5335
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5336
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5337
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5338
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5339
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5340
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5341
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 5345
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 5349
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 5350
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5353
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5354
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5355
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5356
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 5357
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5358
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5360
    invoke-virtual {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 5361
    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 5362
    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 5363
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 5364
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setFaceDetectProcessed(ZLandroid/graphics/Rect;)V

    goto :goto_7

    .line 5367
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v10, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5368
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v14

    move v13, v7

    invoke-virtual/range {v8 .. v14}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 5388
    if-eqz v15, :cond_12

    .line 5390
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v10, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5391
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v9, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5392
    const-string v8, "nexEngine"

    const-string v13, "Face Detection true"

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v13, :cond_10

    .line 5394
    iget v8, v9, Landroid/graphics/Rect;->top:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v13

    .line 5395
    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 5396
    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v13, v8

    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 5398
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    if-eqz v8, :cond_11

    .line 5399
    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v13

    .line 5400
    iget v13, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v14, v8, 0x4

    sub-int/2addr v13, v14

    iput v13, v10, Landroid/graphics/Rect;->left:I

    .line 5401
    iget v13, v10, Landroid/graphics/Rect;->right:I

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v13

    iput v8, v10, Landroid/graphics/Rect;->right:I

    .line 5402
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v13

    .line 5403
    iget v13, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v8, 0x4

    sub-int/2addr v13, v14

    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 5404
    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v13

    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 5405
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v10, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5408
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5409
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5410
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5412
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5413
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5414
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5441
    :goto_8
    invoke-virtual {v2, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 5442
    invoke-virtual {v2, v9}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 5443
    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 5444
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    goto/16 :goto_7

    .line 5418
    :cond_12
    const/4 v8, 0x2

    move/from16 v0, p4

    if-ne v0, v8, :cond_13

    .line 5419
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v10, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5420
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v9, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 5422
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5423
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5424
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5425
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5426
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5427
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5438
    :goto_9
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v8, v13, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5439
    const-string v8, "nexEngine"

    const-string v13, "Face Detection false  "

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 5429
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v10, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5430
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRatio()F

    move-result v13

    invoke-virtual {v8, v9, v13}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 5431
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 5432
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 5433
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5434
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5435
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5436
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    goto :goto_9

    .line 5447
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 5448
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public KineMixExport(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2857
    const/4 v0, 0x0

    return v0
.end method

.method public addUdta(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 4666
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->addUDTA(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public autoTrim(Ljava/lang/String;IILcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimRatioResultListener;)I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 4780
    if-eqz p4, :cond_0

    .line 4781
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$8;

    invoke-direct {v1, p0, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$8;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimRatioResultListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;)V

    .line 4795
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v6, p3

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;IIIIII)I

    .line 4796
    return v5
.end method

.method public autoTrim(Ljava/lang/String;ZIIILcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 4753
    if-eqz p6, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$7;

    invoke-direct {v1, p0, p6}, Lcom/nexstreaming/nexeditorsdk/nexEngine$7;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;)V

    .line 4767
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;IIIIII)I

    .line 4768
    return v6

    :cond_1
    move v2, v6

    .line 4767
    goto :goto_0
.end method

.method public autoTrimStop()I
    .locals 1

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->z()I

    move-result v0

    return v0
.end method

.method public buildOverlayPreview(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 2

    .prologue
    .line 3948
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;ILcom/nexstreaming/nexeditorsdk/nexEngine$1;)V

    return-object v0
.end method

.method public cancelKineMixExport()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2887
    return-void
.end method

.method public captureCurrentFrame(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;
    .locals 3

    .prologue
    .line 5052
    if-nez p1, :cond_0

    .line 5053
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    .line 5083
    :goto_0
    return-object v0

    .line 5056
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5057
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$9;

    invoke-direct {v2, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$9;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 5069
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v0

    goto :goto_0

    .line 5071
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$10;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$10;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 5083
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v0

    goto :goto_0
.end method

.method public checkDirectExport()I
    .locals 1

    .prologue
    .line 2333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->checkDirectExport(I)I

    move-result v0

    return v0
.end method

.method public checkDirectExport(I)I
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2315
    const/16 v0, 0x8

    .line 2319
    :goto_0
    return v0

    .line 2317
    :cond_0
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 2318
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastCheckDirectExportOption:I

    .line 2319
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkDirectExport(I)I

    move-result v0

    goto :goto_0
.end method

.method public checkKineMixExport(Z)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2788
    const/4 v0, 0x2

    return v0
.end method

.method public checkKineMixExport()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2841
    const/4 v0, 0x0

    return v0
.end method

.method public checkKineMixExport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2773
    const/4 v0, 0x0

    return v0
.end method

.method public checkPFrameDirectExportSync(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkPFrameDirectExportSync(Ljava/lang/String;)I

    move-result v0

    .line 2411
    if-nez v0, :cond_0

    .line 2412
    const/4 v0, 0x1

    .line 2413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFaceDetectInfo()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clearFaceDetectInfo()V

    .line 948
    :cond_0
    return-void
.end method

.method public clearOverlayCache()V
    .locals 1

    .prologue
    .line 4333
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->clear:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 4334
    return-void
.end method

.method public clearProject()V
    .locals 1

    .prologue
    .line 3036
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->clearList()V

    .line 3037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 3038
    return-void
.end method

.method public clearScreen()I
    .locals 1

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r()I

    .line 3053
    const/4 v0, 0x0

    .line 3055
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearTrackCache()V
    .locals 1

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 4324
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->clearTrackCache()I

    .line 4325
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->clear:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 4327
    :cond_0
    return-void
.end method

.method public clearUdta()I
    .locals 1

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->clearUDTA()I

    move-result v0

    return v0
.end method

.method public directExport(Ljava/lang/String;JJ)Z
    .locals 8

    .prologue
    .line 2386
    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastCheckDirectExportOption:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->directExport(Ljava/lang/String;JJI)Z

    move-result v0

    return v0
.end method

.method public directExport(Ljava/lang/String;JJI)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 2354
    invoke-direct {p0, v8}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    const/4 v1, 0x2

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 2358
    if-nez p1, :cond_1

    .line 2369
    :cond_0
    :goto_0
    return v0

    .line 2361
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    .line 2362
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    .line 2363
    iput-wide p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    .line 2364
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 2365
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I[B)V

    .line 2366
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    const-string/jumbo v4, "up"

    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-wide v4, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->directExport(Ljava/lang/String;JJLjava/lang/String;I)I

    move v0, v8

    .line 2367
    goto :goto_0
.end method

.method public export(Ljava/lang/String;IIIJI)I
    .locals 15

    .prologue
    .line 1734
    const v9, 0xac44

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xbb8

    const v13, 0x10010300

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v13}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I

    move-result v0

    return v0
.end method

.method public export(Ljava/lang/String;IIIJII)I
    .locals 15

    .prologue
    .line 1538
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xbb8

    const v13, 0x10010300

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v13}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I

    move-result v0

    return v0
.end method

.method public export(Ljava/lang/String;IIIJIII)I
    .locals 15

    .prologue
    .line 1556
    const/4 v10, 0x0

    const/4 v11, 0x0

    const v13, 0x10010300

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v13}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I

    move-result v0

    return v0
.end method

.method public export(Ljava/lang/String;IIIJIIIIII)I
    .locals 9

    .prologue
    .line 1587
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1588
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]already export state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/4 v0, -0x1

    .line 1642
    :goto_0
    return v0

    .line 1592
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stopAsyncFaceDetect()V

    .line 1594
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1595
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    .line 1596
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->faceDetect_internal(ZII)I

    .line 1597
    const/4 v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1598
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setThumbnailRoutine(I)V

    .line 1599
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    .line 1600
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    .line 1601
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeWidth:I

    .line 1602
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeHeight:I

    .line 1603
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeBitrate:I

    .line 1604
    iput-wide p5, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    .line 1606
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v8

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;

    move-object v1, p0

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;IIIIII)V

    invoke-virtual {v8, v0}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1640
    const/4 v0, 0x0

    goto :goto_0

    .line 1642
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public export(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;
    .locals 18

    .prologue
    .line 1884
    const-string/jumbo v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1886
    if-nez v11, :cond_0

    .line 1887
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    .line 2071
    :goto_0
    return-object v4

    .line 1890
    :cond_0
    const-string v4, "external-"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1892
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1893
    const-string v4, "nexEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]already external export state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->INVALID_STATE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto :goto_0

    .line 1897
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "width"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1898
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v6, "height"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1899
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v7, "intervaltime"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1900
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v8, "starttime"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1901
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v9, "endtime"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v4

    if-le v9, v4, :cond_2

    .line 1904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v9

    .line 1907
    :cond_2
    if-le v8, v9, :cond_3

    .line 1908
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 1911
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v10, "uuid"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1912
    const/16 v10, 0x9

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v10, v4, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getExternalExport(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;Ljava/lang/String;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v10

    .line 1913
    if-nez v10, :cond_4

    .line 1914
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->DIRECTEXPORT_ENC_ENCODE_ERROR:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 1918
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    .line 1919
    sget-object v12, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual/range {v4 .. v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIIIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v4

    if-ne v12, v4, :cond_5

    .line 1920
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1921
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 1924
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    .line 1926
    invoke-virtual {v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->a()V

    .line 1927
    const/4 v4, -0x1

    invoke-virtual {v10, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->a(I)Z

    .line 1929
    if-eqz p2, :cond_6

    .line 1930
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->INVALID_STATE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportFail(Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;)V

    .line 1933
    :cond_6
    const-string v4, "bitmap"

    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    .line 1935
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "width"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1936
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v6, "height"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1937
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v7, "tag"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1939
    if-nez p2, :cond_7

    .line 1940
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 1944
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v8, Lcom/nexstreaming/nexeditorsdk/nexEngine$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$20;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V

    invoke-virtual {v7, v5, v6, v4, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v4

    .line 1955
    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v4

    goto/16 :goto_0

    .line 1958
    :cond_8
    const-string v4, "jpeg"

    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 1960
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v5, "path"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1961
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v6, "width"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1962
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v7, "height"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1963
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v8, "quality"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1965
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    if-lez v6, :cond_9

    if-lez v7, :cond_9

    if-lez v5, :cond_9

    const/16 v8, 0x64

    if-le v5, v8, :cond_a

    .line 1966
    :cond_9
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 1969
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v9, 0x0

    new-instance v10, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v4, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Ljava/lang/String;ILcom/nexstreaming/nexeditorsdk/nexExportListener;)V

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v4

    .line 2004
    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v4

    goto/16 :goto_0

    .line 2007
    :cond_b
    const-string v4, "mp4"

    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d

    .line 2023
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v5, "path"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2024
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "width"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2025
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v5, "height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2027
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videocodec"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2028
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videobitrate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2029
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videoprofile"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2030
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videolevel"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2031
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videorotate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2032
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string/jumbo v5, "videofps"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2034
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v5, "audiosamplerate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2036
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->formats:Ljava/util/Map;

    const-string v5, "maxfilesize"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    move-object/from16 v5, p0

    .line 2043
    :try_start_1
    invoke-virtual/range {v5 .. v17}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2048
    if-nez v4, :cond_c

    .line 2049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v5, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V

    invoke-virtual {v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;)V

    .line 2066
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 2037
    :catch_0
    move-exception v4

    .line 2038
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 2044
    :catch_1
    move-exception v4

    .line 2045
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->UNKNOWN:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 2068
    :cond_c
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->UNKNOWN:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0

    .line 2071
    :cond_d
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->UNSUPPORT_FORMAT:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto/16 :goto_0
.end method

.method public exportJpeg(Ljava/lang/String;IIILcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;
    .locals 3

    .prologue
    .line 1753
    if-nez p5, :cond_0

    .line 1754
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    .line 1768
    :goto_0
    return-object v0

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;

    invoke-direct {v2, p0, p5}, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)V

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 1768
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v0

    goto :goto_0
.end method

.method public exportNoException(Ljava/lang/String;IIIJIIIII)I
    .locals 15

    .prologue
    .line 1705
    .line 1707
    const v13, 0x10010300

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1713
    :goto_0
    return v0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public exportNoException(Ljava/lang/String;IIIJIIIIII)I
    .locals 1

    .prologue
    .line 1672
    .line 1674
    :try_start_0
    invoke-virtual/range {p0 .. p12}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1680
    :goto_0
    return v0

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public exportPause()I
    .locals 1

    .prologue
    .line 2161
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    if-eqz v0, :cond_0

    .line 2162
    const/4 v0, -0x1

    .line 2164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->encodePause()I

    move-result v0

    goto :goto_0
.end method

.method public exportResume()I
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    if-eqz v0, :cond_0

    .line 2181
    const/4 v0, -0x1

    .line 2184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->encodeResume()I

    move-result v0

    goto :goto_0
.end method

.method public exportSaveStop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1092
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    if-eqz v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1095
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1097
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    invoke-virtual {v0, v2, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    goto :goto_0

    .line 1105
    :cond_1
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;->onComplete(I)V

    goto :goto_0
.end method

.method public faceDetect(ZILcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5144
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    .line 5145
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    .line 5146
    invoke-virtual {p3}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->getValue()I

    move-result v2

    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    .line 5148
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a()Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    if-eqz v2, :cond_0

    .line 5151
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public faceDetect_for_seek(II)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 5456
    .line 5459
    const-string v0, "nexEngine"

    const-string v2, "Face Detection Mode = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    if-nez p2, :cond_0

    .line 5461
    const/4 v0, -0x1

    .line 5486
    :goto_0
    return v0

    .line 5463
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    move v2, v1

    .line 5465
    :goto_1
    if-ge v2, v3, :cond_3

    .line 5467
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v2, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    .line 5469
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 5471
    iget v0, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    if-gt v0, p1, :cond_2

    iget v0, v4, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    if-gt p1, v0, :cond_2

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isAssetResource()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5473
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    move-result-object v0

    .line 5474
    if-nez v0, :cond_1

    .line 5476
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v5, v7, v6}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;-><init>(Ljava/io/File;ZLandroid/content/Context;)V

    .line 5477
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;)V

    .line 5480
    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 5481
    invoke-virtual {v0, v5}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Landroid/graphics/RectF;)V

    .line 5482
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v4, v0, v5, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateFaceInfo2Clip(Lcom/nexstreaming/nexeditorsdk/nexClip;ILandroid/graphics/RectF;I)V

    .line 5465
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 5486
    goto :goto_0
.end method

.method public faceDetect_internal(ZII)I
    .locals 15

    .prologue
    .line 5493
    const/4 v2, 0x0

    .line 5494
    const/4 v7, 0x0

    .line 5496
    const-string v1, "nexEngine"

    const-string v3, "Face Detection Mode = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5497
    if-nez p3, :cond_0

    .line 5498
    const/4 v1, -0x1

    .line 5684
    :goto_0
    return v1

    .line 5500
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v9

    .line 5502
    const/4 v1, 0x0

    move v14, v1

    move v1, v2

    move v2, v14

    :goto_1
    if-ge v2, v9, :cond_2

    .line 5504
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 5506
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 5508
    add-int/lit8 v1, v1, 0x1

    .line 5502
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5513
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_4

    .line 5518
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_5

    .line 5521
    const-string v2, "nexEngine"

    const-string v3, "Face Detection ResetInfo clip ID = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 5525
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 5526
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(I)I

    .line 5518
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move/from16 p2, v1

    .line 5516
    goto :goto_2

    .line 5530
    :cond_5
    const/4 v1, 0x0

    move v8, v1

    :goto_4
    if-ge v8, v9, :cond_c

    .line 5532
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 5533
    const-string v1, "nexEngine"

    const-string v3, "Face Detection sync clip ID = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v8, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v3, 0x1

    invoke-virtual {v1, v8, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 5537
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetectProcessed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isAssetResource()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5539
    :cond_6
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 5540
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5541
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 5542
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5544
    const-string v1, "nexEngine"

    const-string v2, "Face Detection skip clip ID = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 5546
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 5547
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5548
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5549
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5550
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5552
    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 5553
    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 5554
    invoke-virtual {v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 5555
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 5556
    const-string v1, "nexEngine"

    const-string v10, "Face Detection info update for draw info(clip ID = %d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v8, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5563
    :cond_8
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5564
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5565
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5567
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetected()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_6
    invoke-virtual/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 5569
    :cond_9
    add-int/lit8 v1, v7, 0x1

    .line 5530
    :goto_7
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v7, v1

    goto/16 :goto_4

    .line 5567
    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    .line 5574
    :cond_b
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    move-result-object v1

    .line 5575
    const-string v4, "nexEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Face Detection sync total num ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " continueClip num= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5576
    if-nez v1, :cond_10

    .line 5578
    add-int/lit8 v1, p2, -0x1

    if-le v8, v1, :cond_f

    :cond_c
    move v8, v7

    .line 5595
    :goto_8
    if-ge v8, v9, :cond_16

    .line 5597
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 5600
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetectProcessed()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isAssetResource()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 5602
    :cond_d
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 5603
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5604
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5605
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 5607
    const-string v1, "nexEngine"

    const-string v2, "Face Detection skip clip ID = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 5609
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 5610
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 5611
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5612
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5613
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5615
    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 5616
    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 5617
    invoke-virtual {v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 5618
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    goto :goto_9

    .line 5583
    :cond_f
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;-><init>(Ljava/io/File;ZLandroid/content/Context;)V

    .line 5585
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;)V

    .line 5588
    :cond_10
    invoke-virtual {v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Landroid/graphics/RectF;)V

    .line 5590
    add-int/lit8 v1, v8, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateFaceInfo2Clip(Lcom/nexstreaming/nexeditorsdk/nexClip;ILandroid/graphics/RectF;I)V

    .line 5592
    add-int/lit8 v1, v7, 0x1

    goto/16 :goto_7

    .line 5624
    :cond_11
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 5625
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 5626
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 5628
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetected()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_a
    invoke-virtual/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 5630
    :cond_12
    add-int/lit8 v1, v7, 0x1

    .line 5595
    :goto_b
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v1

    goto/16 :goto_8

    .line 5628
    :cond_13
    const/4 v3, 0x0

    goto :goto_a

    .line 5635
    :cond_14
    const-string v1, "nexEngine"

    const-string v2, "Face Detection async clip ID = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v8, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$11;

    move/from16 v0, p3

    invoke-direct {v1, p0, v8, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$11;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;ILcom/nexstreaming/nexeditorsdk/nexClip;I)V

    .line 5681
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5682
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_15
    move v1, v7

    goto :goto_b

    .line 5684
    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_17
    move v1, v7

    goto/16 :goto_7
.end method

.method public fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V
    .locals 3

    .prologue
    .line 4147
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->normal:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    .line 4149
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$13;->b:[I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4195
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v1, v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)V

    .line 4196
    return-void

    .line 4151
    :pswitch_0
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->normal:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4154
    :pswitch_1
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->brightness:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4157
    :pswitch_2
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->contrast:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4160
    :pswitch_3
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->saturation:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4163
    :pswitch_4
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_brightness:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4166
    :pswitch_5
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_contrast:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4169
    :pswitch_6
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_saturation:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4172
    :pswitch_7
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->tintColor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4176
    :pswitch_8
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->cts:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4180
    :pswitch_9
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_vignette:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4183
    :pswitch_a
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_vignetteRange:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4186
    :pswitch_b
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->adj_sharpness:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4189
    :pswitch_c
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->customlut_clip:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4192
    :pswitch_d
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->customlut_power:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    goto :goto_0

    .line 4149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public fastPreviewCrop(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->nofx:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Landroid/graphics/Rect;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a()V

    .line 4242
    return-void
.end method

.method public fastPreviewCustomlut(I)V
    .locals 2

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-nez v0, :cond_0

    .line 4209
    :goto_0
    return-void

    .line 4207
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCurrentPlayTime:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClipPosition(I)I

    move-result v0

    .line 4208
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreviewCustomlut(II)V

    goto :goto_0
.end method

.method public fastPreviewCustomlut(II)V
    .locals 2

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->customlut_clip:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    invoke-interface {v0, v1, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->customlut_power:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    invoke-interface {v0, v1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a()V

    .line 4220
    return-void
.end method

.method public fastPreviewEffect(IZ)V
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Z)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a()V

    .line 4252
    return-void
.end method

.method public forceMixExport(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 2686
    invoke-direct {p0, v8}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 2689
    const-string v0, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]forceMixExport: no video clip."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_0
    :goto_0
    return v1

    .line 2693
    :cond_1
    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    .line 2696
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2697
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioCodecType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2698
    const-string v0, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]forceMixExport: audio is not aac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2706
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v3

    .line 2708
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDRStart(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2709
    const-string v0, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]forceMixExport: idr finder start fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    move v7, v1

    .line 2713
    :goto_1
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 2714
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 2715
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 2716
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v4

    .line 2717
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v5, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v5

    .line 2721
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v6, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v6

    const/16 v9, 0x64

    if-eq v6, v9, :cond_4

    .line 2723
    const-string v6, "nexEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]forceMixExport: set speed clip index="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 2726
    :cond_4
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v6, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDRTime(I)I

    move-result v6

    .line 2727
    const/4 v9, -0x1

    if-ne v6, v9, :cond_5

    .line 2728
    const-string v0, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]forceMixExport: idr finder fail startTrimTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDREnd()I

    goto/16 :goto_0

    .line 2733
    :cond_5
    const-string v9, "nexEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]forceMixExport: startTrimTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", endTrimTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", new idrTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-virtual {v2, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 2713
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2737
    :cond_6
    const-string v2, "nexEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]forceMixExport: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] clip invaild path="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDREnd()I

    goto/16 :goto_0

    .line 2742
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDREnd()I

    .line 2743
    iget-object v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 2744
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 2747
    :try_start_0
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    iput-boolean v8, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mForceMixExportMode:Z

    .line 2754
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportTotalTime:I

    .line 2755
    const/4 v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 2756
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    .line 2757
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    .line 2758
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 2759
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sExportVideoTrackUUIDMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I[B)V

    .line 2760
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mExportFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEncodeMaxFileSize:J

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "up"

    invoke-static {v6}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->directExport(Ljava/lang/String;JJLjava/lang/String;I)I

    .line 2761
    iput-object v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    move v1, v8

    .line 2763
    goto/16 :goto_0

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    iput-object v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    goto/16 :goto_0
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 4829
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAudioSessionID()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4924
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(Z)I

    move-result v0

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getBrightness()I

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getContrast()I

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTimeTime()I
    .locals 1

    .prologue
    .line 2921
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mCurrentPlayTime:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2903
    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2906
    :cond_0
    return v0
.end method

.method getEncodedEffectOptions(Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3f

    const/4 v2, 0x1

    .line 3013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3014
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getShowStartTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3015
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getShowEndTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3018
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getEffectOptions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->encodeEffectOptions(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 3019
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3020
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getEffectOptions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->encodeEffectOptions(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 3022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIDRSeekTabSync(Lcom/nexstreaming/nexeditorsdk/nexClip;)[I
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 4616
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4617
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getMediaInfo()Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    move-result-object v0

    .line 4618
    if-nez v0, :cond_0

    .line 4619
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]getIDRSeekTabSync() getinfo fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 4651
    :goto_0
    return-object v0

    .line 4623
    :cond_0
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d()[I

    move-result-object v6

    .line 4624
    const/4 v0, -0x1

    .line 4625
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDRStart(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 4626
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]getIDRSeekTabSync() checkIDRStart fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 4627
    goto :goto_0

    :cond_1
    move v2, v0

    move v0, v1

    .line 4630
    :goto_1
    array-length v3, v6

    if-ge v0, v3, :cond_4

    .line 4631
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    aget v7, v6, v0

    invoke-virtual {v3, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDRTime(I)I

    move-result v3

    .line 4632
    const-string v7, "nexEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]getIDRSeekTabSync() : seektab="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", idrTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    if-gez v3, :cond_2

    .line 4634
    const-string v1, "nexEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]getIDRSeekTabSync() idrTime fail! seekTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDREnd()I

    move-object v0, v4

    .line 4636
    goto/16 :goto_0

    .line 4639
    :cond_2
    if-eq v2, v3, :cond_3

    .line 4640
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 4630
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4644
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->checkIDREnd()I

    .line 4646
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 4647
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 4648
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 4649
    const-string v0, "nexEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]getIDRSeekTabSync() : new seektab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 4651
    goto/16 :goto_0
.end method

.method public getLayerHeight()I
    .locals 1

    .prologue
    .line 4973
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayerWidth()I
    .locals 1

    .prologue
    .line 4964
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    return v0
.end method

.method public getLetterBox()Z
    .locals 1

    .prologue
    .line 5209
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    return v0
.end method

.method public getOverlayHitPoint(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;)Z
    .locals 4

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 3920
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTime()I

    move-result v2

    iget v3, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mTime:I

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTime()I

    move-result v2

    iget v3, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mTime:I

    if-le v2, v3, :cond_0

    .line 3921
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isPointInOverlayItem(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;)Z

    move-result v0

    .line 3924
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProject()Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getSaturation()I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSharpness()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getSharpness()I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailCache(II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 1471
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-nez v1, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-object v0

    .line 1475
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v1, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->n(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1476
    if-eqz v2, :cond_0

    .line 1479
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1480
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1481
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1482
    const/16 v1, 0xb4

    if-ne p2, v1, :cond_2

    .line 1483
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1484
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1485
    const/high16 v7, 0x43340000    # 180.0f

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1486
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v5, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 1487
    goto :goto_0

    .line 1488
    :cond_2
    if-nez p2, :cond_3

    .line 1489
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1490
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1491
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v5, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 1492
    goto :goto_0

    .line 1493
    :cond_3
    const/16 v1, 0x10e

    if-ne p2, v1, :cond_4

    .line 1494
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1495
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1496
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v6, v7, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1497
    new-instance v7, Landroid/graphics/Rect;

    neg-int v4, v4

    invoke-direct {v7, v10, v4, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v5, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 1498
    goto :goto_0

    .line 1499
    :cond_4
    const/16 v1, 0x5a

    if-ne p2, v1, :cond_0

    .line 1500
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1501
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1502
    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v6, v7, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1503
    new-instance v7, Landroid/graphics/Rect;

    neg-int v3, v3

    invoke-direct {v7, v3, v10, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v5, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 1504
    goto/16 :goto_0
.end method

.method public getView()Lcom/nexstreaming/nexeditorsdk/nexEngineView;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k()Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;

    return-object v0
.end method

.method public getVignette()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getVignette()I

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVignetteRange()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getVignetteRange()I

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCacheSeekMode()Z
    .locals 1

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    return v0
.end method

.method public overlayLock(Z)V
    .locals 1

    .prologue
    .line 3697
    if-eqz p1, :cond_0

    .line 3698
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->lock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 3702
    :goto_0
    return-void

    .line 3700
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->unlock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s()V

    .line 1206
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1002
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1003
    invoke-direct {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1005
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]export state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stopAsyncFaceDetect()V

    .line 1009
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1010
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    .line 1011
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->faceDetect_internal(ZII)I

    .line 1014
    invoke-direct {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadEffectsInEditor(Z)V

    .line 1015
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1016
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t()V

    goto :goto_0
.end method

.method public play(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1030
    if-eqz p1, :cond_0

    .line 1032
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->play()V

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected removeClip(I)V
    .locals 2

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 4392
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;)I

    .line 4394
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1225
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1226
    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1228
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1229
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1230
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_asyncmode:Z

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_syncclip_count:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->faceDetect_internal(ZII)I

    .line 1231
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t()V

    .line 1233
    :cond_0
    return-void
.end method

.method public reverseStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJIII)Z
    .locals 13

    .prologue
    .line 2510
    sub-int v0, p10, p9

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 2511
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/16 v1, 0x1f4

    sub-int v2, p10, p9

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(IIZ)V

    throw v0

    .line 2513
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->reverseStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJIII)I

    move-result v0

    .line 2514
    if-nez v0, :cond_1

    .line 2515
    const/4 v0, 0x1

    .line 2517
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reverseStop()Z
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->reverseStop()I

    move-result v0

    .line 2534
    if-nez v0, :cond_0

    .line 2535
    const/4 v0, 0x1

    .line 2537
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method runTranscodeMode(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexEngineListener;)V
    .locals 10

    .prologue
    const/16 v2, 0x10e

    const/16 v1, 0xb4

    const/16 v0, 0x5a

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 4833
    sget-boolean v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-eqz v3, :cond_0

    .line 4834
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->TRANSCODING_BUSY:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->getValue()I

    move-result v0

    invoke-interface {p3, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    .line 4893
    :goto_0
    return-void

    .line 4838
    :cond_0
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4839
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->TRANSCODING_BUSY:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->getValue()I

    move-result v0

    invoke-interface {p3, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    goto :goto_0

    .line 4843
    :cond_1
    invoke-static {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    .line 4845
    if-nez v4, :cond_2

    .line 4846
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->TRANSCODING_NOT_SUPPORTED_FORMAT:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->getValue()I

    move-result v0

    invoke-interface {p3, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    goto :goto_0

    .line 4849
    :cond_2
    sput-boolean v7, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    .line 4850
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 4851
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 4852
    sput-object p3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    .line 4855
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v5, :cond_5

    move v3, v9

    .line 4865
    :goto_1
    if-eqz v3, :cond_3

    .line 4866
    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v5, v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 4869
    :cond_3
    iget v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    if-nez v3, :cond_8

    .line 4870
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v3, v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->resetStartEndPosition()V

    .line 4875
    :goto_2
    invoke-direct {p0, v7, v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    .line 4877
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v5, :cond_9

    .line 4878
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v0

    rsub-int v0, v0, 0x168

    .line 4879
    const/16 v1, 0x168

    if-ne v0, v1, :cond_c

    .line 4892
    :cond_4
    :goto_3
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    iget v4, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    iget v5, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputBitRate:I

    const-wide v6, 0x7fffffffffffffffL

    iget v8, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputSamplingRate:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->transcode(Ljava/lang/String;IIIJII)I

    goto :goto_0

    .line 4857
    :cond_5
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_90:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v5, :cond_6

    move v3, v2

    .line 4858
    goto :goto_1

    .line 4859
    :cond_6
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_180:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v5, :cond_7

    move v3, v1

    .line 4860
    goto :goto_1

    .line 4861
    :cond_7
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_270:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v5, :cond_d

    move v3, v0

    .line 4862
    goto :goto_1

    .line 4872
    :cond_8
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v3, v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    iget v5, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    iget v6, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    invoke-virtual {v3, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->fitStartEndPosition(II)V

    goto :goto_2

    .line 4882
    :cond_9
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-eq v3, v4, :cond_4

    .line 4884
    iget-object v3, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_90:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v3, v4, :cond_a

    move v9, v0

    .line 4885
    goto :goto_3

    .line 4886
    :cond_a
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_180:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v0, v3, :cond_b

    move v9, v1

    .line 4887
    goto :goto_3

    .line 4888
    :cond_b
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_270:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne v0, v1, :cond_4

    move v9, v2

    .line 4889
    goto :goto_3

    :cond_c
    move v9, v0

    goto :goto_3

    :cond_d
    move v3, v9

    goto/16 :goto_1
.end method

.method public seek(I)V
    .locals 3

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-eqz v0, :cond_1

    .line 1256
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] seek fail! cacheSeekMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1262
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1263
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1264
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stopAsyncFaceDetect()V

    .line 1265
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->facedetect_undetected_clip_cropping_mode:I

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->faceDetect_for_seek(II)I

    .line 1266
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 1267
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j(I)V

    goto :goto_0
.end method

.method public seekFromCache(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1450
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-nez v1, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return v0

    .line 1454
    :cond_1
    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1456
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1457
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1459
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 1460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekIDROnly(I)V
    .locals 3

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-eqz v0, :cond_1

    .line 1318
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] seekIDROnly fail! cacheSeekMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1324
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1325
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1326
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 1327
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto :goto_0
.end method

.method public seekIDROnly(ILcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;)V
    .locals 3

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-eqz v0, :cond_1

    .line 1355
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] seekIDROnly fail! cacheSeekMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1361
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1362
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1363
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 1364
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;

    invoke-direct {v1, p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto :goto_0
.end method

.method public seekIDRorI(I)V
    .locals 3

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    if-eqz v0, :cond_1

    .line 1289
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] seekIDRorI fail! cacheSeekMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1295
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1296
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1297
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->lastSeekTime:I

    .line 1298
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto :goto_0
.end method

.method public set360VideoForceNormalView()V
    .locals 1

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A()Z

    .line 4956
    return-void
.end method

.method public set360VideoViewPosition(II)Z
    .locals 1

    .prologue
    .line 4936
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(II)Z

    move-result v0

    return v0
.end method

.method public set360VideoViewStopPosition(II)V
    .locals 3

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->nofx:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a(II)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;->a()V

    .line 4947
    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setBrightness(I)I

    .line 247
    :cond_0
    return-void
.end method

.method public setContrast(I)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setContrast(I)I

    .line 258
    :cond_0
    return-void
.end method

.method public setDeviceGamma(F)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setDeviceGamma(F)I

    .line 396
    :cond_0
    return-void
.end method

.method public setDeviceLightLevel(I)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setDeviceLightLevel(I)I

    .line 385
    :cond_0
    return-void
.end method

.method public setEventHandler(Lcom/nexstreaming/nexeditorsdk/nexEngineListener;)V
    .locals 3

    .prologue
    .line 565
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setEventHandler ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEventListener:Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    .line 567
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 568
    return-void
.end method

.method public setExportCrop(III)V
    .locals 3

    .prologue
    .line 5010
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setExportCrop mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropMode:I

    .line 5012
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputWidth:I

    .line 5013
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mEnhancedCropOutputHeight:I

    .line 5014
    return-void
.end method

.method public setFaceModule(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5161
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stopAsyncFaceDetect()V

    .line 5162
    if-nez p1, :cond_1

    .line 5163
    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;)V

    .line 5192
    :cond_0
    :goto_0
    return-void

    .line 5167
    :cond_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a()Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;

    move-result-object v0

    .line 5168
    if-eqz v0, :cond_2

    .line 5169
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5173
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v0, :cond_4

    .line 5174
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5175
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 5176
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 5177
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->resetFaceDetectProcessed()V

    .line 5174
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5182
    :cond_4
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getExternalModuleManager()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5184
    if-nez v0, :cond_5

    .line 5185
    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;)V

    goto :goto_0

    .line 5189
    :cond_5
    const-class v1, Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5190
    check-cast v0, Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;)V

    goto :goto_0
.end method

.method public setHDRtoSDR(Z)V
    .locals 3

    .prologue
    .line 5883
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const-string v2, "HDR2SDR"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    return-void

    .line 5883
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLetterBox(Z)V
    .locals 0

    .prologue
    .line 5200
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bLetterBox:Z

    .line 5201
    return-void
.end method

.method setMark()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 538
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->y()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Z)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Z)V

    goto :goto_0
.end method

.method public setOnSurfaceChangeListener(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;)V
    .locals 2

    .prologue
    .line 859
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->m_onSurfaceChangeListener:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSurfaceChangeListener;

    .line 860
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$12;

    invoke-direct {v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$12;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;)V

    .line 867
    return-void
.end method

.method public setPreviewScaleFactor(F)Z
    .locals 1

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(F)Z

    move-result v0

    return v0
.end method

.method public setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 3

    .prologue
    .line 937
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setProject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 939
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->defaultFaceDetectSetting()V

    .line 941
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 4345
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    :cond_0
    return-void
.end method

.method public setSaturation(I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setSaturation(I)I

    .line 269
    :cond_0
    return-void
.end method

.method public setScalingFlag2Export(Z)V
    .locals 0

    .prologue
    .line 2145
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    .line 2146
    return-void
.end method

.method public setSharpness(I)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setSharpness(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public setTaskSleep(Z)V
    .locals 2

    .prologue
    .line 5023
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setTaskSleep(I)I

    .line 5024
    return-void

    .line 5023
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbnailRoutine(I)V
    .locals 1

    .prologue
    .line 5887
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o(I)I

    .line 5888
    return-void
.end method

.method public setTotalAudioVolumeProject(II)V
    .locals 3

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getPrimaryItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 2641
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    goto :goto_0

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getAudioItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 2645
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    goto :goto_1

    .line 2647
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    int-to-float v1, p2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    .line 2648
    return-void
.end method

.method public setTotalAudioVolumeResetWhilePlay()Z
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 2624
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setVolumeWhilePlay(II)I

    move-result v0

    .line 2625
    if-nez v0, :cond_0

    .line 2626
    const/4 v0, 0x1

    .line 2627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTotalAudioVolumeWhilePlay(II)Z
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/16 v1, 0x65

    const/16 v2, 0x64

    const/4 v0, 0x0

    .line 2594
    if-ne p1, v2, :cond_0

    move p1, v1

    .line 2598
    :cond_0
    if-ne p2, v2, :cond_1

    move p2, v1

    .line 2602
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v3, :cond_3

    .line 2611
    :cond_2
    :goto_0
    return v0

    .line 2605
    :cond_3
    if-ltz p2, :cond_2

    if-gt p2, v3, :cond_2

    .line 2608
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v1, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setVolumeWhilePlay(II)I

    move-result v1

    .line 2609
    if-nez v1, :cond_2

    .line 2610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setView(Landroid/view/SurfaceView;)I
    .locals 3

    .prologue
    .line 896
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setView SurfaceView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;)V

    .line 899
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eq p1, v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 904
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    .line 905
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 908
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setView(Lcom/nexstreaming/nexeditorsdk/nexEngineView;)I
    .locals 3

    .prologue
    .line 885
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setView nexEngineView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;)V

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public setVignette(I)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setVignette(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public setVignetteRange(I)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setVignetteRange(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public startCollectCache(ILcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1404
    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1407
    if-eqz p2, :cond_0

    .line 1408
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THUMBNAIL_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;->onComplete(I)V

    .line 1441
    :cond_0
    :goto_0
    return v0

    .line 1413
    :cond_1
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1414
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->undoForceMixProject()V

    .line 1415
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setEditorListener()V

    .line 1416
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 1418
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$17;

    invoke-direct {v2, p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$17;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    invoke-virtual {v0, p1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    move v0, v1

    .line 1439
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1058
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u()V

    .line 1060
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1065
    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1067
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1068
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s()V

    goto :goto_0

    .line 1070
    :cond_2
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1071
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s()V

    goto :goto_0
.end method

.method public stop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1128
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->externalImageExportProcessing:Z

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u()V

    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;->onComplete(I)V

    .line 1133
    :cond_0
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1149
    :goto_0
    return-void

    .line 1137
    :cond_1
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1138
    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1140
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$15;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$15;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    goto :goto_0

    .line 1147
    :cond_2
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;->onComplete(I)V

    goto :goto_0
.end method

.method public stopAsyncFaceDetect()V
    .locals 3

    .prologue
    .line 5127
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 5129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 5131
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5132
    return-void
.end method

.method public stopCollectCache(I)V
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->cacheSeekMode:Z

    .line 1516
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    .line 1517
    return-void
.end method

.method public stopSync()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1156
    invoke-direct {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->isSetProject(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]stopSync start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne v0, v1, :cond_2

    .line 1160
    :cond_0
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]stopSync IDLE state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1184
    :cond_1
    :goto_0
    return-void

    .line 1165
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Z)V

    .line 1166
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s()V

    .line 1169
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mPlayState:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    if-ne v0, v1, :cond_3

    .line 1180
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    .line 1181
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Z)V

    .line 1182
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]stopSync End!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1175
    :cond_3
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method stopTranscode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4896
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    if-eqz v0, :cond_0

    .line 4897
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4898
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->stop()V

    .line 4904
    :cond_0
    :goto_0
    return-void

    .line 4900
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sTranscodeMode:Z

    .line 4901
    invoke-direct {p0, v2, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .prologue
    .line 413
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged called("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 415
    :cond_0
    const-string v0, "nexEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid video width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    .line 423
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    .line 424
    int-to-float v1, p4

    mul-float/2addr v1, v0

    int-to-float v2, p3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 425
    int-to-float v1, p3

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, p3

    .line 431
    :goto_1
    const-string v2, "nexEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceChanged aspect view size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-ne v1, p3, :cond_3

    if-eq v0, p4, :cond_5

    .line 434
    :cond_3
    const-string v2, "nexEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceChanged new view size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface {p1, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    .line 427
    :cond_4
    int-to-float v1, p4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    move v0, p4

    goto :goto_1

    .line 439
    :cond_5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    .line 440
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 442
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w()V

    goto/16 :goto_0

    :cond_6
    move v0, p4

    move v1, p3

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 400
    const-string v0, "nexEngine"

    const-string/jumbo v1, "surfaceCreated called()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    .line 405
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 407
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    const-string v0, "nexEngine"

    const-string/jumbo v1, "surfaceDestroyed called()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 451
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mSurface:Landroid/view/Surface;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 457
    :cond_1
    return-void
.end method

.method public transcodingStart(Ljava/lang/String;Ljava/lang/String;IIIIIJII)Z
    .locals 14

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const-string/jumbo v1, "up"

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/lang/String;IIIIIJIILjava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 2560
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2561
    const/4 v0, 0x1

    .line 2563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transcodingStop()Z
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 2576
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2577
    const/4 v0, 0x1

    .line 2579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V
    .locals 6

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 4352
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;-><init>()V

    .line 4354
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getID()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mID:I

    .line 4355
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getClipID()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTrackID:I

    .line 4356
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSubEffectID()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mSubEffectID:I

    .line 4358
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEffectID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEffectID:Ljava/lang/String;

    .line 4359
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTitle:Ljava/lang/String;

    .line 4360
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getIsTransition()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mIsTransition:I

    .line 4362
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartTime()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mStartTime:I

    .line 4363
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEndTime:I

    .line 4365
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mRotateState:I

    .line 4367
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mUserRotateState:I

    .line 4369
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTranslateX:I

    .line 4370
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTranslateY:I

    .line 4372
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mLUT:I

    .line 4373
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTA()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_A:I

    .line 4374
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTB()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_B:I

    .line 4375
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTPower()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mCustomLUT_Power:I

    .line 4377
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mBrightness:I

    .line 4378
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getContrast()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mContrast:I

    .line 4379
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSaturation()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mSaturation:I

    .line 4380
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTintcolor()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mTintcolor:I

    .line 4382
    iget-object v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 4383
    iget-object v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 4384
    iget-object v1, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;->mFaceRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 4386
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->updateDrawInfo(Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I

    .line 4388
    :cond_0
    return-void
.end method

.method public updateProject()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2936
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v0, :cond_0

    .line 2937
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setOverlays(Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;)V

    .line 2938
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->sLoadListAsync:Z

    invoke-direct {p0, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->resolveProject(ZZ)I

    move-result v0

    .line 2940
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2950
    :cond_0
    :goto_0
    return-void

    .line 2944
    :cond_1
    if-ne v0, v4, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 2946
    invoke-direct {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->loadEffectsInEditor(Z)V

    goto :goto_0
.end method

.method public updateProject(Z)Z
    .locals 1

    .prologue
    .line 2960
    if-eqz p1, :cond_0

    .line 2962
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2963
    :catch_0
    move-exception v0

    .line 2964
    const/4 v0, 0x0

    goto :goto_1

    .line 2967
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    goto :goto_0
.end method

.method public updateScreenMode()V
    .locals 3

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 4696
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getOverlayCoordinateMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(III)V

    .line 4697
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->mVideoEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getScreenMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I)V

    .line 4698
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setAspectRatio(F)V

    .line 4699
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setMark()V

    .line 4702
    :cond_0
    return-void
.end method
