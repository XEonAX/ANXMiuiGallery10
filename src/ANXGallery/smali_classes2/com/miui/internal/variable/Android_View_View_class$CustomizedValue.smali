.class public Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_View_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizedValue"
.end annotation


# instance fields
.field public mHasInitViewSequenceStates:Z

.field public mHorizontalState:I

.field public mTagChildrenSequenceState:Z

.field public mVerticalState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    .line 189
    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    .line 191
    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    .line 192
    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return-void
.end method
