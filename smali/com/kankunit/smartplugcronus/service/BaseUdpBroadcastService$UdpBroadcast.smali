.class Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;
.super Ljava/lang/Thread;
.source "BaseUdpBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpBroadcast"
.end annotation


# instance fields
.field private isStop:Z

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "udpSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->isStop:Z

    .line 229
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->udpSocket:Ljava/net/DatagramSocket;

    .line 230
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 239
    :goto_0
    iget-boolean v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->isStop:Z

    if-eqz v10, :cond_0

    .line 276
    return-void

    .line 242
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    .line 243
    .local v7, "isWifiConnected":Z
    if-eqz v7, :cond_2

    .line 244
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    iget-object v10, v10, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v9

    .line 245
    .local v9, "wifiIp":I
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-static {v9}, Lcom/kankunit/smartplugcronus/util/DataUtil;->intToIp255(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$3(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 246
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 247
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    const-string v11, "192.168.145.253"

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$3(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 250
    :cond_1
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->ip:Ljava/lang/String;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$9(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 252
    .local v0, "broadcastAddr":Ljava/net/InetAddress;
    const-string v1, "lan_phone%mac%nopassword%"

    .line 253
    .local v1, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 254
    const-string v10, "yyyy-MM-dd-HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 253
    invoke-direct {v6, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    .local v6, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 256
    .local v3, "cur":Ljava/util/Date;
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "str":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%heart"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "---send"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sj:Lsmartplug/JniC;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$10(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lsmartplug/JniC;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v1, v11}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v2

    .line 260
    .local v2, "cmd_buf":[B
    new-instance v4, Ljava/net/DatagramPacket;

    .line 261
    array-length v10, v2

    const/16 v11, 0x6b27

    .line 260
    invoke-direct {v4, v2, v10, v0, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 262
    .local v4, "datapacket":Ljava/net/DatagramPacket;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v10, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v0    # "broadcastAddr":Ljava/net/InetAddress;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "cmd_buf":[B
    .end local v3    # "cur":Ljava/util/Date;
    .end local v4    # "datapacket":Ljava/net/DatagramPacket;
    .end local v6    # "fmt":Ljava/text/SimpleDateFormat;
    .end local v7    # "isWifiConnected":Z
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "wifiIp":I
    :cond_2
    :goto_1
    :try_start_1
    sget v10, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v5

    .line 273
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 266
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 267
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UdpBroadcast;->isStop:Z

    .line 235
    return-void
.end method
