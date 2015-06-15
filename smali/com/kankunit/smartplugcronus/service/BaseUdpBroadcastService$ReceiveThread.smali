.class Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;
.super Ljava/lang/Thread;
.source "BaseUdpBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field private buf:[B

.field plugStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/net/DatagramSocket;)V
    .locals 2
    .param p2, "udpSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    .line 354
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    const-string v1, "ir_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    const-string v1, "rt_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    const-string v1, "rf_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    const-string v1, "tp_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method


# virtual methods
.method public getOffList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "plug1"    # Ljava/lang/String;
    .param p2, "plug2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    const-string v1, "rf_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v1, "tp_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    :goto_0
    const-string v1, "uart"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    const-string v1, "ir_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v1, "rt_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    :goto_1
    return-object v0

    .line 376
    :cond_2
    const-string v1, "rf_module"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const-string v1, "tp_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_3
    const-string v1, "tp_module"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "rf_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_4
    const-string v1, "ir_module"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    const-string v1, "rt_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_5
    const-string v1, "rt_module"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const-string v1, "ir_module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getOnList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "plug1"    # Ljava/lang/String;
    .param p2, "plug2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    const-string v1, "uart"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_1
    return-object v0
.end method

.method public isChange(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 398
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 403
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 393
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    .local v0, "string":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 398
    .end local v0    # "string":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    .restart local v0    # "string":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0
.end method

.method public iscorrect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "plugName"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->plugStringList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 48

    .prologue
    .line 418
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v23

    .line 419
    .local v23, "isWifiConnected":Z
    if-eqz v23, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    const-string v46, "initInfo"

    const-string v47, "isFriendInit"

    invoke-static/range {v45 .. v47}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 421
    .local v22, "isFriendInit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    const-string v46, "initInfo"

    const-string v47, "needUpdateFriends"

    invoke-static/range {v45 .. v47}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 423
    .local v28, "needUpdateFriend":Ljava/lang/String;
    const/16 v45, 0x400

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->buf:[B

    .line 424
    new-instance v30, Ljava/net/DatagramPacket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->buf:[B

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->buf:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 425
    .local v30, "packet":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->udpSocket:Ljava/net/DatagramSocket;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 426
    invoke-virtual/range {v30 .. v30}, Ljava/net/DatagramPacket;->getLength()I

    move-result v24

    .line 427
    .local v24, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sj:Lsmartplug/JniC;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$10(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lsmartplug/JniC;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->buf:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lsmartplug/JniC;->AnalyzeRecvData([BI)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "backMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "---back"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    const-string v45, "%"

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "data":[Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 433
    .local v5, "clientAddress":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v21

    .line 434
    .local v21, "ip_addr_o":Ljava/lang/String;
    const/16 v45, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v46

    move-object/from16 v0, v21

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 435
    .local v20, "ip_addr":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/net/DatagramPacket;->getPort()I

    move-result v37

    .line 436
    .local v37, "remoteport":I
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    .line 437
    .local v35, "port":Ljava/lang/String;
    array-length v0, v7

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_0

    .line 440
    const/16 v45, 0x1

    aget-object v8, v7, v45

    .line 441
    .local v8, "deviceMac":Ljava/lang/String;
    const/16 v45, 0x2

    aget-object v13, v7, v45

    .line 442
    .local v13, "devicePwd":Ljava/lang/String;
    const/16 v45, 0x3

    aget-object v41, v7, v45

    .line 443
    .local v41, "status":Ljava/lang/String;
    const-string v45, "#"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 444
    .local v42, "statusArr":[Ljava/lang/String;
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_6

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v45

    const-string v46, "hv"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_6

    const/16 v45, 0x4

    aget-object v45, v7, v45

    const-string v46, "hack"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_6

    sget-boolean v45, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    if-nez v45, :cond_6

    .line 445
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x4

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_0

    .line 448
    const/16 v45, 0x1

    aget-object v32, v42, v45

    .line 449
    .local v32, "plug1":Ljava/lang/String;
    const/16 v45, 0x3

    aget-object v33, v42, v45

    .line 450
    .local v33, "plug2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->iscorrect(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_1

    .line 451
    const-string v32, "usb_module"

    .line 453
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->iscorrect(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_2

    .line 454
    const-string v33, "uart_module"

    .line 456
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->getOnList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 457
    .local v25, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->getOffList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 458
    .local v26, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->getPlugList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v34

    .line 459
    .local v34, "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v40

    .line 460
    .local v40, "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->isChange(Ljava/util/List;Ljava/util/List;)Z

    move-result v45

    if-eqz v45, :cond_3

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-nez v46, :cond_c

    .line 470
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->isChange(Ljava/util/List;Ljava/util/List;)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDevicesShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v14

    .line 473
    .local v14, "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v14, :cond_6

    .line 475
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_4
    :goto_2
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-nez v46, :cond_d

    .line 507
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_5
    :goto_3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-nez v46, :cond_12

    .line 512
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v19, "intent":Landroid/content/Intent;
    const-string v45, "msgBody"

    const-string v46, "refreshPlug"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    .end local v14    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v25    # "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "plug1":Ljava/lang/String;
    .end local v33    # "plug2":Ljava/lang/String;
    .end local v34    # "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    .line 524
    .local v9, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v9, :cond_15

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v45

    if-eqz v45, :cond_7

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v39

    .line 527
    .local v39, "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v39, :cond_13

    .line 528
    new-instance v39, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .end local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-direct/range {v39 .. v39}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 529
    .restart local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 530
    const v45, 0x7f0201c7

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 531
    const-string v45, "closed"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 532
    const/16 v45, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v29

    .line 534
    .local v29, "orderNo":I
    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 535
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v45

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 536
    const-string v45, "device"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 540
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 541
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v45, "miniDirect"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 550
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v29    # "orderNo":I
    .end local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_7
    :goto_4
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v45

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsFriend()I

    move-result v45

    if-nez v45, :cond_8

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .line 552
    .local v31, "phoneMac":Ljava/lang/String;
    const-string v45, ":"

    const-string v46, "-"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    sget-object v46, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v31

    .line 553
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v27

    .line 555
    .local v27, "msg":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "saveFriends:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :goto_5
    const/16 v45, 0x1

    :try_start_2
    move/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsFriend(I)V

    .line 562
    .end local v27    # "msg":Ljava/lang/String;
    .end local v31    # "phoneMac":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIp(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPort(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/DateUtil;->getTimestamp()J

    move-result-wide v45

    move-wide/from16 v0, v45

    invoke-virtual {v9, v0, v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setTime(J)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$12(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$12(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v45

    const-string v46, "0"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_14

    .line 572
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 579
    :cond_9
    :goto_6
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v45

    const-string v46, "00-07-29-65-09-11"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    const-string v45, "y"

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsAuth(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 695
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    const-string v46, "userinfo"

    const-string v47, "userid"

    invoke-static/range {v45 .. v47}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 696
    .local v44, "userid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->currentConfigureMac:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$13(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 697
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 698
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v45, "mac"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 703
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "wan_phone%"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%main_bind_req"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 705
    .local v4, "bindMsg":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "mainBind:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 706
    new-instance v36, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    invoke-direct/range {v36 .. v36}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;-><init>()V

    .line 707
    .local v36, "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setMac(Ljava/lang/String;)V

    .line 708
    const-string v45, "main"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setFlag(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 715
    .end local v36    # "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    :goto_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    const-string v46, ""

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$4(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;Ljava/lang/String;)V

    .line 717
    .end local v4    # "bindMsg":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v45, "config"

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_0

    sget-object v45, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->tempMac:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_0

    sget-boolean v45, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    if-nez v45, :cond_0

    .line 719
    sput-object v8, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->tempMac:Ljava/lang/String;

    .line 720
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 721
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v45, "isFinishedConfig"

    const-string v46, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v45, "mac"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v45, "ikonke.basebroadcast"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "wan_phone%"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%main_bind_req"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    .line 728
    .restart local v4    # "bindMsg":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "mainBind:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 729
    new-instance v36, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    invoke-direct/range {v36 .. v36}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;-><init>()V

    .line 730
    .restart local v36    # "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setMac(Ljava/lang/String;)V

    .line 731
    const-string v45, "main"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setFlag(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 733
    .end local v36    # "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    :catch_0
    move-exception v17

    .line 735
    .local v17, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 744
    .end local v3    # "backMsg":Ljava/lang/String;
    .end local v4    # "bindMsg":Ljava/lang/String;
    .end local v5    # "clientAddress":Ljava/net/InetAddress;
    .end local v7    # "data":[Ljava/lang/String;
    .end local v8    # "deviceMac":Ljava/lang/String;
    .end local v9    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v13    # "devicePwd":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "ip_addr":Ljava/lang/String;
    .end local v21    # "ip_addr_o":Ljava/lang/String;
    .end local v22    # "isFriendInit":Ljava/lang/String;
    .end local v23    # "isWifiConnected":Z
    .end local v24    # "len":I
    .end local v28    # "needUpdateFriend":Ljava/lang/String;
    .end local v30    # "packet":Ljava/net/DatagramPacket;
    .end local v35    # "port":Ljava/lang/String;
    .end local v37    # "remoteport":I
    .end local v41    # "status":Ljava/lang/String;
    .end local v42    # "statusArr":[Ljava/lang/String;
    .end local v44    # "userid":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 746
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 463
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v3    # "backMsg":Ljava/lang/String;
    .restart local v5    # "clientAddress":Ljava/net/InetAddress;
    .restart local v7    # "data":[Ljava/lang/String;
    .restart local v8    # "deviceMac":Ljava/lang/String;
    .restart local v13    # "devicePwd":Ljava/lang/String;
    .restart local v20    # "ip_addr":Ljava/lang/String;
    .restart local v21    # "ip_addr_o":Ljava/lang/String;
    .restart local v22    # "isFriendInit":Ljava/lang/String;
    .restart local v23    # "isWifiConnected":Z
    .restart local v24    # "len":I
    .restart local v25    # "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "needUpdateFriend":Ljava/lang/String;
    .restart local v30    # "packet":Ljava/net/DatagramPacket;
    .restart local v32    # "plug1":Ljava/lang/String;
    .restart local v33    # "plug2":Ljava/lang/String;
    .restart local v34    # "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "port":Ljava/lang/String;
    .restart local v37    # "remoteport":I
    .restart local v40    # "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "status":Ljava/lang/String;
    .restart local v42    # "statusArr":[Ljava/lang/String;
    :cond_c
    :try_start_7
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 464
    .local v43, "string":Ljava/lang/String;
    new-instance v12, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-direct {v12}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;-><init>()V

    .line 465
    .local v12, "devicePluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    invoke-virtual {v12, v8}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setMac(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setPluginName(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-static {v0, v12}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->saveDevicePlug(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DevicePluginModel;)V

    goto/16 :goto_1

    .line 475
    .end local v12    # "devicePluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    .end local v43    # "string":Ljava/lang/String;
    .restart local v14    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_d
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 476
    .restart local v43    # "string":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_4

    .line 477
    new-instance v38, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v38 .. v38}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 478
    .local v38, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v29

    .line 479
    .restart local v29    # "orderNo":I
    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 480
    const-string v46, "closed"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 481
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 482
    const/16 v46, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 483
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 484
    const-string v46, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginMac(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 486
    const-string v46, "rt_"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_f

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f0c0162

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 488
    const v46, 0x7f0201bd

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 489
    const-string v46, "rt_"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 503
    :cond_e
    :goto_9
    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto/16 :goto_2

    .line 490
    :cond_f
    const-string v46, "ir_"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_10

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f0c0165

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 492
    const v46, 0x7f0201ca

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 493
    const-string v46, "ir_"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto :goto_9

    .line 494
    :cond_10
    const-string v46, "rf_"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f0c0163

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 496
    const v46, 0x7f0201cb

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 497
    const-string v46, "rf_"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 498
    :cond_11
    const-string v46, "tp_"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_e

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    const v47, 0x7f0c0164

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 500
    const v46, 0x7f0201ba

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 501
    const-string v46, "tp_"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 507
    .end local v29    # "orderNo":I
    .end local v38    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v43    # "string":Ljava/lang/String;
    :cond_12
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 508
    .restart local v43    # "string":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-static {v0, v8, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByPluginName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 544
    .end local v14    # "deviceScm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v25    # "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "plug1":Ljava/lang/String;
    .end local v33    # "plug2":Ljava/lang/String;
    .end local v34    # "plugsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v43    # "string":Ljava/lang/String;
    .restart local v9    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_13
    const v45, 0x7f0201c7

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 545
    const/16 v45, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 546
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 556
    .end local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v27    # "msg":Ljava/lang/String;
    .restart local v31    # "phoneMac":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 558
    .local v18, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 574
    .end local v18    # "e1":Ljava/lang/Exception;
    .end local v27    # "msg":Ljava/lang/String;
    .end local v31    # "phoneMac":Ljava/lang/String;
    :cond_14
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    goto/16 :goto_6

    .line 586
    :cond_15
    new-instance v15, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-direct {v15}, Lcom/kankunit/smartplugcronus/model/DeviceModel;-><init>()V

    .line 587
    .local v15, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v45, "new"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIp(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v15, v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setMac(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPort(Ljava/lang/String;)V

    .line 591
    const-string v45, "Smart socket"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setName(Ljava/lang/String;)V

    .line 593
    const-string v45, "closed"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/DateUtil;->getTimestamp()J

    move-result-wide v45

    move-wide/from16 v0, v45

    invoke-virtual {v15, v0, v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setTime(J)V

    .line 595
    invoke-virtual {v15, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 596
    const-string v45, "off"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setShortCutExists(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_18

    .line 598
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 603
    :goto_a
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_1b

    .line 604
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v45

    const-string v46, "hv"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_1a

    .line 605
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v45

    const-string v46, "hv1"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_19

    .line 606
    const/16 v45, 0x3

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    .line 616
    :goto_b
    const-string v45, "new"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 617
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$12(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1d

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->isdirect:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$12(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Ljava/lang/String;

    move-result-object v45

    const-string v46, "0"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 625
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 632
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v45

    if-nez v45, :cond_16

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->saveDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 635
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 637
    .local v11, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v45

    if-eqz v45, :cond_17

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v16

    .line 639
    .local v16, "dm2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v39, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v39 .. v39}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 640
    .restart local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 641
    const v45, 0x7f0201c7

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 642
    const-string v45, "closed"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 643
    const/16 v45, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v29

    .line 645
    .restart local v29    # "orderNo":I
    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 646
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v45

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 647
    const-string v45, "device"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 651
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 652
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v45, "miniDirect"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 656
    .end local v16    # "dm2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v29    # "orderNo":I
    .end local v39    # "sdm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_17
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v45

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_a

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .line 658
    .restart local v31    # "phoneMac":Ljava/lang/String;
    const-string v45, ":"

    const-string v46, "-"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    sget-object v46, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v31

    .line 659
    sget-object v6, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 660
    .local v6, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    move/from16 v0, v45

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 675
    .local v10, "deviceModel2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    const-string v46, "userinfo"

    const-string v47, "userid"

    invoke-static/range {v45 .. v47}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 676
    .restart local v44    # "userid":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 677
    .restart local v27    # "msg":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "wan_phone%"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "%sub_bind_req"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v4

    .line 679
    .restart local v4    # "bindMsg":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "saveFriends:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$11(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "subBind:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 681
    new-instance v36, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    invoke-direct/range {v36 .. v36}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;-><init>()V

    .line 682
    .restart local v36    # "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setMac(Ljava/lang/String;)V

    .line 683
    const-string v45, "sub"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->setFlag(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v45 .. v45}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 689
    .end local v36    # "recordModel":Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
    :goto_d
    const/16 v45, 0x1

    :try_start_9
    move/from16 v0, v45

    invoke-virtual {v10, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsFriend(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$ReceiveThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_7

    .line 601
    .end local v4    # "bindMsg":Ljava/lang/String;
    .end local v6    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v10    # "deviceModel2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v11    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v27    # "msg":Ljava/lang/String;
    .end local v31    # "phoneMac":Ljava/lang/String;
    .end local v44    # "userid":Ljava/lang/String;
    :cond_18
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    goto/16 :goto_a

    .line 608
    :cond_19
    const/16 v45, 0x4

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    goto/16 :goto_b

    .line 611
    :cond_1a
    const/16 v45, 0x2

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    goto/16 :goto_b

    .line 614
    :cond_1b
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    goto/16 :goto_b

    .line 627
    :cond_1c
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    goto/16 :goto_c

    .line 630
    :cond_1d
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    goto/16 :goto_c

    .line 685
    .restart local v4    # "bindMsg":Ljava/lang/String;
    .restart local v6    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .restart local v10    # "deviceModel2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v11    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v27    # "msg":Ljava/lang/String;
    .restart local v31    # "phoneMac":Ljava/lang/String;
    .restart local v44    # "userid":Ljava/lang/String;
    :catch_3
    move-exception v17

    .line 687
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 710
    .end local v6    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v10    # "deviceModel2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v11    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v27    # "msg":Ljava/lang/String;
    .end local v31    # "phoneMac":Ljava/lang/String;
    .restart local v19    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v17

    .line 712
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_8
.end method
