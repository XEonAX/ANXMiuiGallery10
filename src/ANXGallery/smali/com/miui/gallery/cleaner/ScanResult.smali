.class public Lcom/miui/gallery/cleaner/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/ScanResult$Builder;,
        Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCount:I

.field private mDescription:Ljava/lang/String;

.field private mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

.field private mPaths:[Ljava/lang/String;

.field private mSize:J

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/ScanResult$1;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScanResult;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mType:I

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/cleaner/ScanResult;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # J

    .prologue
    .line 6
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mSize:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/cleaner/ScanResult;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mPaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/gallery/cleaner/ScanResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/gallery/cleaner/ScanResult;Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    return-object p1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mSize:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;->onClick(Landroid/content/Context;)V

    .line 55
    :cond_0
    return-void
.end method
