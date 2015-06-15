.class public Lcom/kankunit/smartplugcronus/service/ReceiveDeviceService;
.super Landroid/app/Service;
.source "ReceiveDeviceService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    new-instance v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;

    sget-object v1, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->socket:Ljava/net/DatagramSocket;

    invoke-direct {v0, v1, p0}, Lcom/kankunit/smartplugcronus/util/ReceiverThread;-><init>(Ljava/net/DatagramSocket;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->start()V

    .line 23
    return-void
.end method
