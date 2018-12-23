.class public Lcom/miui/gallery/card/Card$CardExtraInfo;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardExtraInfo"
.end annotation


# instance fields
.field public final isIgnored:Z

.field public final uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/scenario/Record$UniqueKey;Z)V
    .locals 0
    .param p1, "uniqueKey"    # Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .param p2, "isIgnored"    # Z

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 895
    iput-boolean p2, p0, Lcom/miui/gallery/card/Card$CardExtraInfo;->isIgnored:Z

    .line 896
    return-void
.end method
