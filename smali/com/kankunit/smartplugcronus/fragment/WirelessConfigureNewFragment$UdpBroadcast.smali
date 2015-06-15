.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;
.super Ljava/lang/Thread;
.source "WirelessConfigureNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpBroadcast"
.end annotation


# instance fields
.field private progress_len:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "udpSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 370
    const/16 v0, 0x2d

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    .line 373
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->udpSocket:Ljava/net/DatagramSocket;

    .line 374
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x2d

    .line 378
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_thread:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    return-void

    .line 379
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->udp_stop:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    :try_start_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v3

    .line 382
    .local v3, "wifiIp":I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$3(Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ip"

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ip:Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$4()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v4

    .line 387
    const-string v5, "ikonke.udpbroadcast"

    .line 386
    invoke-static {v4, v1, v5}, Lcom/kankunit/smartplugcronus/util/BroadcastUtil;->postMsgToService(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "wifiIp":I
    :goto_1
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getMac:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 398
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 399
    .local v2, "msg":Landroid/os/Message;
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    .line 400
    const-string v4, "setProgress"

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    iput v4, v2, Landroid/os/Message;->what:I

    .line 402
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    goto :goto_0

    .line 389
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_2
    iput v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    .line 406
    const-string v4, "error"

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Z)V

    goto/16 :goto_0

    .line 410
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->findMac:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    iput v6, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$UdpBroadcast;->progress_len:I

    goto/16 :goto_0
.end method
