.class public Lcom/miui/extraphoto/refocus/RefocusActivity;
.super Landroid/app/Activity;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;,
        Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;,
        Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_HAS_TRANSITION:Ljava/lang/String; = "extra_has_transition"

.field public static final EXTRA_PATH:Ljava/lang/String; = "extra_path"

.field public static final EXTRA_PREVIEW_IMAGE_HEIGHT:Ljava/lang/String; = "extra_preview_image_height"

.field public static final EXTRA_PREVIEW_IMAGE_MATRIX:Ljava/lang/String; = "extra_preview_image_matrix"

.field public static final EXTRA_PREVIEW_IMAGE_WIDTH:Ljava/lang/String; = "extra_preview_image_width"

.field public static final EXTRA_SCREEN_BRIGHTNESS:Ljava/lang/String; = "extra_screen_brightness"

.field public static final PHOTO_EDIT_TYPE:Ljava/lang/String; = "extra_photo_edit_type"

.field public static final PHOTO_EDIT_TYPE_REFOCUS:Ljava/lang/String; = "extra_photo_editor_type_refocus"

.field private static final TAG:Ljava/lang/String; = "RefocusActivity"

.field public static final TAG_TRANSITION_VIEW:Ljava/lang/String; = "tag_transition_view"

.field public static final TAG_TRANSITION_VIEW_MENU:Ljava/lang/String; = "tag_transition_view_menu"


# instance fields
.field private mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

.field private mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

.field private mDisplayWrapper:Landroid/widget/FrameLayout;

.field private mExitButton:Landroid/view/View;

.field private mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

.field private mLoadingDialog:Lcom/miui/extraphoto/refocus/LoadingDialog;

.field private mMenuGroup:Landroid/view/View;

.field private mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mOriginBokehSize:I

.field private mPath:Ljava/lang/String;

.field private mPermissionCheckHelper:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;

.field private mProgress:F

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefocusCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

.field private mRefocusEffectAdapter:Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

.field private mRefocusEffectConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRefocusEffectManager:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

.field private mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

.field private mRelightItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRelightingButton:Landroid/widget/RadioButton;

.field private mRelightingClickListener:Landroid/view/View$OnClickListener;

.field private mRelightingConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

.field private mRelightingToast:Z

.field private mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

.field private mResourceFinish:Z

.field private mRootView:Landroid/view/ViewGroup;

.field private mSaveButton:Landroid/view/View;

.field private mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

.field private mSaveListener:Landroid/view/View$OnClickListener;

.field private mSaveOptionDialog:Landroid/app/Dialog;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStaticButton:Landroid/widget/RadioButton;

.field private mStaticClickListener:Landroid/view/View$OnClickListener;

.field private mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

.field private mSurfaceFinish:Z

.field private mTransImageView:Landroid/widget/ImageView;

.field private mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

.field private mVideoButton:Landroid/widget/RadioButton;

