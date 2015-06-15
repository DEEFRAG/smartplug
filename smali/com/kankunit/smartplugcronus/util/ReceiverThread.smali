.class public Lcom/kankunit/smartplugcronus/util/ReceiverThread;
.super Ljava/lang/Thread;
.source "ReceiverThread.java"


# instance fields
.field private context:Landroid/content/Context;

.field private datagramSocket:Ljava/net/DatagramSocket;

.field db:Lnet/tsz/afinal/FinalDb;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/content/Context;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->stop:Z

    .line 53
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->datagramSocket:Ljava/net/DatagramSocket;

    .line 54
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->context:Landroid/content/Context;

    .line 55
    invoke-static {p2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/DatagramSocket;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->stop:Z

    .line 46
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->datagramSocket:Ljava/net/DatagramSocket;

    .line 47
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->context:Landroid/content/Context;

    .line 48
    invoke-static {p2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 62
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->stop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 134
    return-void

    .line 66
    :cond_1
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 67
    .local v4, "buf":[B
    new-instance v16, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 69
    .local v16, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->datagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramPacket;->getLength()I

    move-result v13

    .line 76
    .local v13, "len":I
    new-instance v21, Lsmartplug/JniC;

    invoke-direct/range {v21 .. v21}, Lsmartplug/JniC;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v13}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "backMsg":Ljava/lang/String;
    const-string v21, "%"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "data":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 80
    .local v5, "clientAddress":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, "ip_addr_o":Ljava/lang/String;
    const/16 v21, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "ip_addr":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramPacket;->getPort()I

    move-result v19

    .line 83
    .local v19, "remoteport":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, "port":Ljava/lang/String;
    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 88
    .local v14, "nowSecond":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    const-class v22, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "mac=\'"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x1

    aget-object v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 89
    .local v9, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 90
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 93
    .local v8, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v8, v14, v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setTime(J)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 70
    .end local v3    # "backMsg":Ljava/lang/String;
    .end local v5    # "clientAddress":Ljava/net/InetAddress;
    .end local v7    # "data":[Ljava/lang/String;
    .end local v8    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v11    # "ip_addr":Ljava/lang/String;
    .end local v12    # "ip_addr_o":Ljava/lang/String;
    .end local v13    # "len":I
    .end local v14    # "nowSecond":J
    .end local v18    # "port":Ljava/lang/String;
    .end local v19    # "remoteport":I
    :catch_0
    move-exception v10

    .line 72
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 96
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "backMsg":Ljava/lang/String;
    .restart local v5    # "clientAddress":Ljava/net/InetAddress;
    .restart local v7    # "data":[Ljava/lang/String;
    .restart local v9    # "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v11    # "ip_addr":Ljava/lang/String;
    .restart local v12    # "ip_addr_o":Ljava/lang/String;
    .restart local v13    # "len":I
    .restart local v14    # "nowSecond":J
    .restart local v18    # "port":Ljava/lang/String;
    .restart local v19    # "remoteport":I
    :cond_2
    new-instance v8, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;-><init>()V

    .line 97
    .restart local v8    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/16 v21, 0x1

    aget-object v21, v7, v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setMac(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v8, v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIp(Ljava/lang/String;)V

    .line 99
    const/16 v21, 0x3

    aget-object v21, v7, v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 101
    const/16 v21, 0x1

    aget-object v21, v7, v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setName(Ljava/lang/String;)V

    .line 102
    const-string v21, "new"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 103
    const/16 v21, 0x2

    aget-object v21, v7, v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v8, v14, v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setTime(J)V

    .line 105
    const-string v21, "off"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setShortCutExists(Ljava/lang/String;)V

    .line 106
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 107
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 108
    const/16 v21, 0x1

    aget-object v21, v7, v21

    invoke-static/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    .line 109
    const/16 v21, 0x1

    aget-object v21, v7, v21

    invoke-static/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, "phoneMac":Ljava/lang/String;
    const-string v21, ":"

    const-string v22, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 114
    sget-object v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 115
    .local v6, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 116
    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v20

    .line 118
    .local v20, "roster":Lorg/jivesoftware/smack/Roster;
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v22, v7, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kankun-smartplug.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v7, v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lorg/jivesoftware/smack/Roster;->createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 120
    :catch_1
    move-exception v10

    .line 122
    .local v10, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v10}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread;->stop:Z

    .line 141
    return-void
.end method
