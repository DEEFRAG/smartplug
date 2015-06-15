.class public Lcom/kankunit/smartplugcronus/util/BroadcastThread;
.super Ljava/lang/Thread;
.source "BroadcastThread.java"


# instance fields
.field private context:Landroid/content/Context;

.field private datagramSocket:Ljava/net/DatagramSocket;

.field private packet:Ljava/net/DatagramPacket;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/content/Context;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->stop:Z

    .line 35
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->datagramSocket:Ljava/net/DatagramSocket;

    .line 36
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->context:Landroid/content/Context;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->getPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->packet:Ljava/net/DatagramPacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPacket()Ljava/net/DatagramPacket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v9, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getIPAddress()I

    move-result v8

    .line 82
    .local v8, "wifiIp":I
    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->intToIp(I)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "ip":Ljava/lang/String;
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 87
    .local v0, "broadcastAddr":Ljava/net/InetAddress;
    const-string v1, "lan_phone%mac%nopassword%"

    .line 88
    .local v1, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 89
    const-string v9, "yyyy-MM-dd-HH:mm:ss"

    .line 88
    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 91
    .local v3, "cur":Ljava/util/Date;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "str":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%heart"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v9, Lsmartplug/JniC;

    invoke-direct {v9}, Lsmartplug/JniC;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v2

    .line 94
    .local v2, "cmd_buf":[B
    new-instance v4, Ljava/net/DatagramPacket;

    .line 95
    array-length v9, v2

    const/16 v10, 0x6b27

    .line 94
    invoke-direct {v4, v2, v9, v0, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 97
    .local v4, "datapacket":Ljava/net/DatagramPacket;
    return-object v4
.end method

.method public intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 107
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

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 48
    :goto_0
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->stop:Z

    if-eqz v1, :cond_0

    .line 67
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->datagramSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_1
    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/BroadcastThread;->stop:Z

    .line 74
    return-void
.end method
