.class Lmiui/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPlayHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
    }
.end annotation


# static fields
.field private static final Xm:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

.field private static final Xn:I = 0x0

.field private static final Xo:I = 0x1

.field private static final Xp:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 202
    new-instance v0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiui/widget/NumberPicker$1;)V

    sput-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xm:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 209
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 223
    :pswitch_9
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xm:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    .line 224
    goto :goto_1f

    .line 220
    :pswitch_11
    sget-object p1, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xm:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    .line 221
    goto :goto_1f

    .line 217
    :pswitch_17
    sget-object v0, Lmiui/widget/NumberPicker$SoundPlayHandler;->Xm:Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(I)V

    .line 218
    nop

    .line 228
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_17
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method

.method init(I)V
    .registers 3

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    return-void
.end method

.method play()V
    .registers 2

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method release(I)V
    .registers 4

    .line 243
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method stop()V
    .registers 2

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->removeMessages(I)V

    .line 240
    return-void
.end method
