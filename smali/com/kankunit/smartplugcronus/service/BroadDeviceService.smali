.class public Lcom/kankunit/smartplugcronus/service/BroadDeviceService;
.super Landroid/app/Service;
.source "BroadDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;,
        Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;
    }
.end annotation


# static fields
.field public static socket:Ljava/net/DatagramSocket;


# instance fields
.field private broadcastThread:Lcom/kankunit/smartplugcronus/util/BroadcastThread;

.field private checkDeviceStatusThread:Lcom/kankunit/smartplugcronus/service/BroadDeviceService$CheckDeviceStatusThread;

.field private currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private handler:Landroid/os/Handler;

.field private lock:Lcom/kankunit/smartplugcronus/util/TaskLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v1, 0x0

    sput-object v1, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->socket:Ljava/net/DatagramSocket;

    .line 42
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    sput-object v1, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Ljava/net/SocketException;
    :goto_0
    return-void

    .line 43
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/util/TaskLock;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->db:Lnet/tsz/afinal/FinalDb;

    .line 62
    new-instance v2, Lcom/kankunit/smartplugcronus/util/TaskLock;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/util/TaskLock;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->lock:Lcom/kankunit/smartplugcronus/util/TaskLock;

    .line 64
    new-instance v0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)V

    .line 65
    .local v0, "deviceReceiver":Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ikonke.basebroadcast"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v2, Lcom/kankunit/smartplugcronus/util/BroadcastThread;

    sget-object v3, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->socket:Ljava/net/DatagramSocket;

    invoke-direct {v2, v3, p0}, Lcom/kankunit/smartplugcronus/util/BroadcastThread;-><init>(Ljava/net/DatagramSocket;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->broadcastThread:Lcom/kankunit/smartplugcronus/util/BroadcastThread;

    .line 70
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->broadcastThread:Lcom/kankunit/smartplugcronus/util/BroadcastThread;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->start()V

    .line 74
    new-instance v2, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$1;-><init>(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->handler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->broadcastThread:Lcom/kankunit/smartplugcronus/util/BroadcastThread;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->stopThread()V

    .line 193
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 194
    return-void
.end method
