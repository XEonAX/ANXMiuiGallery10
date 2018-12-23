.class Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;
.super Ljava/lang/Object;
.source "BasicSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarChangeDelegate"
.end annotation


# instance fields
.field private mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;


# direct methods
.method private constructor <init>(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->this$0:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;
    .param p2, "x1"    # Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$1;

    .line 62
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;-><init>(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;
    .param p1, "x1"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 62
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->this$0:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;

    invoke-virtual {v0, p2}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->updateThumb(I)V

    .line 71
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 75
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 82
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 85
    :cond_0
    return-void
.end method
