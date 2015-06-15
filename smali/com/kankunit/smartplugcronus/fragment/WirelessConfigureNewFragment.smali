.class public Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "WirelessConfigureNewFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;,
        Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;
    }
.end annotation


# static fields
.field private static ip:Ljava/lang/String;

.field public static isConfigFinish:Z


# instance fields
.field private baseUdpBroadcastService:Landroid/content/Intent;

.field private cancelbtn:Landroid/widget/Button;

.field private change_txt:Landroid/widget/TextView;

.field cmdLock:Z

.field private cmdSocket:Ljava/net/DatagramSocket;

.field private configBack:Z

.field private confirmBtn:Landroid/widget/Button;

.field private confirmBtnDeep:Landroid/widget/Button;

.field private currentSSID:Ljava/lang/String;

.field private device_mac:Ljava/lang/String;

.field private device_word:Ljava/lang/String;

.field private devicetype:Ljava/lang/String;

.field private dialogPop:Landroid/widget/PopupWindow;

.field private direct_button:Landroid/widget/ImageButton;

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

.field private password:Ljava/lang/String;

.field private preWifiName:Ljava/lang/String;

.field private progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

.field private pwdET:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private ssid:Ljava/lang/String;

.field private ssidTV:Landroid/widget/TextView;

.field private udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;

.field private udpSocket:Ljava/net/DatagramSocket;

.field private udp_stop:Z

.field private udp_thread:Z

.field private wcg:Landroid/net/wifi/WifiConfiguration;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

.field private wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;

