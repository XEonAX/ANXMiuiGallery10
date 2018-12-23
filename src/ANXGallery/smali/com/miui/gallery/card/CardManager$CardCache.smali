.class Lcom/miui/gallery/card/CardManager$CardCache;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/miui/gallery/card/Card;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/CardManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/CardManager;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$CardCache;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/CardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/CardManager;
    .param p2, "x1"    # Lcom/miui/gallery/card/CardManager$1;

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager$CardCache;-><init>(Lcom/miui/gallery/card/CardManager;)V

    return-void
.end method

.method private findIndexToInsert(Lcom/miui/gallery/card/Card;)I
    .locals 7
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 942
    if-eqz p1, :cond_7

    .line 943
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 944
    const/4 v4, 0x0

    .line 976
    :cond_0
    :goto_0
    return v4

    .line 946
    :cond_1
    const/4 v2, 0x0

    .line 947
    .local v2, "low":I
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 948
    .local v1, "high":I
    :goto_1
    if-gt v2, v1, :cond_5

    .line 949
    add-int v6, v2, v1

    ushr-int/lit8 v4, v6, 0x1

    .line 950
    .local v4, "mid":I
    invoke-virtual {p0, v4}, Lcom/miui/gallery/card/CardManager$CardCache;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/card/Card;

    .line 951
    .local v5, "midCard":Lcom/miui/gallery/card/Card;
    invoke-virtual {v5, p1}, Lcom/miui/gallery/card/Card;->compareTo(Lcom/miui/gallery/card/Card;)I

    move-result v0

    .line 952
    .local v0, "cmp":I
    if-ne v2, v1, :cond_3

    .line 953
    if-gez v0, :cond_2

    .line 954
    add-int/lit8 v4, v2, 0x1

    goto :goto_0

    .line 955
    :cond_2
    if-lez v0, :cond_0

    move v4, v1

    .line 956
    goto :goto_0

    .line 961
    :cond_3
    if-gez v0, :cond_4

    .line 962
    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    .line 963
    :cond_4
    if-lez v0, :cond_0

    .line 964
    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 971
    .end local v0    # "cmp":I
    .end local v4    # "mid":I
    .end local v5    # "midCard":Lcom/miui/gallery/card/Card;
    :cond_5
    invoke-virtual {p0, v2}, Lcom/miui/gallery/card/CardManager$CardCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/Card;

    .line 972
    .local v3, "lowCard":Lcom/miui/gallery/card/Card;
    invoke-virtual {v3, p1}, Lcom/miui/gallery/card/Card;->compareTo(Lcom/miui/gallery/card/Card;)I

    move-result v0

    .line 973
    .restart local v0    # "cmp":I
    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    .end local v2    # "low":I
    :cond_6
    move v4, v2

    goto :goto_0

    .line 976
    .end local v0    # "cmp":I
    .end local v1    # "high":I
    .end local v3    # "lowCard":Lcom/miui/gallery/card/Card;
    :cond_7
    const/4 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addCard(Lcom/miui/gallery/card/Card;)I
    .locals 2
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/CardManager$CardCache;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    const/4 v0, -0x1

    .line 925
    :cond_0
    :goto_0
    return v0

    .line 921
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager$CardCache;->findIndexToInsert(Lcom/miui/gallery/card/Card;)I

    move-result v0

    .line 922
    .local v0, "targetIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 923
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/card/CardManager$CardCache;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addCards(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/miui/gallery/card/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, "cards":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/miui/gallery/card/Card;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 931
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardManager$CardCache;->addCard(Lcom/miui/gallery/card/Card;)I

    goto :goto_0

    .line 936
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :cond_1
    return-void
.end method

.method public findIndexOfCard(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 904
    invoke-virtual {p0, v1}, Lcom/miui/gallery/card/CardManager$CardCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 905
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 909
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 903
    .restart local v0    # "card":Lcom/miui/gallery/card/Card;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public declared-synchronized getCard(J)Lcom/miui/gallery/card/Card;
    .locals 5
    .param p1, "cardId"    # J

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 878
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 882
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeCard(J)V
    .locals 5
    .param p1, "cardId"    # J

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 887
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 888
    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardManager$CardCache;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 886
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 891
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateCard(Lcom/miui/gallery/card/Card;)V
    .locals 8
    .param p1, "newCard"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 894
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 895
    invoke-virtual {p0, v2}, Lcom/miui/gallery/card/CardManager$CardCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 896
    .local v0, "card":Lcom/miui/gallery/card/Card;
    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 897
    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/Card;->copyFrom(Lcom/miui/gallery/card/Card;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :cond_1
    monitor-exit p0

    return-void

    .line 894
    .end local v1    # "count":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
