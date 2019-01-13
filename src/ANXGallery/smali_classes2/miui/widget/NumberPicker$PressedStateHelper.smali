.class Lmiui/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final Xe:I = 0x1

.field public static final Xf:I = 0x2


# instance fields
.field final synthetic WW:Lmiui/widget/NumberPicker;

.field private final Xg:I

.field private final Xh:I

.field private Xi:I

.field private Xj:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    .line 2075
    iput-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2079
    const/4 p1, 0x1

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:I

    .line 2080
    const/4 p1, 0x2

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xh:I

    return-void
.end method


# virtual methods
.method public aA(I)V
    .registers 3

    .line 2107
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2108
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xj:I

    .line 2109
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xi:I

    .line 2110
    iget-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {p1, p0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2111
    return-void
.end method

.method public az(I)V
    .registers 4

    .line 2100
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2101
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xj:I

    .line 2102
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xi:I

    .line 2103
    iget-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2104
    return-void
.end method

.method public cancel()V
    .registers 6

    .line 2086
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xj:I

    .line 2087
    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xi:I

    .line 2088
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2089
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2090
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 2091
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2093
    :cond_2e
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2094
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 2095
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2097
    :cond_4c
    return-void
.end method

.method public run()V
    .registers 6

    .line 2115
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a4

    goto/16 :goto_a3

    .line 2129
    :pswitch_9
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xi:I

    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_a3

    .line 2139
    :pswitch_10
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2140
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    .line 2141
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2140
    invoke-virtual {v0, p0, v3, v4}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2143
    :cond_22
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;I)Z

    .line 2144
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_a3

    .line 2131
    :pswitch_39
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2132
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    .line 2133
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2132
    invoke-virtual {v0, p0, v3, v4}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2135
    :cond_4b
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;I)Z

    .line 2136
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2137
    goto :goto_a3

    .line 2117
    :pswitch_68
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xi:I

    packed-switch v0, :pswitch_data_b4

    goto :goto_a2

    .line 2123
    :pswitch_6e
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 2124
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_a2

    .line 2119
    :pswitch_85
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 2120
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->WW:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2121
    nop

    .line 2127
    :goto_a2
    nop

    .line 2149
    :goto_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_68
        :pswitch_9
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_39
        :pswitch_10
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_85
        :pswitch_6e
    .end packed-switch
.end method
