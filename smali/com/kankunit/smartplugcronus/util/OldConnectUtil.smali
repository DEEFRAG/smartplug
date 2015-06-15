.class public Lcom/kankunit/smartplugcronus/util/OldConnectUtil;
.super Ljava/lang/Object;
.source "OldConnectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJnic()Lcom/kankunit/smartplugcronus/jni/SuperJNI;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kankunit/smartplugcronus/jni/SuperJNI;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/jni/SuperJNI;-><init>()V

    return-object v0
.end method

.method public static socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "dev_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v5, Lsmartplug/JniC;

    invoke-direct {v5}, Lsmartplug/JniC;-><init>()V

    .line 19
    .local v5, "jnic":Lsmartplug/JniC;
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 21
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, p0, v7}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 23
    .local v3, "cmd_buf":[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v7, v3

    invoke-direct {v4, v3, v7, v0, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 25
    .local v4, "datapacket":Ljava/net/DatagramPacket;
    invoke-virtual {p2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 27
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 28
    .local v2, "backbuf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v7, v2

    invoke-direct {v1, v2, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 30
    .local v1, "backPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 31
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    .line 33
    .local v6, "len":I
    invoke-virtual {v5, v2, v6}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
