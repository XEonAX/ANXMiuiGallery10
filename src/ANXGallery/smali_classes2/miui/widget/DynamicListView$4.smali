.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Si:Lmiui/widget/DynamicListView;

.field private Sn:I

.field private So:I

.field private Sp:I

.field private Sq:I

.field private Sr:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    .line 205
    iput p1, p0, Lmiui/widget/DynamicListView$4;->So:I

    return-void
.end method

.method private eL()V
    .registers 2

    .line 254
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sq:I

    if-lez v0, :cond_2b

    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sr:I

    if-nez v0, :cond_2b

    .line 256
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 257
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->g(Lmiui/widget/DynamicListView;)V

    goto :goto_2b

    .line 258
    :cond_1e
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->h(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 259
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->i(Lmiui/widget/DynamicListView;)V

    .line 262
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public eM()V
    .registers 5

    .line 270
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sp:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    if-eq v0, v1, :cond_2a

    .line 271
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 272
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 273
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 276
    :cond_2a
    return-void
.end method

.method public eN()V
    .registers 5

    .line 284
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sp:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sq:I

    add-int/2addr v0, v1

    .line 286
    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    iget v2, p0, Lmiui/widget/DynamicListView$4;->So:I

    add-int/2addr v1, v2

    .line 288
    if-eq v0, v1, :cond_30

    .line 289
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 290
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 291
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 294
    :cond_30
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    .line 216
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 217
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    .line 218
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 221
    :cond_11
    iput p2, p0, Lmiui/widget/DynamicListView$4;->Sp:I

    .line 222
    iput p3, p0, Lmiui/widget/DynamicListView$4;->Sq:I

    .line 223
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1d

    .line 224
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sp:I

    goto :goto_1f

    .line 225
    :cond_1d
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    :goto_1f
    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    .line 226
    iget p1, p0, Lmiui/widget/DynamicListView$4;->So:I

    if-ne p1, p2, :cond_28

    .line 227
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sq:I

    goto :goto_2a

    .line 228
    :cond_28
    iget p1, p0, Lmiui/widget/DynamicListView$4;->So:I

    :goto_2a
    iput p1, p0, Lmiui/widget/DynamicListView$4;->So:I

    .line 229
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->eM()V

    .line 230
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->eN()V

    .line 231
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sp:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sn:I

    .line 232
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sq:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->So:I

    .line 233
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .line 237
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 240
    :cond_11
    iput p2, p0, Lmiui/widget/DynamicListView$4;->Sr:I

    .line 241
    iget-object p1, p0, Lmiui/widget/DynamicListView$4;->Si:Lmiui/widget/DynamicListView;

    invoke-static {p1, p2}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;I)I

    .line 242
    invoke-direct {p0}, Lmiui/widget/DynamicListView$4;->eL()V

    .line 243
    return-void
.end method
