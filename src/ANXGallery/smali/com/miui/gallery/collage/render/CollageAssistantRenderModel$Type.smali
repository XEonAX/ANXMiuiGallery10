.class public final enum Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;
.super Ljava/lang/Enum;
.source "CollageAssistantRenderModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

.field public static final enum LAYOUT:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

.field public static final enum POSTER:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    const-string v1, "POSTER"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->POSTER:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    .line 22
    new-instance v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    const-string v1, "LAYOUT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->LAYOUT:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    sget-object v1, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->POSTER:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->LAYOUT:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->$VALUES:[Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->$VALUES:[Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    invoke-virtual {v0}, [Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    return-object v0
.end method
