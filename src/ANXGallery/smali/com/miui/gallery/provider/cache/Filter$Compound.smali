.class final enum Lcom/miui/gallery/provider/cache/Filter$Compound;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Compound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/provider/cache/Filter$Compound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/provider/cache/Filter$Compound;

.field public static final enum AND:Lcom/miui/gallery/provider/cache/Filter$Compound;

.field public static final enum OR:Lcom/miui/gallery/provider/cache/Filter$Compound;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Compound;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Compound;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->AND:Lcom/miui/gallery/provider/cache/Filter$Compound;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Compound;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/provider/cache/Filter$Compound;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->OR:Lcom/miui/gallery/provider/cache/Filter$Compound;

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/provider/cache/Filter$Compound;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Compound;->AND:Lcom/miui/gallery/provider/cache/Filter$Compound;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Compound;->OR:Lcom/miui/gallery/provider/cache/Filter$Compound;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->$VALUES:[Lcom/miui/gallery/provider/cache/Filter$Compound;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Compound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lcom/miui/gallery/provider/cache/Filter$Compound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/Filter$Compound;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/provider/cache/Filter$Compound;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->$VALUES:[Lcom/miui/gallery/provider/cache/Filter$Compound;

    invoke-virtual {v0}, [Lcom/miui/gallery/provider/cache/Filter$Compound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/provider/cache/Filter$Compound;

    return-object v0
.end method
