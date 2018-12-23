.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/TextData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "TextData.java"


# instance fields
.field public final backgroundColor:I

.field public final iconPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "backgroundColor"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 15
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->iconPath:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->backgroundColor:I

    .line 17
    return-void
.end method
