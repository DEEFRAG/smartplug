.class public Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;
.super Ljava/lang/Thread;
.source "ReceiverThread_bak.java"


# instance fields
.field private context:Landroid/content/Context;

.field private datagramSocket:Ljava/net/DatagramSocket;

.field db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/content/Context;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->stop:Z

    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->datagramSocket:Ljava/net/DatagramSocket;

    .line 50
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->context:Landroid/content/Context;

    .line 51
    new-instance v0, Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    .line 52
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
    .line 41
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->stop:Z

    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->datagramSocket:Ljava/net/DatagramSocket;

    .line 43
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 58
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->stop:Z

    if-eqz v2, :cond_1

    .line 121
    return-void

    .line 62
    :cond_1
    const/16 v2, 0x400

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 63
    .local v21, "buf":[B
    new-instance v29, Ljava/net/DatagramPacket;

    move-object/from16 v0, v21

    array-length v2, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 65
    .local v29, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->datagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramPacket;->getLength()I

    move-result v27

    .line 72
    .local v27, "len":I
    new-instance v2, Lsmartplug/JniC;

    invoke-direct {v2}, Lsmartplug/JniC;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v20

    .line 74
    .local v20, "backMsg":Ljava/lang/String;
    const-string v2, "%"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 75
    .local v23, "data":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v22

    .line 76
    .local v22, "clientAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v25

    .line 77
    .local v25, "ip_addr_o":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "ip_addr":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramPacket;->getPort()I

    move-result v30

    .line 79
    .local v30, "remoteport":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "port":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    long-to-int v10, v2

    .line 84
    .local v10, "nowSecond":I
    const/16 v26, 0x0

    .line 85
    .local v26, "isExist":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-virtual {v2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-virtual {v2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->select()Landroid/database/Cursor;

    move-result-object v28

    .line 87
    .local v28, "myCursor2":Landroid/database/Cursor;
    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    if-nez v26, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-virtual {v2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    const/4 v2, 0x1

    aget-object v13, v23, v2

    const/4 v2, 0x3

    aget-object v15, v23, v2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newDevice%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->context:Landroid/content/Context;

    const v5, 0x7f0c0157

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x2

    aget-object v17, v23, v2

    move-object v12, v4

    move-object v14, v6

    move/from16 v18, v10

    .line 106
    invoke-virtual/range {v11 .. v18}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 111
    :cond_3
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->requery()Z

    .line 112
    if-eqz v28, :cond_0

    .line 113
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 66
    .end local v4    # "port":Ljava/lang/String;
    .end local v6    # "ip_addr":Ljava/lang/String;
    .end local v10    # "nowSecond":I
    .end local v20    # "backMsg":Ljava/lang/String;
    .end local v22    # "clientAddress":Ljava/net/InetAddress;
    .end local v23    # "data":[Ljava/lang/String;
    .end local v25    # "ip_addr_o":Ljava/lang/String;
    .end local v26    # "isExist":Z
    .end local v27    # "len":I
    .end local v28    # "myCursor2":Landroid/database/Cursor;
    .end local v30    # "remoteport":I
    :catch_0
    move-exception v24

    .line 68
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 88
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v4    # "port":Ljava/lang/String;
    .restart local v6    # "ip_addr":Ljava/lang/String;
    .restart local v10    # "nowSecond":I
    .restart local v20    # "backMsg":Ljava/lang/String;
    .restart local v22    # "clientAddress":Ljava/net/InetAddress;
    .restart local v23    # "data":[Ljava/lang/String;
    .restart local v25    # "ip_addr_o":Ljava/lang/String;
    .restart local v26    # "isExist":Z
    .restart local v27    # "len":I
    .restart local v28    # "myCursor2":Landroid/database/Cursor;
    .restart local v30    # "remoteport":I
    :cond_4
    const/4 v2, 0x1

    aget-object v2, v23, v2

    const/4 v3, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/16 v26, 0x1

    .line 90
    const/4 v2, 0x5

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "type":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newDevice%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0157

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    :cond_5
    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 94
    .local v19, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v8, v19, v2

    .line 95
    const/4 v2, 0x6

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    invoke-virtual {v2}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->db:Lnet/tsz/afinal/annotation/sqlite/DBManager;

    const/4 v3, 0x1

    aget-object v3, v23, v3

    const/4 v5, 0x1

    aget-object v5, v23, v5

    .line 98
    const/4 v7, 0x3

    aget-object v7, v23, v7

    .line 97
    invoke-virtual/range {v2 .. v10}, Lnet/tsz/afinal/annotation/sqlite/DBManager;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/ReceiverThread_bak;->stop:Z

    .line 128
    return-void
.end method
