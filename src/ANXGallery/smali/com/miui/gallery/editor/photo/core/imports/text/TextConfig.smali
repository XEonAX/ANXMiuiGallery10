.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
.super Lcom/miui/gallery/editor/photo/core/common/model/TextData;
.source "TextConfig.java"


# instance fields
.field private mBaseDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;


# direct methods
.method constructor <init>(SLjava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V
    .locals 2
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "baseDialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .prologue
    .line 14
    iget-object v0, p3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->dialogSmallIconPath:Ljava/lang/String;

    iget v1, p3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->backgroundColor:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/editor/photo/core/common/model/TextData;-><init>(SLjava/lang/String;Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->mBaseDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 16
    return-void
.end method


# virtual methods
.method getBaseDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->mBaseDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    return-object v0
.end method
