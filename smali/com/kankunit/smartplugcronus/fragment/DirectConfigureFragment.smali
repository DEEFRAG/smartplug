.class public Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "DirectConfigureFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;,
        Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;
    }
.end annotation


# static fields
.field private static ip:Ljava/lang/String;


# instance fields
.field private cmdSocket:Ljava/net/DatagramSocket;

.field private configBack:Z

.field private configureBtn:Landroid/widget/ImageButton;

.field private device_mac:Ljava/lang/String;

.field private directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;

.field private dodirectconfiguredeep:Landroid/widget/ImageButton;

.field private exa1:Landroid/graphics/drawable/AnimationDrawable;

.field private exa2:Landroid/graphics/drawable/AnimationDrawable;

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

.field private udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;

.field private udpSocket:Ljava/net/DatagramSocket;

.field udp_stop:Z

.field udp_thread:Z

.field private waveImage1:Landroid/widget/ImageView;

.field private waveImage2:Landroid/widget/ImageView;

.field private wcg:Landroid/net/wifi/WifiConfiguration;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;

    .line 61
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->preWifiName:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z

    .line 73
    const-string v0, "false"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isTimerStart:Z

    .line 81
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    sput-object p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->startDirectConfig()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lsmartplug/JniC;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->jnic:Lsmartplug/JniC;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;

    .line 87
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 93
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udp_thread:Z

    .line 98
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udp_stop:Z

    .line 99
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->findMac:Z

    .line 100
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->getMac:Z

    .line 101
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z

    .line 102
    new-instance v1, Lsmartplug/JniC;

    invoke-direct {v1}, Lsmartplug/JniC;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->jnic:Lsmartplug/JniC;

    .line 103
    new-instance v1, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v1, v2}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 105
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Ljava/net/DatagramSocket;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;

    .line 106
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->start()V

    .line 108
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0701b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configureBtn:Landroid/widget/ImageButton;

    .line 109
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configureBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1
.end method

.method private startDirectConfig()V
    .locals 5

    .prologue
    .line 151
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->openWifi()V

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->startScan()V

    .line 158
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->preWifiName:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 166
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->configBack:Z

    .line 167
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->checkState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 168
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 169
    .local v1, "msgDisable":Landroid/os/Message;
    const-string v3, "wifiDisable"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    .end local v1    # "msgDisable":Landroid/os/Message;
    :goto_1
    return-void

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    .line 161
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 162
    .local v2, "wcgssid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->preWifiName:Ljava/lang/String;

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

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "wcgssid":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;

    .line 174
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->directConfigThread:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$DirectConfigThread;->start()V

    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 548
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    if-eqz p1, :cond_1

    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 550
    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    const-string v3, "true"

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    .line 555
    const-string v3, "mac"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "deviceMac":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Configuration complete"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v3, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v4, "Configuration successful"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v3, "type"

    const-string v4, "deviceInfo"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "updatetitle"

    const-string v4, "The configuration was successful, please modify the name"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v2, "it":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->startActivity(Landroid/content/Intent;)V

    .line 570
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 578
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "deviceMac":Ljava/lang/String;
    .end local v2    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    :cond_1
    return-void

    .line 572
    :cond_2
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    if-eqz v3, :cond_0

    .line 573
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->isStartedConfigure:Z

    .line 574
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v4, "Configuration failed"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->exa1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 537
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    :cond_0
    :goto_0
    return v2

    .line 538
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->exa2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 541
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f040012

    const/16 v2, 0x8

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 131
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->dodirectconfiguredeep:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->exa1:Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->exa2:Landroid/graphics/drawable/AnimationDrawable;

    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->initView()V

    .line 144
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udp_thread:Z

    .line 528
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v1, "Stop the IP update"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 529
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 530
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 587
    return-void
.end method
