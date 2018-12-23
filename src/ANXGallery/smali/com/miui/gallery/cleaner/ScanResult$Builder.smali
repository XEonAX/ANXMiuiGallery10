.class public Lcom/miui/gallery/cleaner/ScanResult$Builder;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDescription:Ljava/lang/String;

.field private mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

.field private mPaths:[Ljava/lang/String;

.field private mSize:J

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    .line 75
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 134
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the type must set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the title must not be empty."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the action must not be empty."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    if-nez v1, :cond_3

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the OnScanResultClickListener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_3
    new-instance v0, Lcom/miui/gallery/cleaner/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;-><init>(Lcom/miui/gallery/cleaner/ScanResult$1;)V

    .line 151
    .local v0, "result":Lcom/miui/gallery/cleaner/ScanResult;
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$102(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 152
    iget-wide v4, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_4

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cleaner/ScanResult;->access$202(Lcom/miui/gallery/cleaner/ScanResult;J)J

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$302(Lcom/miui/gallery/cleaner/ScanResult;[Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mCount:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$402(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 155
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$502(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$602(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$702(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$802(Lcom/miui/gallery/cleaner/ScanResult;Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 159
    return-object v0

    .line 152
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    goto :goto_0
.end method

.method public setAction(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public setCount(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mCount:I

    .line 95
    return-object p0
.end method

.method public setDescription(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 1
    .param p1, "description"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mDescription:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setOnScanResultClickListener(Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 130
    return-object p0
.end method

.method public setPaths([Ljava/lang/String;)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mPaths:[Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setSize(J)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    .line 85
    return-object p0
.end method

.method public setTitle(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setType(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    .line 80
    return-object p0
.end method
