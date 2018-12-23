.class public final enum Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;
.super Ljava/lang/Enum;
.source "SpecifyDrawableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/SpecifyDrawableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecifyDrawableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

.field public static final enum TIME_FORMAT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

.field public static final enum TIME_RECT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    const-string v1, "TIME_FORMAT"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->TIME_FORMAT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    .line 21
    new-instance v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    const-string v1, "TIME_RECT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->TIME_RECT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    sget-object v1, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->TIME_FORMAT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->TIME_RECT:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->$VALUES:[Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->$VALUES:[Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-virtual {v0}, [Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    return-object v0
.end method


# virtual methods
.method public getDrawable(Landroid/content/res/Resources;Lcom/miui/gallery/collage/SpecifyDrawableModel;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "specifyDrawableModel"    # Lcom/miui/gallery/collage/SpecifyDrawableModel;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/miui/gallery/collage/SpecifyDrawableModel$1;->$SwitchMap$com$miui$gallery$collage$SpecifyDrawableModel$SpecifyDrawableType:[I

    invoke-virtual {p0}, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 33
    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/SpecifyDrawableModel;)V

    .line 28
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/SpecifyDrawableModel;)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
