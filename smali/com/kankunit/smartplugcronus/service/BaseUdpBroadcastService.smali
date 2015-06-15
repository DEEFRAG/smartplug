.class public Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.super Landroid/app/Service;
.source "BaseUdpBroadcastService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;,
        Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;,
        Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;,
        Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;,
        Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;
    }
.end annotation


# static fields
.field public static configSleepTime:I = 0x0

.field public static final netACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static tempMac:Ljava/lang/String;


# instance fields
.field private currentConfigureMac:Ljava/lang/String;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private ip:Ljava/lang/String;

.field private isUDPOn:Z

.field private isdirect:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private receiveThread:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;

.field private sj:Lsmartplug/JniC;

.field private switchReceiver:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;

.field private udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

.field private udpSocket:Ljava/net/DatagramSocket;

.field public wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x1388

    sput v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->tempMac:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lsmartplug/JniC;

    invoke-direct {v0}, Lsmartplug/JniC;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sj:Lsmartplug/JniC;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isUDPOn:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->currentConfigureMac:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v1, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V

    .line 90
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isUDPOn:Z

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lsmartplug/JniC;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sj:Lsmartplug/JniC;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->currentConfigureMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isUDPOn:Z

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->currentConfigureMac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->ip:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 178
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;

    .line 179
    new-instance v4, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 181
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    new-instance v4, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v4, p0, v5}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/net/DatagramSocket;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    .line 188
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->start()V

    .line 189
    new-instance v4, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {v4, p0, v5}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/net/DatagramSocket;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->receiveThread:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;

    .line 190
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->receiveThread:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->start()V

    .line 193
    new-instance v3, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V

    .line 194
    .local v3, "netStatReceiver":Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v2, "intentFilter2":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v3, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    new-instance v4, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->switchReceiver:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;

    .line 200
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "ikonke.udpbroadcast"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->switchReceiver:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 204
    return-void

    .line 182
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "intentFilter2":Landroid/content/IntentFilter;
    .end local v3    # "netStatReceiver":Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$NetStatReceiver;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->switchReceiver:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 222
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
