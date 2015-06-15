.class public Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseUdpBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    const-string v5, "isUDPOn"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isUDPOn:Z
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$1(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Z

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$2(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Z)V

    .line 95
    const-string v4, "ip"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "ipStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 97
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-static {v4, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$3(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 103
    :cond_0
    const-string v4, "currentConfigureMac"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "currentConfigureMacStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 105
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-static {v4, v0}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$4(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 107
    :cond_1
    const-string v4, "isdirect"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "isdirectStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 110
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-static {v4, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$5(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 116
    :cond_2
    const-string v4, "msgBody"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "scanSignal":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 118
    const-string v4, "stopScan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "udpStopScan"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$6(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->stopThread()V

    .line 121
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$6(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->interrupt()V

    .line 123
    :cond_3
    const-string v4, "startScan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "udpStartScan"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    new-instance v5, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpSocket:Ljava/net/DatagramSocket;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$7(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/net/DatagramSocket;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;-><init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/net/DatagramSocket;)V

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$8(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;)V

    .line 126
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$SwitchReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->udpBroadcast:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$6(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->start()V

    .line 129
    :cond_4
    return-void
.end method
