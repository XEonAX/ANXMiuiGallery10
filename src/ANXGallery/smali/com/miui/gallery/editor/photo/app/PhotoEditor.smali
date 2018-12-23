.class public Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;,
        Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
    }
.end annotation


# instance fields
.field private mActivatedEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityResult:I

.field private mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

.field private mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

.field private mCreateTime:J

.field private mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

.field private mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

.field private mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

.field private mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

.field private mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

.field private mFragments:Landroid/app/FragmentManager;

.field private mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

.field private mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

.field private mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

.field private mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

.field private mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

.field private mNeedConfirmPassword:Z

.field private mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

.field private mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

.field private mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

.field private mResumed:Z

.field private mSampleTags:[Ljava/lang/String;

.field private mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

.field private mSuspendInputs:Z

.field private mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

.field private mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    .line 132
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    .line 484
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    .line 549
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$3;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    .line 566
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    .line 691
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$5;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    .line 750
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    .line 783
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    .line 826
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    .line 839
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$9;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    .line 915
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    .line 1304
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1305
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1306
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1307
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1308
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1309
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1310
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1311
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1312
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1313
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1314
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1315
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    const-class v3, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 1317
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_beautify"

    aput-object v2, v0, v1

    .line 1318
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_enhance"

    aput-object v2, v0, v1

    .line 1319
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_filter"

    aput-object v2, v0, v1

    .line 1320
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_crop"

    aput-object v2, v0, v1

    .line 1321
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_sticker"

    aput-object v2, v0, v1

    .line 1322
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_beautify"

    aput-object v2, v0, v1

    .line 1323
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_text"

    aput-object v2, v0, v1

    .line 1324
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_mosaic"

    aput-object v2, v0, v1

    .line 1325
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_doodle"

    aput-object v2, v0, v1

    .line 1326
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_remover"

    aput-object v2, v0, v1

    .line 1327
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_miuibeautify"

    aput-object v2, v0, v1

    .line 1328
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    const-string v2, "_frame"

    aput-object v2, v0, v1

    .line 1356
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/utils/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewSaveCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onActivityFinish(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    return-object v0
.end method

.method private calculationPreviewSize()V
    .locals 12

    .prologue
    .line 262
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    .line 263
    .local v6, "screenWidth":I
    int-to-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 264
    .local v7, "width":F
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 266
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 267
    .local v5, "paddingBottom":I
    const v8, 0x7f12020e

    invoke-virtual {p0, v8}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, "displayPanel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 269
    .local v0, "displayLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    add-int v8, v2, v5

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const v8, 0x7f120174

    invoke-virtual {p0, v8}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 274
    .local v4, "menuPanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 275
    .local v3, "menuLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-void
.end method

.method private findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v2, 0x7f120174

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 983
    .local v0, "active":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v1, :cond_0

    .line 985
    check-cast v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 993
    .end local v0    # "active":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 987
    .restart local v0    # "active":Landroid/app/Fragment;
    :cond_0
    const-string v1, "PhotoEditor"

    const-string v2, "not menu in menu panel: %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 992
    .end local v0    # "active":Landroid/app/Fragment;
    :cond_1
    const-string v1, "PhotoEditor"

    const-string v2, "no active menu fragment found"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initScreenBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 228
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 230
    const-string v3, "photo-brightness-manual"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 231
    .local v2, "manualBrightness":F
    const-string v3, "photo-brightness-auto"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 232
    .local v0, "autoBrightness":F
    cmpl-float v3, v2, v5

    if-gez v3, :cond_0

    cmpl-float v3, v0, v5

    if-ltz v3, :cond_1

    .line 233
    :cond_0
    new-instance v3, Lcom/miui/gallery/view/BrightnessManager;

    invoke-direct {v3, p0, v2, v0}, Lcom/miui/gallery/view/BrightnessManager;-><init>(Landroid/app/Activity;FF)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    .line 234
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 239
    .end local v0    # "autoBrightness":F
    .end local v2    # "manualBrightness":F
    :cond_1
    return-void
.end method

.method private isNeedConfirmPassword()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActivityFinish(Z)V
    .locals 3
    .param p1, "exported"    # Z

    .prologue
    .line 447
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onExit(Z)V

    .line 448
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v2, 0x7f12020e

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 449
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    if-eqz v1, :cond_0

    .line 450
    check-cast v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->onExit(Z)V

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isNeedConfirmPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setPhotoSecretFinishResult()V

    .line 455
    :cond_1
    return-void
.end method

.method private onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 11
    .param p1, "menu"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    const/4 v10, 0x1

    .line 853
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v8

    instance-of v4, v8, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .line 854
    .local v4, "glRender":Z
    if-eqz v4, :cond_5

    .line 856
    const-string v8, "PhotoEditor"

    const-string v9, "exiting gl render view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_in"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 859
    .local v5, "inMask":Landroid/app/Fragment;
    if-nez v5, :cond_4

    .line 860
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_out"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    .line 861
    .local v7, "outMask":Landroid/app/Fragment;
    if-nez v7, :cond_1

    .line 862
    const-string v8, "PhotoEditor"

    const-string v9, "display mask first"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v7, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .end local v7    # "outMask":Landroid/app/Fragment;
    invoke-direct {v7}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;-><init>()V

    .line 864
    .restart local v7    # "outMask":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 865
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "overwrite_background"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    invoke-virtual {v7, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 867
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f12020e

    const-string v10, "gl_mask_out"

    .line 868
    invoke-virtual {v8, v9, v7, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 869
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 870
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 913
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "inMask":Landroid/app/Fragment;
    .end local v7    # "outMask":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 873
    .restart local v5    # "inMask":Landroid/app/Fragment;
    .restart local v7    # "outMask":Landroid/app/Fragment;
    :cond_1
    const-string v8, "PhotoEditor"

    const-string v9, "mask displayed, remove render view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v5    # "inMask":Landroid/app/Fragment;
    .end local v7    # "outMask":Landroid/app/Fragment;
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 887
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 888
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 889
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 890
    .local v3, "gesture":Landroid/app/Fragment;
    if-eqz v3, :cond_2

    .line 891
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 893
    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 894
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 896
    if-eqz v4, :cond_0

    .line 897
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v8

    if-lt v8, v10, :cond_3

    .line 898
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "navigator"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .line 899
    .local v1, "fragment":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 900
    invoke-virtual {v1, v10}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->setExportEnabled(Z)V

    .line 904
    .end local v1    # "fragment":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v9, "gl_mask_out"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    .line 905
    .local v6, "mask":Landroid/app/Fragment;
    if-eqz v6, :cond_0

    .line 906
    const-string v8, "PhotoEditor"

    const-string v9, "remove mask view"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 908
    invoke-virtual {v8, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 909
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 910
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 876
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    .end local v3    # "gesture":Landroid/app/Fragment;
    .end local v6    # "mask":Landroid/app/Fragment;
    .restart local v5    # "inMask":Landroid/app/Fragment;
    :cond_4
    const-string v8, "PhotoEditor"

    const-string v9, "gl not ready"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 878
    invoke-virtual {v8, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 879
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 880
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_1

    .line 883
    .end local v5    # "inMask":Landroid/app/Fragment;
    :cond_5
    const-string v8, "PhotoEditor"

    const-string v9, "no gl view on top, do exit"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private prepareNavigator()V
    .locals 8

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->resolveEffects(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    .line 522
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 524
    .local v0, "effect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v1

    .line 525
    .local v1, "effects":[Lcom/miui/gallery/editor/photo/core/Effect;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 526
    .local v2, "index":I
    sget-object v4, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v3

    .line 527
    .local v3, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-nez v3, :cond_0

    .line 528
    const-string v4, "PhotoEditor"

    const-string v6, "%s not supported, skip"

    aget-object v7, v1, v2

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    .end local v2    # "index":I
    .end local v3    # "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->showNavigator()V

    .line 533
    return-void
.end method

.method private prepareResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 476
    const-string v0, "photo_edit_exported_width"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getExportedWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v0, "photo_edit_exported_height"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getExportedHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    return-void
.end method

.method private resolveEffects(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 997
    if-eqz p1, :cond_2

    sget-object v2, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    sget-object v2, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v7, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1000
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1019
    :cond_0
    :goto_0
    return-object v1

    .line 1002
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v8, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1003
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1006
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Integer;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1007
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1008
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    .line 1007
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 1008
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1007
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1010
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->idBeautyAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1013
    .local v0, "index":I
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1014
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampleTags:[Ljava/lang/String;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "category_show"

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .end local v0    # "index":I
    :cond_3
    invoke-static {}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private resolveNavigator(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1024
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;-><init>()V

    .line 1027
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;-><init>()V

    goto :goto_0
.end method

.method private setPhotoSecretFinishResult()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareResult(Landroid/content/Intent;)V

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    const-string v1, "photo_secret_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    const-string v1, "extra_photo_edit_type"

    const-string v2, "extra_photo_editor_type_common"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 473
    return-void
.end method

.method private showNavigator()V
    .locals 5

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->resolveNavigator(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    move-result-object v1

    .line 537
    .local v1, "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "content"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivatedEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 539
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->setArguments(Landroid/os/Bundle;)V

    .line 541
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x2002

    .line 543
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f120174

    const-string v4, "navigator"

    .line 544
    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 546
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 547
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSuspendInputs:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFatalPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 326
    return-void

    .line 317
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setPhotoSecretFinishResult()V

    .line 319
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->finish()V

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 8
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 371
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 372
    check-cast v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 373
    .local v3, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mMenuCallback:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    iput-object v6, v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    .line 391
    .end local v3    # "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    :cond_0
    :goto_0
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v6, :cond_1

    move-object v2, p1

    .line 392
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .line 393
    .local v2, "glFragment":Lcom/miui/gallery/editor/photo/core/GLFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLReadyListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->setOnCreatedListener(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;)V

    .line 395
    .end local v2    # "glFragment":Lcom/miui/gallery/editor/photo/core/GLFragment;
    :cond_1
    return-void

    .line 374
    :cond_2
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    if-eqz v6, :cond_3

    move-object v4, p1

    .line 375
    check-cast v4, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .line 376
    .local v4, "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNavigatorCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    iput-object v6, v4, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    goto :goto_0

    .line 377
    .end local v4    # "navi":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    :cond_3
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 378
    check-cast v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .line 379
    .local v5, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPreviewCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    iput-object v6, v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    .line 380
    const-string v6, "gl_mask_out"

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mGLMaskOutReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    iput-object v6, v5, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOnViewReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    goto :goto_0

    .line 383
    .end local v5    # "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    :cond_4
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    if-eqz v6, :cond_5

    move-object v1, p1

    .line 384
    check-cast v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 385
    .local v1, "export":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mExportCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    iput-object v6, v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    goto :goto_0

    .line 386
    .end local v1    # "export":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    :cond_5
    instance-of v6, p1, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 387
    check-cast v0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .line 388
    .local v0, "dialog":Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mAlertDialogCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->setCallbacks(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->isNotch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->extendToStatusBar(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 399
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const v3, 0x7f120174

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 400
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    if-eqz v2, :cond_0

    .line 401
    const-string v2, "PhotoEditor"

    const-string v3, "back pressed on navigator"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 403
    const-string v2, "PhotoEditor"

    const-string v3, "have pending operation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v2, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0e0285

    .line 405
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0e0287

    .line 406
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0e0286

    .line 407
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 408
    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setCancellable(Z)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->build()Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v4, "main_alert_dialog"

    .line 410
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 413
    :cond_0
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v2, :cond_2

    .line 414
    const-string v2, "PhotoEditor"

    const-string v3, "back pressed on menu"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 415
    check-cast v1, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .line 416
    .local v1, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    const-string v2, "PhotoEditor"

    const-string v3, "menu has pending operation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v2, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0e049e

    .line 419
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0e04a0

    .line 420
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0e049f

    .line 421
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->setCancellable(Z)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->build()Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    const-string v4, "menu_alert_dialog"

    .line 424
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onExit(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    goto :goto_0

    .line 431
    .end local v1    # "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    :cond_2
    const-string v2, "PhotoEditor"

    const-string v3, "neither handled back press event, just call default"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onActivityFinish(Z)V

    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckPermissionSucceed()V
    .locals 4

    .prologue
    .line 194
    new-instance v1, Lcom/miui/gallery/editor/photo/app/InitializeController;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDecoderCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/app/InitializeController;-><init>(Landroid/app/Activity;Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mInitializeController:Lcom/miui/gallery/editor/photo/app/InitializeController;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/InitializeController;->doInitialize()V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mCreateTime:J

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    const-string v2, "_main"

    const-string v3, "enter"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->postActivityCreate()V

    .line 202
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->calculationPreviewSize()V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 215
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->initScreenBrightness()V

    .line 217
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->onStart()V

    .line 218
    new-instance v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;-><init>()V

    .line 219
    .local v0, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->setLoadDone(Z)V

    .line 221
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f12020e

    const-string v3, "preview"

    .line 222
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 224
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareNavigator()V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allow_use_on_offline_global"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setToAllowUseOnOfflineGlobal(Z)V

    .line 159
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTransitionConfig:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onActivityCreate()V

    .line 164
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->from(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    if-nez v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/miui/gallery/compat/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 168
    const v0, 0x7f0e024e

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    const v0, 0x7f0400db

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setContentView(I)V

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/Sampler;->from(Landroid/os/Bundle;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    .line 176
    new-instance v0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getSource()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mFragments:Landroid/app/FragmentManager;

    .line 178
    new-instance v0, Lcom/miui/gallery/editor/photo/app/DraftManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getSource()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    .line 181
    new-instance v0, Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-direct {v0, p0, v3, p0}, Lcom/miui/gallery/util/PermissionCheckHelper;-><init>(Landroid/app/Activity;ZLcom/miui/gallery/util/PermissionCheckHelper$PermissionCheckCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/PermissionCheckHelper;->checkPermission()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mDraftManager:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->release()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mTaskInfo:Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->closeExportDialog()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mEditorOriginHandler:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->onDestroy()V

    .line 367
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 330
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 333
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    .line 335
    .local v2, "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v3, :cond_0

    .line 336
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .end local v2    # "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v1

    .line 337
    .local v1, "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performPause()V

    .line 340
    .end local v1    # "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onPause()V

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordPageEnd(Landroid/app/Activity;)V

    .line 344
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPagePause()V

    .line 345
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mPermissionCheckHelper:Lcom/miui/gallery/util/PermissionCheckHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/util/PermissionCheckHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->findActiveMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 284
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    .line 286
    .local v2, "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v3, :cond_0

    .line 287
    check-cast v2, Lcom/miui/gallery/editor/photo/core/GLFragment;

    .end local v2    # "render":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/GLFragment;->getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    move-result-object v1

    .line 288
    .local v1, "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performResume()V

    .line 291
    .end local v1    # "glContext":Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v3}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mSampler:Lcom/miui/gallery/editor/photo/app/Sampler;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordPageStart(Landroid/app/Activity;)V

    .line 295
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mResumed:Z

    .line 296
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPageResume()V

    .line 298
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isNeedConfirmPassword()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    .line 301
    const/16 v3, 0x1b

    invoke-static {p0, v3}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Activity;I)V

    .line 305
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    const-string v0, "PhotoEditor"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mNeedConfirmPassword:Z

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 311
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/BrightnessManager;->onWindowFocusChanged(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public setActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 458
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    .line 459
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    .line 460
    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->prepareResult(Landroid/content/Intent;)V

    .line 461
    const-string v0, "extra_photo_edit_type"

    const-string v1, "extra_photo_editor_type_common"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityResult:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 463
    return-void
.end method
