.class public Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    .line 182
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    .line 188
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/f;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/g;

    if-eqz v2, :cond_3

    .line 190
    :cond_0
    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    .line 191
    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 194
    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 195
    const-string/jumbo v1, "w"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 199
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 205
    const-string/jumbo v1, "w"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0
.end method
