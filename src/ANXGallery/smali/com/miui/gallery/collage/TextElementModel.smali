.class public Lcom/miui/gallery/collage/TextElementModel;
.super Lcom/miui/gallery/collage/ElementPositionModel;
.source "TextElementModel.java"


# instance fields
.field public currentText:Ljava/lang/String;

.field public final letterSpace:F

.field public final maxLength:I

.field public final text:Ljava/lang/String;

.field public final textColor:Ljava/lang/String;

.field public final textSize:F


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    iget-object v2, p0, Lcom/miui/gallery/collage/TextElementModel;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, ""

    .line 40
    :goto_0
    return-object v2

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/miui/gallery/collage/TextElementModel;->text:Ljava/lang/String;

    const-string v3, "@string/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    iget-object v2, p0, Lcom/miui/gallery/collage/TextElementModel;->text:Ljava/lang/String;

    const-string v3, "@string/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "resId":I
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 40
    .end local v0    # "resId":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/collage/TextElementModel;->text:Ljava/lang/String;

    goto :goto_0
.end method
