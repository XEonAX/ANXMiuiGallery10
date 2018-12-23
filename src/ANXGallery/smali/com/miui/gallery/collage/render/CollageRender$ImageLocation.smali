.class public Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
.super Ljava/lang/Object;
.source "CollageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/CollageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLocation"
.end annotation


# instance fields
.field private mBottom:I

.field final mClipArray:[F

.field final mClipType:Lcom/miui/gallery/collage/ClipType;

.field private mLeft:I

.field final mPathForChoose:Landroid/graphics/Path;

.field final mPathForClip:Landroid/graphics/Path;

.field final mPathRegion:Landroid/graphics/Region;

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/collage/ClipType;[F)V
    .locals 1
    .param p1, "clipType"    # Lcom/miui/gallery/collage/ClipType;
    .param p2, "clipArray"    # [F

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    .line 276
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForChoose:Landroid/graphics/Path;

    .line 277
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathRegion:Landroid/graphics/Region;

    .line 281
    iput-object p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipType:Lcom/miui/gallery/collage/ClipType;

    .line 282
    iput-object p2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipArray:[F

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .prologue
    .line 272
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mLeft:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p1, "x1"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mLeft:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .prologue
    .line 272
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mTop:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p1, "x1"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mTop:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .prologue
    .line 272
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mRight:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p1, "x1"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mRight:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .prologue
    .line 272
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p1, "x1"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mBottom:I

    return p1
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mBottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mLeft:I

    return v0
.end method

.method public getPathForChoose()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForChoose:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPathForClip()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPathRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mTop:I

    return v0
.end method
