.class public Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "WirelessConfigureFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;,
        Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;
    }
.end annotation


# static fields
.field private static ip:Ljava/lang/String;


# instance fields
.field private baseUdpBroadcastService:Landroid/content/Intent;

.field private cancelbtn:Landroid/widget/Button;

.field cmdLock:Z

.field private cmdSocket:Ljava/net/DatagramSocket;

.field private configBack:Z

.field private confirmBtn:Landroid/widget/Button;

.field private confirmBtnDeep:Landroid/widget/Button;

.field private currentSSID:Ljava/lang/String;

.field private device_mac:Ljava/lang/String;

.field private device_word:Ljava/lang/String;

.field private devicetype:Ljava/lang/String;

.field private eye:Landroid/widget/ImageButton;

.field private fa:Landroid/support/v7/app/ActionBarActivity;

.field private findMac:Z

.field private getMac:Z

.field initialDone:Z

.field private isFinishedConfig:Ljava/lang/String;

.field public isStartedConfigure:Z

.field private isTimerStart:Z

.field private jnic:Lsmartplug/JniC;

.field private mHandler:Landroid/os/Handler;

.field private netconfigure_questionmark:Landroid/widget/ImageButton;

.field private password:Ljava/lang/String;

.field private preWifiName:Ljava/lang/String;

.field private progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

.field private pwdET:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private ssid:Ljava/lang/String;

.field private ssidTV:Landroid/widget/TextView;

.field private udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;

.field private udpSocket:Ljava/net/DatagramSocket;

.field private udp_stop:Z

.field private udp_thread:Z

.field private wcg:Landroid/net/wifi/WifiConfiguration;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

.field private wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;

.field private wifiIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;

    .line 79
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->initialDone:Z

    .line 81
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cmdLock:Z

    .line 85
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z

    .line 91
    const-string v0, "false"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 99
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isTimerStart:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->currentSSID:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_thread:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_stop:Z

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getMac:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lsmartplug/JniC;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->jnic:Lsmartplug/JniC;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->currentSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z

    return v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->device_mac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->device_word:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$22(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$23(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I

    return-void
.end method

.method static synthetic access$25(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I

    return v0
.end method

.method static synthetic access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$27(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    sput-object p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->eye:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->startProgress()V

    return-void
.end method

.method static synthetic access$36(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$37(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->doWifiConfig()V

    return-void
.end method

.method static synthetic access$38(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isTimerStart:Z

    return v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->findMac:Z

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getMac:Z

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->findMac:Z

    return-void
.end method

.method private doWifiConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 334
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Switch to WiFi"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    :cond_0
    const-string v4, "kankunit2.4G"

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v5, "user_info"

    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/ActionBarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 339
    .local v2, "userInfo":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->startScan()V

    .line 342
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;

    .line 343
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 354
    :goto_2
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z

    .line 355
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->checkState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 356
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 357
    .local v1, "msgDisable":Landroid/os/Message;
    const-string v4, "wifiDisable"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 347
    .end local v1    # "msgDisable":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    .line 348
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 349
    .local v3, "wcgssid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->preWifiName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiIndex:I

    goto :goto_2

    .line 346
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    .end local v3    # "wcgssid":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;

    .line 362
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$WifiConfigThread;->start()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    .line 117
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    .line 131
    const v3, 0x7f0703bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    .line 130
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    .line 133
    const v3, 0x7f0703c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 132
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->netconfigure_questionmark:Landroid/widget/ImageButton;

    .line 134
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->netconfigure_questionmark:Landroid/widget/ImageButton;

    .line 135
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->eye:Landroid/widget/ImageButton;

    .line 153
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0700d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->scene_control_menu:Landroid/widget/ImageButton;

    .line 154
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->eye:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    .line 170
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "configpwd"

    const-string v4, "configpwd"

    invoke-static {v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, ""

    .line 172
    .local v1, "pwdStr":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssidTV:Landroid/widget/TextView;

    .line 174
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;

    .line 179
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udpSocket:Ljava/net/DatagramSocket;

    .line 180
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 181
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_thread:Z

    .line 186
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_stop:Z

    .line 187
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->findMac:Z

    .line 188
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getMac:Z

    .line 189
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z

    .line 190
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->jnic:Lsmartplug/JniC;

    .line 191
    new-instance v2, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v2, v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 192
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssidTV:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const-string v2, "mini"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udpSocket:Ljava/net/DatagramSocket;

    .line 197
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 198
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_2
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_thread:Z

    .line 203
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_stop:Z

    .line 204
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->findMac:Z

    .line 205
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getMac:Z

    .line 206
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->configBack:Z

    .line 207
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->jnic:Lsmartplug/JniC;

    .line 209
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v2, p0, v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/net/DatagramSocket;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;

    .line 210
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$UdpBroadcast;->start()V

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->showConfigureAnimation(Landroid/content/Context;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 213
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    .line 214
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void

    .line 171
    .end local v1    # "pwdStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "configpwd"

    const-string v4, "configpwd"

    invoke-static {v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 182
    .restart local v1    # "pwdStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_1

    .line 199
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startProgress()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isTimerStart:Z

    .line 301
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    .line 324
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->start()V

    .line 325
    return-void
.end method

.method private stopProgress()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isTimerStart:Z

    .line 329
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 787
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    sput-boolean v7, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 789
    if-eqz p1, :cond_0

    .line 790
    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 791
    const-string v3, "isFinishedConfig"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 792
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 793
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v5}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 794
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 795
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V

    .line 796
    const-string v3, "true"

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isFinishedConfig:Ljava/lang/String;

    .line 797
    const-string v3, "mac"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "deviceMac":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Configuration complete"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v3, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 802
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v4, "Configuration successful"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 803
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 804
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 806
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v3, "type"

    const-string v4, "deviceInfo"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v3, "updatetitle"

    const-string v4, "configuration was successful, please change the name"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v2, "it":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 812
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->startActivity(Landroid/content/Intent;)V

    .line 814
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 833
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "deviceMac":Ljava/lang/String;
    .end local v2    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    if-eqz v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 821
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 822
    const-string v4, "End of configuration, please check the device blue light status.\n Blue light flashing slowly: Device is not receiving the configuration request, please reconfigure.\n Blue light is flashing: Device is unable to connect to the server, please restore the factory settings and reconfigure.\n Blue light is off: configuration was successful, switch to the original WIFI, and find the current device in the devices list."

    .line 820
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 823
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 824
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 825
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 826
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v5}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 827
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V

    .line 828
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 763
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "updateProgress"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 782
    :cond_0
    :goto_0
    return v4

    .line 765
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    sput-boolean v5, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 767
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 768
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 770
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 771
    const-string v1, "Configure timeout, please check the device blue light status.\n Blue light flashing slowly: Device is not receiving the configuration request, please reconfigure.\n Blue light is flashing: Device is unable to connect to the server, please restore the factory settings and reconfigure.\n Blue light is off: configuration was successful, switch to the original WIFI, and find the current device in the devices list."

    .line 769
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 773
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 775
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 776
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V

    .line 777
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "changeWifi"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    const-string v2, "0K_SP3"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 282
    const v1, 0x7f0300fa

    .line 283
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    .line 284
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    const-string v1, "devicetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->initView()V

    .line 290
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->udp_thread:Z

    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v1, "Stop the IP update"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->stopProgress()V

    .line 112
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 113
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 838
    return-void
.end method
