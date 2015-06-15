.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;
.super Ljava/lang/Thread;
.source "DirectConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpBroadcast"
.end annotation


# instance fields
.field private progress_len:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "udpSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 180
    const/16 v0, 0x2d

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->progress_len:I

    .line 182
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->udpSocket:Ljava/net/DatagramSocket;

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 188
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udp_thread:Z

    if-nez v3, :cond_1

    .line 209
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->udp_stop:Z

    if-nez v3, :cond_0

    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v2

    .line 192
    .local v2, "wifiIp":I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$1(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "main ip is ------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->ip:Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ip"

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->ip:Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$3()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v3

    const-string v4, "ikonke.udpbroadcast"

    invoke-static {v3, v1, v4}, Lcom/kankunit/smartplugcronus/util/BroadcastUtil;->postMsgToService(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "wifiIp":I
    :goto_1
    const-wide/16 v3, 0x1388

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
