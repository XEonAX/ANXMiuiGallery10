.class final enum Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
.super Ljava/lang/Enum;
.source "TextEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field public static final enum DELETE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field public static final enum EDIT:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field public static final enum MIRROR:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field public static final enum NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

.field public static final enum SCALE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 383
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 384
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 385
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    const-string v1, "MIRROR"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 386
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 381
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 381
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    return-object v0
.end method
