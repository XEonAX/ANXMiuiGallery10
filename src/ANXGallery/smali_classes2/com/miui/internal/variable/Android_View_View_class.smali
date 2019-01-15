.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;,
        Lcom/miui/internal/variable/Android_View_View_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/view/View;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static kA:Landroid/util/SparseIntArray;

.field private static kB:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static kC:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap<",
            "Landroid/view/View;",
            "Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kB:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kC:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    .line 29
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x101009c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x101009e

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x101009f

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a4

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a7

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a9

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10102fe

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_first_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_middle_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_last_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_single_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_first_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_middle_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_last_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_single_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method private static a([I)I
    .registers 5

    .line 121
    nop

    .line 122
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 123
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v0, v1, :cond_12

    aget v3, p0, v0

    .line 124
    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 127
    :cond_12
    move v0, v2

    :cond_13
    return v0
.end method

.method private static h(I)I
    .registers 3

    .line 104
    nop

    .line 105
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    .line 106
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 107
    if-nez v0, :cond_2c

    .line 108
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_24

    .line 111
    const/4 v0, 0x1

    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int/2addr v0, v1

    .line 112
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kA:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2d

    .line 109
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "State attribute cannot exceed 32!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_2c
    nop

    .line 117
    :cond_2d
    :goto_2d
    return v0
.end method


# virtual methods
.method public abstract createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
    .registers 4

    .line 71
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kC:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    .line 72
    if-nez v0, :cond_14

    .line 73
    new-instance v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;-><init>()V

    .line 74
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kC:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_14
    return-object v0
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return p1
.end method

.method public getVerticalState(Landroid/view/View;)I
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return p1
.end method

.method public hasInitViewSequenceStates(Landroid/view/View;)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return p1
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .registers 9

    .line 131
    nop

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    .line 133
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result p1

    .line 135
    const/4 v1, 0x0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    .line 136
    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->a([I)I

    move-result v2

    invoke-static {v0}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {p1}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 137
    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kB:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 138
    if-nez v3, :cond_41

    .line 139
    if-eqz p2, :cond_2a

    array-length v3, p2

    goto :goto_2b

    .line 141
    :cond_2a
    move v3, v1

    :goto_2b
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [I

    .line 142
    if-eqz v3, :cond_34

    .line 143
    invoke-static {p2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :cond_34
    aput v0, v4, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    aput p1, v4, v3

    .line 147
    sget-object p1, Lcom/miui/internal/variable/Android_View_View_class;->kB:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    move-object p2, v4

    goto :goto_42

    :cond_41
    move-object p2, v3

    :cond_42
    :goto_42
    if-eqz p3, :cond_53

    .line 152
    if-nez p2, :cond_49

    .line 153
    new-array p2, p3, [I

    goto :goto_53

    .line 155
    :cond_49
    array-length p1, p2

    add-int/2addr p1, p3

    new-array p1, p1, [I

    .line 156
    array-length p3, p2

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    nop

    .line 161
    move-object p2, p1

    :cond_53
    :goto_53
    return-object p2
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHasInitViewSequenceStates(Landroid/view/View;Z)V
    .registers 3

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput-boolean p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    .line 101
    return-void
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    .line 85
    return-void
.end method

.method public abstract setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
.end method

.method public abstract setLeftDirectly(Landroid/view/View;I)V
.end method

.method public abstract setRightDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollXDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollYDirectly(Landroid/view/View;I)V
.end method

.method public setVerticalState(Landroid/view/View;I)V
    .registers 3

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    .line 93
    return-void
.end method
