.class final Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;
.super Landroid/os/AsyncTask;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->loadTextStyleLocal(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->val$listener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v6, "textStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;>;"
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;-><init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .local v0, "defaultStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0e04b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "textStyle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->val$listener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;->onLoadSuccess(Ljava/util/List;)V

    .line 116
    return-void
.end method