.field private wifiIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;

    .line 78
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initialDone:Z

    .line 80
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->preWifiName:Ljava/lang/String;

    .line 81
    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiIndex:I

    .line 82
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cmdLock:Z

    .line 84
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->configBack:Z

    .line 90
    const-string v0, "false"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 97
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isTimerStart:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->currentSSID:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_thread:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_stop:Z

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getMac:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lsmartplug/JniC;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->jnic:Lsmartplug/JniC;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->currentSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->configBack:Z

    return v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->device_mac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->device_word:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->device_mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$22(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$23(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->preWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiIndex:I

    return-void
.end method

.method static synthetic access$25(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiIndex:I

    return v0
.end method

.method static synthetic access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    sput-object p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V

    return-void
.end method

.method static synthetic access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->eye:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$33(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->startProgress()V

    return-void
.end method

.method static synthetic access$36(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$37(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->doWifiConfig()V

    return-void
.end method

.method static synthetic access$38(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isTimerStart:Z

    return v0
.end method

.method static synthetic access$39(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getMac:Z

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z

    return-void
.end method

.method private doWifiConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 336
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Please switch to wifi"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    :cond_0
    const-string v4, "kankunit2.4G"

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v5, "user_info"

    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/ActionBarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 341
    .local v2, "userInfo":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->startScan()V

    .line 344
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->preWifiName:Ljava/lang/String;

    .line 345
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 356
    :goto_2
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->configBack:Z

    .line 357
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->checkState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 358
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 359
    .local v1, "msgDisable":Landroid/os/Message;
    const-string v4, "wifiDisable"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 349
    .end local v1    # "msgDisable":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    .line 350
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wcg:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 351
    .local v3, "wcgssid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->preWifiName:Ljava/lang/String;

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

    .line 352
    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiIndex:I

    goto :goto_2

    .line 348
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v3    # "wcgssid":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;

    .line 364
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiConfigThread:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$WifiConfigThread;->start()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->change_txt:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->change_txt:Landroid/widget/TextView;

    const-string v3, "<u>Please switch to another WLAN</u>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->change_txt:Landroid/widget/TextView;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->direct_button:Landroid/widget/ImageButton;

    .line 133
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->direct_button:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    .line 142
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    .line 157
    const v3, 0x7f0703bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    .line 156
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    .line 158
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->eye:Landroid/widget/ImageButton;

    .line 159
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0700d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->scene_control_menu:Landroid/widget/ImageButton;

    .line 160
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->eye:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    .line 176
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;

    .line 177
    new-instance v2, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v2, v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 178
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "configpwd"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, ""

    .line 180
    .local v1, "pwdStr":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssidTV:Landroid/widget/TextView;

    .line 182
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;

    .line 187
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udpSocket:Ljava/net/DatagramSocket;

    .line 188
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 189
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_thread:Z

    .line 194
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_stop:Z

    .line 195
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z

    .line 196
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getMac:Z

    .line 197
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->configBack:Z

    .line 198
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->jnic:Lsmartplug/JniC;

    .line 199
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssidTV:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const-string v2, "mini"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udpSocket:Ljava/net/DatagramSocket;

    .line 203
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    .line 204
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cmdSocket:Ljava/net/DatagramSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :goto_2
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_thread:Z

    .line 209
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_stop:Z

    .line 210
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z

    .line 211
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getMac:Z

    .line 212
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->configBack:Z

    .line 213
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->jnic:Lsmartplug/JniC;

    .line 215
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v2, p0, v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/net/DatagramSocket;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;

    .line 216
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udpBroadcast:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->start()V

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/animationhandler/AnimationHandler;->showConfigureAnimation(Landroid/content/Context;Landroid/view/View;)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 219
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0703bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    .line 220
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void

    .line 179
    .end local v1    # "pwdStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "configpwd"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 190
    .restart local v1    # "pwdStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_1

    .line 205
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 759
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

    .line 760
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startProgress()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isTimerStart:Z

    .line 303
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    .line 326
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->start()V

    .line 327
    return-void
.end method

.method private stopProgress()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isTimerStart:Z

    .line 331
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 825
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 826
    sput-boolean v8, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 827
    const/16 v6, 0x1388

    sput v6, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 828
    if-eqz p1, :cond_0

    .line 829
    const-string v6, "isFinishedConfig"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 830
    const-string v6, "isFinishedConfig"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 831
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 832
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 833
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v6, v9}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 834
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V

    .line 835
    const-string v6, "true"

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isFinishedConfig:Ljava/lang/String;

    .line 836
    const-string v6, "mac"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "deviceMac":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Configuration is completed"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v6, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->addShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 841
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v7, "Configuration success"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 842
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 843
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 845
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 846
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "title"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v6, "type"

    const-string v7, "deviceInfo"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v6, "updatetitle"

    const-string v7, "The configuration was successful, please modify the name"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 850
    .local v3, "it":Landroid/content/Intent;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-class v7, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 851
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->startActivity(Landroid/content/Intent;)V

    .line 853
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v6}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 904
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "deviceMac":Ljava/lang/String;
    .end local v3    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    if-eqz v6, :cond_0

    .line 857
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 858
    iput-boolean v9, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 859
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "Reset Description"

    aput-object v6, v5, v9

    const-string v6, "Video Help"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "Good"

    aput-object v7, v5, v6

    .line 860
    .local v5, "strs":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030062

    const v8, 0x7f0701af

    invoke-direct {v0, v6, v7, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 861
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$8;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$8;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    .line 886
    .local v4, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    if-nez v6, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "Configuration failed"

    const-string v8, "After reset, please try to reconfigure."

    invoke-static {v6, v7, v8, v4, v0}, Lcom/kankunit/smartplugcronus/util/DialogUtil;->initPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)Landroid/widget/PopupWindow;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    .line 889
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->scene_control_menu:Landroid/widget/ImageButton;

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v8, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 895
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 896
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v6, v9}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 897
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 898
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V

    .line 899
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 765
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "updateProgress"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 820
    :cond_0
    :goto_0
    return v7

    .line 767
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    sput-boolean v8, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 769
    const/16 v3, 0x1388

    sput v3, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 770
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 771
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 777
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "Reset Description"

    aput-object v3, v2, v7

    const-string v3, "Video Help"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "Good"

    aput-object v4, v2, v3

    .line 778
    .local v2, "strs":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030062

    const v5, 0x7f0701af

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 779
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$7;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    .line 805
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    if-nez v3, :cond_2

    .line 806
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Configuration failed"

    const-string v5, "After reset, please try to reconfigure."

    invoke-static {v3, v4, v5, v1, v0}, Lcom/kankunit/smartplugcronus/util/DialogUtil;->initPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    .line 808
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->dialogPop:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->scene_control_menu:Landroid/widget/ImageButton;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 811
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v7}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setProgress(I)V

    .line 813
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 814
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V

    .line 815
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 817
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "changeWifi"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    const-string v5, "0K_SP3"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 299
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 284
    const v1, 0x7f0300fb

    .line 285
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    const-string v1, "devicetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initView()V

    .line 292
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 111
    const/16 v0, 0x1388

    sput v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_thread:Z

    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    const-string v1, "Stop IP Update"

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->stopProgress()V

    .line 115
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;

    check-cast v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;

    .line 276
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragment==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 278
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 909
    return-void
.end method
