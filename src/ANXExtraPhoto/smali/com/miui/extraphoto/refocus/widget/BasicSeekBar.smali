.class public Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;
.super Landroid/widget/SeekBar;
.source "BasicSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;

.field private mThumb:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;-><init>(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$1;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mDelegate:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mDelegate:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->updateThumb(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 47
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mDelegate:Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;

    invoke-static {v0, p1}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;->access$102(Lcom/miui/extraphoto/refocus/widget/BasicSeekBar$SeekBarChangeDelegate;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 48
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 32
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 34
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x7f060000

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mThumb:Landroid/graphics/drawable/LayerDrawable;

    .line 37
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->updateThumb(I)V

    .line 38
    return-void

    .line 42
    .end local v0    # "layer":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method updateThumb(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mThumb:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    if-nez p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mThumb:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/BasicSeekBar;->mThumb:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    return-void
.end method
