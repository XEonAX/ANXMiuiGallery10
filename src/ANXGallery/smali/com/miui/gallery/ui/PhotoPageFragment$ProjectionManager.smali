.class Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/miui/gallery/projection/ConnectController$ConnectListener;
.implements Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;
.implements Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectionManager"
.end annotation


# instance fields
.field private mConnectState:I

.field private mConnectedDeviceName:Ljava/lang/String;

.field private mCurItem:Lcom/miui/gallery/model/BaseDataItem;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteController:Lcom/miui/gallery/projection/RemoteController;

.field private mWidget:Lcom/miui/gallery/projection/DeviceListController;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 2

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    .line 1874
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    .line 1876
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 1908
    new-instance v0, Lcom/miui/gallery/projection/DeviceListController;

    iget-object v1, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    .line 1909
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/projection/DeviceListController;->setOnItemClickListener(Lcom/miui/gallery/projection/DeviceListController$OnItemClickListener;)V

    .line 1910
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    .line 1911
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/projection/ConnectController;->registConnectListener(Lcom/miui/gallery/projection/ConnectController$ConnectListener;)V

    .line 1912
    new-instance v0, Lcom/miui/gallery/projection/RemoteController;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/RemoteController;-><init>(Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    .line 1913
    return-void
.end method

.method static synthetic access$3800(Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->projectClicked()V

    return-void
.end method

.method private isBigScreenSupported(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v0, 0x0

    .line 1929
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1934
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private projectClicked()V
    .locals 2

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->show()V

    .line 1919
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1920
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2Local(I)V

    .line 1922
    :cond_0
    return-void
.end method

.method private setConnectState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2088
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    .line 2089
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/projection/RemoteController;->onConnectStateChange(Landroid/content/Context;Z)V

    .line 2090
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->refreshProjectState()V

    .line 2091
    return-void

    .line 2089
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableRemoteControl()V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteController;->disableDelay(Landroid/content/Context;)V

    .line 2144
    return-void
.end method

.method public enableRemoteControl()V
    .locals 2

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteController;->enable(Landroid/content/Context;)V

    .line 2140
    return-void
.end method

.method public enterSlideShow(I)V
    .locals 4
    .param p1, "currentIndex"    # I

    .prologue
    .line 2111
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/miui/gallery/projection/ConnectController;->showType(ZI)I

    move-result v0

    .line 2112
    .local v0, "showTypeResult":I
    if-eqz v0, :cond_0

    .line 2113
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v3, 0x7f0e03b8

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2120
    :goto_0
    return-void

    .line 2117
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/projection/RemoteController;->disable(Landroid/content/Context;)V

    .line 2118
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 2119
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v3

    .line 2118
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/ui/ProjectSlideFragment;->showProjectSlideFragment(Lcom/miui/gallery/activity/BaseActivity;Landroid/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitSlideShow()V
    .locals 2

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mCurItem:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 2124
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteController;->enable(Landroid/content/Context;)V

    .line 2125
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteController;->disableDelay(Landroid/content/Context;)V

    .line 2128
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1880
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1904
    :goto_0
    :pswitch_0
    return v3

    .line 1886
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2Local(I)V

    goto :goto_0

    .line 1889
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1890
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1891
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/projection/ConnectController;->connectPhotoServer(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1892
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/miui/gallery/projection/ConnectController;->showType(ZI)I

    goto :goto_0

    .line 1895
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0e03b3

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1896
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 1897
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v1}, Lcom/miui/gallery/projection/DeviceListController;->removeActive()V

    goto :goto_0

    .line 1901
    .end local v0    # "deviceName":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2Local(I)V

    goto :goto_0

    .line 1880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 1925
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceRefresh(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "curDevice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    .line 2028
    const-string v0, "ProjectionManager"

    const-string v1, "onDeviceRefresh %s"

    invoke-static {v0, v1, p2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2029
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/projection/DeviceListController;->refreshDevices(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->refreshProjectState()V

    .line 2032
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    if-eq v0, v2, :cond_1

    .line 2033
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 2035
    :cond_1
    return-void
.end method

.method public onDeviceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "removedDevice"    # Ljava/lang/String;

    .prologue
    .line 2020
    const-string v0, "ProjectionManager"

    const-string v1, "onDeviceRemoved %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2021
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/projection/DeviceListController;->removeDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->refreshProjectState()V

    .line 2024
    :cond_0
    return-void
.end method

.method public onDevicesAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "newDevice"    # Ljava/lang/String;

    .prologue
    .line 2014
    const-string v0, "ProjectionManager"

    const-string v1, "onDevicesAdded %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2015
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/projection/DeviceListController;->addNewDevice(Ljava/lang/String;Z)V

    .line 2016
    return-void
.end method

.method public onDevicesAvailable(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2004
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "ProjectionManager"

    const-string v2, "onDevicesAvailable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    if-eqz p1, :cond_0

    .line 2006
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2007
    .local v0, "device":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/projection/DeviceListController;->addNewDevice(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2010
    .end local v0    # "device":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onItemClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2095
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2096
    sget-object v0, Lcom/miui/gallery/projection/DeviceListController;->MOBILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2Local(I)V

    .line 2107
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->dismiss()V

    .line 2108
    return-void

    .line 2099
    :cond_0
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->release()I

    .line 2100
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2TV(Ljava/lang/String;)V

    goto :goto_0

    .line 2103
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2104
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->switch2Local(I)V

    goto :goto_0
.end method

.method public onPhotoConnectReleased()V
    .locals 2

    .prologue
    .line 2063
    const-string v0, "ProjectionManager"

    const-string v1, "onPhotoConnectReleased"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2065
    return-void
.end method

.method public onPhotoConnectResponse(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 2039
    const-string v0, "ProjectionManager"

    const-string v1, "onPhotoConnectResponse %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2040
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2041
    packed-switch p1, :pswitch_data_0

    .line 2055
    :goto_0
    return-void

    .line 2043
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 2044
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2045
    const-string v0, "photo"

    const-string v1, "project_photo_success"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2048
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 2049
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2051
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0e03b3

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 2052
    const-string v0, "photo"

    const-string v1, "project_photo_fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2041
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRemoteControl(Z)V
    .locals 5
    .param p1, "isVolumeUp"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2148
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    if-eqz p1, :cond_3

    .line 2153
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 2154
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2155
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isKeyGuardLocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 2159
    .end local v0    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 2160
    .restart local v0    # "index":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2161
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isKeyGuardLocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method refreshProjectState()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1976
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1978
    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    packed-switch v4, :pswitch_data_0

    .line 1987
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1990
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    if-ne v4, v3, :cond_2

    const-string v0, "init"

    .line 1991
    .local v0, "state":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mCurItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->isBigScreenSupported(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1992
    const-string v4, "ProjectionManager"

    const-string v5, "refreshProjectState: [%s] [visible]"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1993
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    if-eq v5, v8, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v1, v3, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshCastItem(Ljava/lang/String;ZZ)V

    .line 2000
    .end local v0    # "state":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 1980
    :pswitch_0
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02ef

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectedDeviceName:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1981
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1983
    .end local v1    # "title":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02ee

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectedDeviceName:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1984
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1990
    :cond_2
    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectState:I

    if-ne v4, v8, :cond_3

    const-string v0, "connecting"

    goto :goto_1

    :cond_3
    const-string v0, "connected"

    goto :goto_1

    .line 1995
    .restart local v0    # "state":Ljava/lang/String;
    :cond_4
    const-string v4, "ProjectionManager"

    const-string v5, "refreshProjectState: [%s] [gone]"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1996
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshCastItem(Ljava/lang/String;ZZ)V

    .line 1997
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 1978
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->dismiss()V

    .line 2132
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/projection/ConnectController;->unregistConnectListener(Lcom/miui/gallery/projection/ConnectController$ConnectListener;)V

    .line 2133
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2134
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/gallery/projection/ConnectController;->disconnect(Lcom/miui/gallery/projection/ConnectController$ConnectListener;Z)V

    .line 2135
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mRemoteController:Lcom/miui/gallery/projection/RemoteController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteController;->release(Landroid/content/Context;)V

    .line 2136
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "index"    # I

    .prologue
    .line 1938
    if-nez p1, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1941
    :cond_0
    const-string v0, "ProjectionManager"

    const-string/jumbo v1, "updateItem %s  %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1942
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mCurItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 1943
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->refreshProjectState()V

    .line 1944
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/projection/ConnectController;->updateCurrentPhoto(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public switch2Local(I)V
    .locals 2
    .param p1, "activeRelease"    # I

    .prologue
    const/4 v0, 0x1

    .line 2068
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 2069
    if-ne p1, v0, :cond_0

    .line 2070
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->release()I

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mWidget:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->removeActive()V

    .line 2074
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2075
    return-void
.end method

.method public switch2TV(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 2079
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->setConnectState(I)V

    .line 2081
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2082
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2083
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2084
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2085
    return-void
.end method

.method public updateRemoteView(Lcom/miui/gallery/model/BaseDataItem;Landroid/graphics/RectF;)V
    .locals 9
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "displayRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1952
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1953
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v0, v3

    .line 1954
    .local v7, "currentScale":F
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    .line 1955
    invoke-virtual {v3}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1954
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1958
    .local v8, "minScale":F
    const v0, 0x358637bd    # 1.0E-6f

    invoke-static {v7, v8, v0}, Lcom/miui/gallery/util/Utils;->floatNear(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    cmpg-float v0, v7, v8

    if-gez v0, :cond_2

    .line 1960
    :cond_0
    move v7, v8

    .line 1961
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v5

    .line 1962
    .local v1, "centerX":F
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v5

    .line 1967
    .local v2, "centerY":F
    :goto_0
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    .line 1968
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 1969
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 1970
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 1971
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1967
    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/projection/ConnectController;->syncRemoteView(FFFFFFF)V

    .line 1973
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v7    # "currentScale":F
    .end local v8    # "minScale":F
    :cond_1
    return-void

    .line 1964
    .restart local v7    # "currentScale":F
    .restart local v8    # "minScale":F
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    div-float v1, v0, v7

    .line 1965
    .restart local v1    # "centerX":F
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    div-float v2, v0, v7

    .restart local v2    # "centerY":F
    goto :goto_0
.end method

.method public updateSet(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 1
    .param p1, "set"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 1948
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/projection/ConnectController;->updateCurrentFolder(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 1949
    return-void
.end method
