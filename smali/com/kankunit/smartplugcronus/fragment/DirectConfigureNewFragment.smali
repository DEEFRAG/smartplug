.class public Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "DirectConfigureNewFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;,
        Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;
    }
.end annotation


# static fields
.field private static ip:Ljava/lang/String;


# instance fields
.field private cmdSocket:Ljava/net/DatagramSocket;

.field private configBack:Z

.field private configureAmButton:Landroid/widget/ImageButton;

.field private configureBtn:Landroid/widget/ImageButton;

.field private device_mac:Ljava/lang/String;

.field private devicetype:Ljava/lang/String;

.field private directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;

.field private dodirectconfiguredeep:Landroid/widget/ImageButton;

.field private fa:Landroid/support/v7/app/ActionBarActivity;

.field findMac:Z

.field getMac:Z

.field private isFinishedConfig:Ljava/lang/String;

.field public isStartedConfigure:Z

.field private isTimerStart:Z

.field private jnic:Lsmartplug/JniC;

.field private mHandler:Landroid/os/Handler;

.field private preWifiName:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;

.field private udpSocket:Ljava/net/DatagramSocket;

.field udp_stop:Z

.field udp_thread:Z

.field private wcg:Landroid/net/wifi/WifiConfiguration;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

.field private wifiButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;

    .line 68
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->preWifiName:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configBack:Z

    .line 76
    const-string v0, "false"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isTimerStart:Z

    .line 86
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->devicetype:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    sput-object p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->startDirectConfig()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Lsmartplug/JniC;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->jnic:Lsmartplug/JniC;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configBack:Z

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->device_mac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private initView()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 91
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->devicetype:Ljava/lang/String;

    const-string v6, "mini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->devicetype:Ljava/lang/String;

    const-string v6, "ap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 93
    .local v1, "direct":Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701b9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 94
    .local v3, "direct_text":Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 95
    .local v2, "direct_p":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    .end local v1    # "direct":Landroid/widget/RelativeLayout;
    .end local v2    # "direct_p":Landroid/widget/RelativeLayout;
    .end local v3    # "direct_text":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->devicetype:Ljava/lang/String;

    const-string v6, "k1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 101
    .local v0, "dbgLayout":Landroid/widget/RelativeLayout;
    const v5, 0x7f02011a

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 104
    .end local v0    # "dbgLayout":Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiButton:Landroid/widget/ImageButton;

    .line 105
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->mHandler:Landroid/os/Handler;

    .line 116
    :try_start_0
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    :try_start_1
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 122
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udp_thread:Z

    .line 127
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udp_stop:Z

    .line 128
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->findMac:Z

    .line 129
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->getMac:Z

    .line 130
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configBack:Z

    .line 131
    new-instance v5, Lsmartplug/JniC;

    invoke-direct {v5}, Lsmartplug/JniC;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->jnic:Lsmartplug/JniC;

    .line 132
    new-instance v5, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v5, v6}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 134
    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v5, p0, v6}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;Ljava/net/DatagramSocket;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;

    .line 135
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->start()V

    .line 137
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0701b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureBtn:Landroid/widget/ImageButton;

    .line 138
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void

    .line 117
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/net/SocketException;
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v4

    .line 124
    .restart local v4    # "e":Ljava/net/SocketException;
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1
.end method

.method private startDirectConfig()V
    .locals 5

    .prologue
    .line 203
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->openWifi()V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->startScan()V

    .line 210
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->preWifiName:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 218
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configBack:Z

    .line 219
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->checkState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 220
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 221
    .local v1, "msgDisable":Landroid/os/Message;
    const-string v3, "wifiDisable"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    .end local v1    # "msgDisable":Landroid/os/Message;
    :goto_1
    return-void

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    .line 213
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 214
    .local v2, "wcgssid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->preWifiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "wcgssid":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;

    .line 226
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$DirectConfigThread;->start()V

    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 602
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    if-eqz p1, :cond_0

    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 604
    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    const-string v3, "true"

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    .line 609
    const-string v3, "mac"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "deviceMac":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Configuration complete"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v3, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v4, "Configuration successful"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v3, "type"

    const-string v4, "deviceInfo"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v3, "updatetitle"

    const-string v4, "The configuration was successful, please modify the name"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 621
    .local v2, "it":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->startActivity(Landroid/content/Intent;)V

    .line 624
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 636
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "deviceMac":Ljava/lang/String;
    .end local v2    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    if-eqz v3, :cond_0

    .line 627
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->isStartedConfigure:Z

    .line 628
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v4, "Configuration failed"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 585
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 181
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 183
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    check-cast v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->devicetype:Ljava/lang/String;

    .line 185
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->configureAmButton:Landroid/widget/ImageButton;

    .line 195
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->initView()V

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udp_thread:Z

    .line 580
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v1, "Stop the IP update"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 581
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 582
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 641
    return-void
.end method
