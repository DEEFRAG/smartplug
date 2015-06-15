.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;
.super Ljava/lang/Thread;
.source "IndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperationThread"
.end annotation


# instance fields
.field dev_isInet:Z

.field dev_mac:Ljava/lang/String;

.field host_ip:Ljava/lang/String;

.field sendcmd:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "dev_mac"    # Ljava/lang/String;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1332
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->sendcmd:Ljava/lang/String;

    .line 1333
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_mac:Ljava/lang/String;

    .line 1334
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 1339
    :try_start_0
    new-instance v22, Lsmartplug/JniC;

    invoke-direct/range {v22 .. v22}, Lsmartplug/JniC;-><init>()V

    .line 1340
    .local v22, "sj":Lsmartplug/JniC;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_mac:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v15

    .line 1341
    .local v15, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v15, :cond_4

    .line 1342
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v14

    .line 1343
    .local v14, "deviceip":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v13

    .line 1344
    .local v13, "dev_word":Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1345
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/lang/String;

    move-result-object v13

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 1352
    :cond_1
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v12

    .line 1353
    .local v12, "dev_state":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v11

    .line 1354
    .local v11, "dev_port":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1355
    .local v7, "backbuf":[B
    const/16 v21, 0x0

    .line 1356
    .local v21, "repeat_time":I
    const/16 v18, 0x0

    .line 1357
    .local v18, "getAck":Z
    const/16 v21, 0x0

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    new-instance v26, Ljava/net/DatagramSocket;

    invoke-direct/range {v26 .. v26}, Ljava/net/DatagramSocket;-><init>()V

    invoke-static/range {v25 .. v26}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/net/DatagramSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1361
    :try_start_1
    const-string v25, "wis.huafeng.com"

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    .line 1362
    .local v24, "x":Ljava/net/InetAddress;
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->host_ip:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1366
    .end local v24    # "x":Ljava/net/InetAddress;
    :goto_0
    const/16 v18, 0x0

    .line 1367
    :cond_2
    :goto_1
    if-eqz v18, :cond_5

    .line 1402
    :goto_2
    const/16 v21, 0x0

    .line 1403
    const/16 v25, 0x0

    :try_start_2
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_isInet:Z

    .line 1405
    :cond_3
    :goto_3
    if-eqz v18, :cond_6

    .line 1443
    :goto_4
    const-string v25, "retry"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1445
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 1446
    .local v20, "msg":Landroid/os/Message;
    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1447
    move-object/from16 v0, v20

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    .end local v7    # "backbuf":[B
    .end local v11    # "dev_port":Ljava/lang/String;
    .end local v12    # "dev_state":Ljava/lang/String;
    .end local v13    # "dev_word":Ljava/lang/String;
    .end local v14    # "deviceip":Ljava/lang/String;
    .end local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v18    # "getAck":Z
    .end local v20    # "msg":Landroid/os/Message;
    .end local v21    # "repeat_time":I
    .end local v22    # "sj":Lsmartplug/JniC;
    :cond_4
    :goto_5
    return-void

    .line 1363
    .restart local v7    # "backbuf":[B
    .restart local v11    # "dev_port":Ljava/lang/String;
    .restart local v12    # "dev_state":Ljava/lang/String;
    .restart local v13    # "dev_word":Ljava/lang/String;
    .restart local v14    # "deviceip":Ljava/lang/String;
    .restart local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v18    # "getAck":Z
    .restart local v21    # "repeat_time":I
    .restart local v22    # "sj":Lsmartplug/JniC;
    :catch_0
    move-exception v17

    .line 1364
    .local v17, "e1":Ljava/net/UnknownHostException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1475
    .end local v7    # "backbuf":[B
    .end local v11    # "dev_port":Ljava/lang/String;
    .end local v12    # "dev_state":Ljava/lang/String;
    .end local v13    # "dev_word":Ljava/lang/String;
    .end local v14    # "deviceip":Ljava/lang/String;
    .end local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v17    # "e1":Ljava/net/UnknownHostException;
    .end local v18    # "getAck":Z
    .end local v21    # "repeat_time":I
    .end local v22    # "sj":Lsmartplug/JniC;
    :catch_1
    move-exception v16

    .line 1476
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1370
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v7    # "backbuf":[B
    .restart local v11    # "dev_port":Ljava/lang/String;
    .restart local v12    # "dev_state":Ljava/lang/String;
    .restart local v13    # "dev_word":Ljava/lang/String;
    .restart local v14    # "deviceip":Ljava/lang/String;
    .restart local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v18    # "getAck":Z
    .restart local v21    # "repeat_time":I
    .restart local v22    # "sj":Lsmartplug/JniC;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->host_ip:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1371
    .local v3, "address":Ljava/net/InetAddress;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "wan_phone%"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_mac:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1372
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->sendcmd:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1371
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1374
    .local v23, "udp_cmd":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    .line 1373
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v8

    .line 1375
    .local v8, "cmd_buf":[B
    new-instance v9, Ljava/net/DatagramPacket;

    .line 1376
    array-length v0, v8

    move/from16 v25, v0

    const v26, 0xb156

    .line 1375
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v9, v8, v0, v3, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1377
    .local v9, "datapacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/net/DatagramSocket;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1382
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v8    # "cmd_buf":[B
    .end local v9    # "datapacket":Ljava/net/DatagramPacket;
    .end local v23    # "udp_cmd":Ljava/lang/String;
    :goto_6
    const/16 v25, 0x400

    :try_start_4
    move/from16 v0, v25

    new-array v7, v0, [B

    .line 1383
    new-instance v5, Ljava/net/DatagramPacket;

    .line 1384
    array-length v0, v7

    move/from16 v25, v0

    .line 1383
    move/from16 v0, v25

    invoke-direct {v5, v7, v0}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1386
    .local v5, "backPacket":Ljava/net/DatagramPacket;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/net/DatagramSocket;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1387
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v19

    .line 1389
    .local v19, "len":I
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v4

    .line 1390
    .local v4, "backMsg":Ljava/lang/String;
    const-string v25, "%"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1391
    .local v6, "back_data":[Ljava/lang/String;
    const/16 v25, 0x4

    aget-object v25, v6, v25

    const-string v26, "rack"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1392
    const/16 v25, 0x3

    aget-object v12, v6, v25
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1393
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1379
    .end local v4    # "backMsg":Ljava/lang/String;
    .end local v5    # "backPacket":Ljava/net/DatagramPacket;
    .end local v6    # "back_data":[Ljava/lang/String;
    .end local v19    # "len":I
    :catch_2
    move-exception v16

    .line 1380
    .local v16, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .line 1395
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v5    # "backPacket":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v16

    .line 1396
    .restart local v16    # "e":Ljava/io/IOException;
    add-int/lit8 v21, v21, 0x1

    .line 1397
    const/16 v25, 0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    goto/16 :goto_2

    .line 1408
    .end local v5    # "backPacket":Ljava/net/DatagramPacket;
    .end local v16    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_7
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1409
    .restart local v3    # "address":Ljava/net/InetAddress;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "lan_phone%"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_mac:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1410
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->sendcmd:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1409
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1412
    .restart local v23    # "udp_cmd":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    .line 1411
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lsmartplug/JniC;->PackageSendData(Ljava/lang/String;I)[B

    move-result-object v8

    .line 1413
    .restart local v8    # "cmd_buf":[B
    new-instance v9, Ljava/net/DatagramPacket;

    .line 1414
    array-length v0, v8

    move/from16 v25, v0

    .line 1415
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1413
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v9, v8, v0, v3, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1416
    .restart local v9    # "datapacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/net/DatagramSocket;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1421
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v8    # "cmd_buf":[B
    .end local v9    # "datapacket":Ljava/net/DatagramPacket;
    .end local v23    # "udp_cmd":Ljava/lang/String;
    :goto_7
    const/16 v25, 0x400

    :try_start_8
    move/from16 v0, v25

    new-array v7, v0, [B

    .line 1422
    new-instance v10, Ljava/net/DatagramPacket;

    .line 1423
    array-length v0, v7

    move/from16 v25, v0

    .line 1422
    move/from16 v0, v25

    invoke-direct {v10, v7, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1424
    .local v10, "datapacket1":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/net/DatagramSocket;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1425
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getLength()I

    move-result v19

    .line 1426
    .restart local v19    # "len":I
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v4

    .line 1427
    .restart local v4    # "backMsg":Ljava/lang/String;
    const-string v25, "%"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1428
    .restart local v6    # "back_data":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 1429
    const/16 v25, 0x4

    aget-object v25, v6, v25

    const-string v26, "rack"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1430
    const/16 v25, 0x3

    aget-object v12, v6, v25
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1431
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 1417
    .end local v4    # "backMsg":Ljava/lang/String;
    .end local v6    # "back_data":[Ljava/lang/String;
    .end local v10    # "datapacket1":Ljava/net/DatagramPacket;
    .end local v19    # "len":I
    :catch_4
    move-exception v16

    .line 1418
    .restart local v16    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1434
    .end local v16    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v16

    .line 1435
    .restart local v16    # "e":Ljava/io/IOException;
    add-int/lit8 v21, v21, 0x1

    .line 1436
    const/16 v25, 0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 1437
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->dev_isInet:Z

    goto/16 :goto_4

    .line 1451
    .end local v16    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v15, v12}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1452
    if-eqz v18, :cond_9

    .line 1453
    const-string v25, "open"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 1454
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1455
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 1456
    .restart local v20    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1457
    move-object/from16 v0, v20

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1462
    .end local v20    # "msg":Landroid/os/Message;
    :goto_8
    const-string v25, "open"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1463
    const-string v25, "old"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 1470
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v25, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_5

    .line 1460
    :cond_8
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    goto :goto_8

    .line 1466
    :cond_9
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1467
    const-string v25, "off"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 1468
    const-string v25, "closed"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_9
.end method
