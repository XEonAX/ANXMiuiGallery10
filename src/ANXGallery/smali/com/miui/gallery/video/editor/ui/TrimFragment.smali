.class public Lcom/miui/gallery/video/editor/ui/TrimFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;
    }
.end annotation


# instance fields
.field private mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

.field private mHasCliped:Z

.field private mIsModified:Z

.field private mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

.field private mSavedEndRange:I

.field private mSavedStartRange:I

.field private mStateChangeListener:Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;

.field private mTvVideoTime:Landroid/widget/TextView;

.field private needResetTrimInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 26
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    .line 27
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    .line 28
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->needResetTrimInfo:Z

    .line 29
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mIsModified:Z

    .line 30
    new-instance v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;Lcom/miui/gallery/video/editor/ui/TrimFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mStateChangeListener:Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->needResetTrimInfo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/TrimFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 20
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/video/editor/ui/TrimFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/TrimFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 20
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/video/editor/ui/TrimFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mIsModified:Z

    return p1
.end method

.method private getCurrentVideoTime(I)Ljava/lang/String;
    .locals 6
    .param p1, "millisecond"    # I

    .prologue
    const/16 v5, 0xa

    .line 282
    const-string v2, ""

    .line 283
    .local v2, "timeAll":Ljava/lang/String;
    const v3, 0xea60

    div-int v0, p1, v3

    .line 284
    .local v0, "minutes":I
    mul-int/lit8 v3, v0, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    sub-int v3, p1, v3

    div-int/lit16 v1, v3, 0x3e8

    .line 285
    .local v1, "seconds":I
    if-lt v0, v5, :cond_0

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    :goto_0
    if-lt v1, v5, :cond_2

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    :goto_1
    return-object v2

    .line 287
    :cond_0
    if-lez v0, :cond_1

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 290
    :cond_1
    const-string v2, "00"

    goto :goto_0

    .line 294
    :cond_2
    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 297
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setActionListener(Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;)V

    .line 113
    return-void
.end method

.method private updateAutoTrimView()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->updateAutoTrimView()V

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public doApply()Z
    .locals 4

    .prologue
    .line 159
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->isTouching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 187
    :goto_0
    return v2

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getStartRange()I

    move-result v1

    .line 163
    .local v1, "start":I
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getEndRange()I

    move-result v0

    .line 164
    .local v0, "end":I
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    .line 165
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/video/editor/VideoEditor;->setTrimInfo(II)V

    .line 166
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;II)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockRangeTo(IILcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 187
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e051d

    invoke-static {v2, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 185
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->onExitMode()V

    goto :goto_1
.end method

.method public doCancel()Z
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->isZooming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->isTouching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mHasCliped:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->setTrimInfo(II)V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->onExitMode()V

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 217
    const v0, 0x7f12002f

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v1, 0x7f040164

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mStateChangeListener:Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->removeStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->removeListener()V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->updateAutoTrimView()V

    .line 124
    return-void
.end method

.method public onPlayButtonClicked()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    iget-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mIsModified:Z

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getStartRange()I

    move-result v1

    .line 133
    .local v1, "start":I
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getEndRange()I

    move-result v0

    .line 134
    .local v0, "end":I
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/video/editor/VideoEditor;->setTrimInfo(II)V

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/TrimFragment$4;

    invoke-direct {v3, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mIsModified:Z

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0e051d

    invoke-static {v2, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V
    .locals 5
    .param p1, "seekBar"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p2, "direction"    # I
    .param p3, "progress"    # I
    .param p4, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getEndRange()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getStartRange()I

    move-result v2

    sub-int v0, v1, v2

    .line 223
    .local v0, "timeGap":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    const-string v2, "00:01"

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->getCurrentVideoTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setStopSlide(Z)V

    .line 224
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoStartTime()I

    move-result v2

    add-int/2addr v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 225
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mIsModified:Z

    .line 226
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->hideProgressBar()V

    .line 227
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mTvVideoTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->getCurrentVideoTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mHasCliped:Z

    .line 229
    return-void
.end method

.method public onProgressPreview(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V
    .locals 8
    .param p1, "seekBar"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p2, "direction"    # I
    .param p3, "progress"    # I
    .param p4, "fromUser"    # Z

    .prologue
    .line 233
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v1

    int-to-double v4, v1

    .line 235
    .local v4, "videoTotalTime":D
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    int-to-double v2, v1

    .line 236
    .local v2, "projectTotalTime":D
    int-to-double v6, p3

    mul-double/2addr v6, v2

    div-double/2addr v6, v4

    double-to-int v0, v6

    .line 237
    .local v0, "p":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/miui/gallery/video/editor/VideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 239
    .end local v0    # "p":I
    .end local v2    # "projectTotalTime":D
    .end local v4    # "videoTotalTime":D
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V
    .locals 3
    .param p1, "seekBar"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p2, "direction"    # I
    .param p3, "progress"    # I

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->needResetTrimInfo:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->setTrimInfo(II)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$7;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/video/editor/ui/TrimFragment$7;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->recordEventWithEffectChanged()V

    .line 257
    return-void
.end method

.method public onVideoLoadCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onVideoLoadCompleted()V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setTotal(I)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setMax(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    .line 92
    iput v3, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setStartRange(I)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setEndRange(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockRangeTo(IILcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mTvVideoTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->getCurrentVideoTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->updateAutoTrimView()V

    .line 99
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 45
    .local v0, "p":Landroid/graphics/Point;
    const v1, 0x7f12029c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e054a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x7f1202b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .line 48
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setOnSeekBarChangeListener(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;)V

    .line 49
    const v1, 0x7f1202b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mTvVideoTime:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setTotal(I)V

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setMax(I)V

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getStartRange()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getEndRange()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->needResetTrimInfo:Z

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mTvVideoTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->getCurrentVideoTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    new-instance v2, Lcom/miui/gallery/video/editor/ui/TrimFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getCurrentDisplayRatio()Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setThumbnailAspectRatio(Lcom/miui/gallery/video/editor/DisplayAspectRatio;)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mStateChangeListener:Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->addStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v2, Lcom/miui/gallery/video/editor/ui/TrimFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->setOnVideoThumbnailChangedListener(Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;)V

    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->updateAutoTrimView()V

    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->initListener()V

    .line 74
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setTotal(I)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getStartRange()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedStartRange:I

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mRangeSeekBar:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getEndRange()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mSavedEndRange:I

    .line 83
    return-void
.end method