.field private mVideoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$1;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mResourceFinish:Z

    .line 119
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSurfaceFinish:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingToast:Z

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mProgress:F

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOriginBokehSize:I

    .line 129
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 276
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$3;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    .line 373
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$4;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 382
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$5;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 485
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$7;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveListener:Landroid/view/View$OnClickListener;

    .line 508
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$8;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticClickListener:Landroid/view/View$OnClickListener;

    .line 519
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$9;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoClickListener:Landroid/view/View$OnClickListener;

    .line 531
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$10;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingClickListener:Landroid/view/View$OnClickListener;

    .line 543
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$11;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$11;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mResourceFinish:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->notifyItemInit()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mResourceFinish:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    .line 56
    invoke-static {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->isRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->resolveSoftPortraitResource(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/extraphoto/refocus/RefocusActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findCameraDefinedPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .param p2, "x2"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->changeToRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/extraphoto/refocus/RefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOriginBokehSize:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/extraphoto/refocus/RefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOriginBokehSize:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/extraphoto/refocus/RefocusActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mProgress:F

    return v0
.end method

.method static synthetic access$1802(Lcom/miui/extraphoto/refocus/RefocusActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # F

    .line 56
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mProgress:F

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/extraphoto/refocus/RefocusActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectConfigs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSurfaceFinish:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSurfaceFinish:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/extraphoto/refocus/RefocusActivity;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onActivityFinish(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onActivityFinish(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/LoadingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mLoadingDialog:Lcom/miui/extraphoto/refocus/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/extraphoto/refocus/RefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingToast:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingToast:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onSelectEffect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/extraphoto/refocus/RefocusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onSelectRelighting(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/extraphoto/refocus/RefocusActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveOptionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->doSave(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->refreshSaveButtonByProgress(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mMenuGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->addRefocusView()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectAdapter:Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;)Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectAdapter:Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p1, "x1"    # Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    .line 56
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private addRefocusView()V
    .locals 4

    .line 417
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusView;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    .line 418
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusView;->setRenderThread(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    .line 419
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$6;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$6;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusView;->setCallback(Lcom/miui/extraphoto/refocus/RefocusView$Callback;)V

    .line 425
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayWrapper:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    return-void
.end method

.method private changeToRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;I)V
    .locals 3
    .param p1, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .param p2, "realRelightingPosition"    # I

    .line 473
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 475
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 479
    iget-boolean v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->isSoftBokeh:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticButton:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private doSave(Z)V
    .locals 7
    .param p1, "video"    # Z

    .line 497
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusView:Lcom/miui/extraphoto/refocus/RefocusView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusView;->setPreventTouch(Z)V

    .line 498
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 499
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->createFileForSave(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 501
    .local v2, "file":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendSaveVideo(Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    sget-object v6, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendSaveImage(Ljava/lang/String;Z)V

    .line 506
    :goto_1
    return-void
.end method

.method private findCameraDefinedPosition(I)I
    .locals 3
    .param p1, "type"    # I

    .line 690
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    iget v2, v2, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->cameraDefinedType:I

    if-ne v2, p1, :cond_0

    .line 692
    return v1

    .line 690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private init()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPath:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const v0, 0x7f07000b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->finish()V

    .line 212
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->initScreenBrightness()V

    .line 216
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->initProgressDialog()V

    .line 217
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->initSaveOptionDialog()V

    .line 218
    new-instance v0, Lcom/miui/extraphoto/refocus/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mLoadingDialog:Lcom/miui/extraphoto/refocus/LoadingDialog;

    .line 220
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusCallback:Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 221
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendInitMsg()V

    .line 223
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-direct {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectManager:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    .line 224
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectManager:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Lcom/miui/extraphoto/refocus/RefocusActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$2;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->loadEffectsAsync(Landroid/content/res/AssetManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;)V

    .line 248
    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 261
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    .line 262
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 264
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 265
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    return-void
.end method

.method private initSaveOptionDialog()V
    .locals 4

    .line 269
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$1;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 271
    const v3, 0x7f07000a

    invoke-virtual {v1, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 272
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveOptionDialog:Landroid/app/Dialog;

    .line 274
    return-void
.end method

.method private initScreenBrightness()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 253
    const-string v1, "extra_screen_brightness"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 254
    .local v1, "brightness":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 255
    new-instance v2, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-direct {v2, p0, v1}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;-><init>(Landroid/app/Activity;F)V

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    .line 258
    .end local v1    # "brightness":F
    :cond_0
    return-void
.end method

.method private static isRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Z
    .locals 1
    .param p0, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .param p1, "relightingEffectAdapter"    # Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    .line 699
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static launch(Landroid/app/Activity;Ljava/lang/String;ILandroid/view/View;II[F)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "shareView"    # Landroid/view/View;
    .param p4, "imageWidth"    # I
    .param p5, "imageHeight"    # I
    .param p6, "matrixValue"    # [F

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-eqz p6, :cond_0

    .line 78
    const-string v1, "extra_preview_image_width"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "extra_preview_image_height"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "extra_preview_image_matrix"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 81
    const-string v1, "extra_has_transition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :cond_0
    const-string v1, "tag_transition_view"

    invoke-static {p0, p3, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 87
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method private notifyItemInit()V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSurfaceFinish:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mResourceFinish:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onAllInit()V

    .line 432
    :cond_0
    return-void
.end method

.method private onActivityFinish(Z)V
    .locals 2
    .param p1, "export"    # Z

    .line 602
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onExit(ZLandroid/graphics/Bitmap;)V

    .line 603
    return-void
.end method

.method private onActivityFinish(ZLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "export"    # Z
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 598
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onExit(ZLandroid/graphics/Bitmap;)V

    .line 599
    return-void
.end method

.method private onAllInit()V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    invoke-static {v0, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->isRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->resolveSoftPortraitResource(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 441
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    iget v0, v0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findCameraDefinedPosition(I)I

    move-result v0

    .line 442
    .local v0, "realRelightingPosition":I
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mImageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    invoke-direct {p0, v1, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->changeToRelightingMode(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;I)V

    .line 443
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onSelectRelighting(I)V

    .line 444
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 445
    .end local v0    # "realRelightingPosition":I
    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticConfig:Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mProgress:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendStaticEffect(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;FZ)V

    .line 450
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 452
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    return-void
.end method

.method private onSelectEffect(I)V
    .locals 3
    .param p1, "position"    # I

    .line 392
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectAdapter:Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->setSelection(I)V

    .line 393
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 394
    .local v0, "config":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v2, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->NONE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 399
    :goto_1
    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 400
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendVideoEffectConfig(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 401
    return-void
.end method

.method private onSelectRelighting(I)V
    .locals 3
    .param p1, "position"    # I

    .line 404
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;->getSelection()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;->setSelection(I)V

    .line 408
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 409
    .local v0, "config":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    sget-object v2, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->NONE:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    if-ne v1, v2, :cond_2

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 412
    :cond_2
    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->RELIGHTING:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 413
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendRelightingEffectConfig(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 414
    return-void
.end method

.method private refreshSaveButtonByProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 562
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getCurrentBokehSize()I

    move-result v1

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOriginBokehSize:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 563
    return-void
.end method

.method private resolveSoftPortraitResource(Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 5
    .param p1, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 458
    iget-boolean v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->isSoftBokeh:Z

    if-eqz v0, :cond_2

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "target":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 461
    .local v2, "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    const-string v3, "0x3"

    iget-object v4, v2, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relightingType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    move-object v0, v2

    .line 463
    goto :goto_1

    .line 465
    .end local v2    # "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    :cond_0
    goto :goto_0

    .line 466
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 467
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingConfigs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    .end local v0    # "target":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    :cond_2
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .line 606
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;-><init>()V

    .line 607
    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->setMessage(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;

    move-result-object v0

    .line 608
    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;

    move-result-object v0

    .line 609
    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;

    move-result-object v0

    .line 610
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->setCancellable(Z)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Builder;->build()Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    move-result-object v0

    .line 612
    .local v0, "dialogFragment":Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$12;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$12;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->setCallbacks(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;)V

    .line 636
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_confirm"

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 637
    return-void
.end method


# virtual methods
.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayMode:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getCurrentBokehSize()I

    move-result v0

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mOriginBokehSize:I

    if-eq v0, v1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->showConfirmDialog()V

    goto :goto_1

    .line 582
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onActivityFinish(Z)V

    goto :goto_1

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRefocusEffectAdapter:Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->getSelection()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingEffectAdapter:Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;->getSelection()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 592
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onActivityFinish(Z)V

    goto :goto_1

    .line 586
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->showConfirmDialog()V

    goto :goto_1

    .line 589
    :cond_4
    invoke-direct {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onActivityFinish(Z)V

    .line 595
    :goto_1
    return-void
.end method

.method public onCheckPermissionSucceed()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->init()V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/compat/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->tryConfigTransitionMode(Landroid/os/Bundle;)V

    .line 137
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->setContentView(I)V

    .line 138
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 139
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mStaticButton:Landroid/widget/RadioButton;

    .line 140
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mVideoButton:Landroid/widget/RadioButton;

    .line 141
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRelightingButton:Landroid/widget/RadioButton;

    .line 142
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveButton:Landroid/view/View;

    .line 143
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 144
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mExitButton:Landroid/view/View;

    .line 145
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransImageView:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mDisplayWrapper:Landroid/widget/FrameLayout;

    .line 147
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mMenuGroup:Landroid/view/View;

    .line 148
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRootView:Landroid/view/ViewGroup;

    .line 149
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->refreshSaveButtonByProgress(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onActivityCreated()V

    .line 153
    new-instance v0, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;-><init>(Landroid/app/Activity;ZLcom/miui/extraphoto/common/utils/PermissionCheckHelper$PermissionCheckCallback;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPermissionCheckHelper:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;

    .line 154
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPermissionCheckHelper:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;

    invoke-virtual {v0}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->checkPermission()V

    .line 155
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mExitButton:Landroid/view/View;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 568
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendShutdown()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mSaveImageProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 574
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendPauseVideo()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onActivityPause()V

    .line 184
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->onPause()V

    .line 187
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 174
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mPermissionCheckHelper:Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/extraphoto/common/utils/PermissionCheckHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mTransitionManager:Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onActivityResume()V

    .line 193
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->onResume()V

    .line 196
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 201
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity;->mBrightnessManager:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->onWindowFocusChanged(Z)V

    .line 204
    :cond_0
    return-void
.end method
