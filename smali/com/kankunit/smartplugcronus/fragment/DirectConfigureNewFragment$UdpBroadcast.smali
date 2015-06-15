.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;
.super Ljava/lang/Thread;
.source "DirectConfigureNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpBroadcast"
.end annotation


# instance fields
.field private progress_len:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "udpSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 232
    const/16 v0, 0x2d

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->progress_len:I

    .line 234
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->udpSocket:Ljava/net/DatagramSocket;

    .line 235
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 240
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udp_thread:Z

    if-nez v3, :cond_1

    .line 261
    return-void

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->udp_stop:Z

    if-nez v3, :cond_0

    .line 243
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v2

    .line 244
    .local v2, "wifiIp":I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$1(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "main ip is ------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->ip:Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ip"

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->ip:Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$3()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v3

    const-string v4, "ikonke.udpbroadcast"

    invoke-static {v3, v1, v4}, Lcom/kankunit/smartplugcronus/util/BroadcastUtil;->postMsgToService(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "wifiIp":I
    :goto_1
    const-wide/16 v3, 0x1388

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
