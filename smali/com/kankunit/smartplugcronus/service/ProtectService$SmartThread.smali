.class Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
.super Ljava/lang/Thread;
.source "ProtectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/ProtectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartThread"
.end annotation


# instance fields
.field private cmd:Ljava/lang/String;

.field private confirmAfterCmd:Ljava/lang/String;

.field private confirmBeforeCmd:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "confirmBeforeCmd"    # Ljava/lang/String;
    .param p4, "confirmAfterCmd"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 321
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    .line 320
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->cmd:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmBeforeCmd:Ljava/lang/String;

    .line 324
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmAfterCmd:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, "i":I
    :cond_0
    :goto_0
    const/4 v10, 0x5

    if-lt v6, v10, :cond_1

    .line 382
    return-void

    .line 332
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 333
    :try_start_0
    const-string v5, ""

    .line 334
    .local v5, "hostIp":Ljava/lang/String;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->isDirect:Z
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$0(Lcom/kankunit/smartplugcronus/service/ProtectService;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x2

    if-gt v6, v10, :cond_2

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v10

    if-nez v10, :cond_5

    .line 335
    :cond_2
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v10

    if-nez v10, :cond_4

    .line 336
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->userIp:Ljava/lang/String;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$1(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;

    move-result-object v5

    .line 340
    :goto_1
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->cmd:Ljava/lang/String;

    const-string v11, "wan_phone"

    const-string v12, "lan_phone"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->cmd:Ljava/lang/String;

    .line 341
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmBeforeCmd:Ljava/lang/String;

    const-string v11, "wan_phone"

    const-string v12, "lan_phone"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmBeforeCmd:Ljava/lang/String;

    .line 342
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    const/16 v11, 0x6b27

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$2(Lcom/kankunit/smartplugcronus/service/ProtectService;I)V

    .line 348
    :goto_2
    new-instance v8, Ljava/net/DatagramSocket;

    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 349
    .local v8, "socket":Ljava/net/DatagramSocket;
    const/16 v10, 0x1388

    invoke-virtual {v8, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 350
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->cmd:Ljava/lang/String;

    .line 351
    const v11, 0xb156

    .line 350
    invoke-static {v10, v5, v8, v11}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "backMsg":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 354
    const-string v10, ""

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmBeforeCmd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 355
    const-string v10, "confirm#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "cons":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v3, v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    .line 357
    .local v1, "con":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmBeforeCmd:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 358
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->confirmAfterCmd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 357
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "conCmd":Ljava/lang/String;
    new-instance v8, Ljava/net/DatagramSocket;

    .end local v8    # "socket":Ljava/net/DatagramSocket;
    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 360
    .restart local v8    # "socket":Ljava/net/DatagramSocket;
    const/16 v10, 0x1388

    invoke-virtual {v8, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 362
    const v10, 0xb156

    .line 361
    invoke-static {v2, v5, v8, v10}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 366
    .end local v1    # "con":Ljava/lang/String;
    .end local v2    # "conCmd":Ljava/lang/String;
    .end local v3    # "cons":[Ljava/lang/String;
    :cond_3
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 367
    .local v7, "msg":Landroid/os/Message;
    const/16 v10, 0x6f

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 368
    const-string v10, "ok"

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$3(Lcom/kankunit/smartplugcronus/service/ProtectService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    const/16 v6, 0xa

    goto/16 :goto_0

    .line 338
    .end local v0    # "backMsg":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "socket":Ljava/net/DatagramSocket;
    :cond_4
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/GetMobieIpUtil;->getIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 344
    :cond_5
    const-string v10, "wis.huafeng.com"

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 345
    .local v9, "x":Ljava/net/InetAddress;
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_2

    .line 372
    .end local v5    # "hostIp":Ljava/lang/String;
    .end local v9    # "x":Ljava/net/InetAddress;
    :catch_0
    move-exception v4

    .line 373
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const/4 v10, 0x4

    if-le v6, v10, :cond_0

    .line 375
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 376
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v10, 0x70

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 377
    const-string v10, "tiem"

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$3(Lcom/kankunit/smartplugcronus/service/ProtectService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
