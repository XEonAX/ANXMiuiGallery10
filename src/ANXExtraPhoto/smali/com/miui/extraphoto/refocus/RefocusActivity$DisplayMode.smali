.class final enum Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
.super Ljava/lang/Enum;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

.field public static final enum REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

.field public static final enum REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

.field public static final enum RELIGHTING:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 884
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    const-string v1, "REFOCUS_STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 885
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    const-string v1, "REFOCUS_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 886
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    const-string v1, "RELIGHTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->RELIGHTING:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    .line 883
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_STATIC:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->RELIGHTING:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->$VALUES:[Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 883
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 883
    const-class v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
    .locals 1

    .line 883
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->$VALUES:[Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    invoke-virtual {v0}, [Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    return-object v0
.end method
