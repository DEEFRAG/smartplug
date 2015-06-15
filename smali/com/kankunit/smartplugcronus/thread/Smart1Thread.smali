.class public Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
.super Ljava/lang/Thread;
.source "Smart1Thread.java"


# instance fields
.field private cmd:Ljava/lang/String;

.field private confirmAfterCmd:Ljava/lang/String;

.field private confirmBeforeCmd:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isDirect:Z

.field private port:I

.field private userIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "confirmBeforeCmd"    # Ljava/lang/String;
    .param p3, "confirmAfterCmd"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "port"    # I
    .param p6, "isDirect"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->handler:Landroid/os/Handler;

    .line 42
    iput p5, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->port:I

    .line 43
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmAfterCmd:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->context:Landroid/content/Context;

    .line 45
    iput-boolean p6, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->isDirect:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "confirmBeforeCmd"    # Ljava/lang/String;
    .param p3, "confirmAfterCmd"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "port"    # I
    .param p6, "isDirect"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "userIp"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->handler:Landroid/os/Handler;

    .line 52
    iput p5, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->port:I

    .line 53
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmAfterCmd:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->context:Landroid/content/Context;

    .line 55
    iput-boolean p6, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->isDirect:Z

    .line 56
    iput-object p8, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->userIp:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x6f

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "i":I
    :cond_0
    :goto_0
    const/4 v10, 0x5

    if-lt v6, v10, :cond_1

    .line 123
    return-void

    .line 63
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 64
    :try_start_0
    const-string v5, ""

    .line 65
    .local v5, "hostIp":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->isDirect:Z

    if-nez v10, :cond_2

    const/4 v10, 0x2

    if-gt v6, v10, :cond_2

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v10

    if-nez v10, :cond_6

    .line 66
    :cond_2
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->isDirect:Z

    if-nez v10, :cond_5

    .line 67
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->userIp:Ljava/lang/String;

    .line 71
    :goto_1
    iget-boolean v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->isDirect:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 72
    const-string v5, "192.168.145.253"

    .line 74
    :cond_3
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    const-string v11, "wan_phone"

    const-string v12, "lan_phone"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    .line 75
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    const-string v11, "wan_phone"

    const-string v12, "lan_phone"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    .line 76
    const/16 v10, 0x6b27

    iput v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->port:I

    .line 82
    :goto_2
    new-instance v8, Ljava/net/DatagramSocket;

    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 83
    .local v8, "socket":Ljava/net/DatagramSocket;
    const/16 v10, 0xbb8

    invoke-virtual {v8, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 84
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    iget v11, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->port:I

    invoke-static {v10, v5, v8, v11}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "backMsg":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 87
    const-string v10, ""

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 88
    const-string v10, "confirm#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "cons":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v3, v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    .line 90
    .local v1, "con":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmBeforeCmd:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->confirmAfterCmd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "conCmd":Ljava/lang/String;
    new-instance v8, Ljava/net/DatagramSocket;

    .end local v8    # "socket":Ljava/net/DatagramSocket;
    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 92
    .restart local v8    # "socket":Ljava/net/DatagramSocket;
    const/16 v10, 0xbb8

    invoke-virtual {v8, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 93
    iget v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->port:I

    invoke-static {v2, v5, v8, v10}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 97
    .end local v1    # "con":Ljava/lang/String;
    .end local v2    # "conCmd":Ljava/lang/String;
    .end local v3    # "cons":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 98
    .local v7, "msg":Landroid/os/Message;
    const/16 v10, 0x6f

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 99
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    const/16 v6, 0xa

    goto/16 :goto_0

    .line 69
    .end local v0    # "backMsg":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "socket":Ljava/net/DatagramSocket;
    :cond_5
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/GetMobieIpUtil;->getIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 78
    :cond_6
    const-string v10, "wis.huafeng.com"

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 79
    .local v9, "x":Ljava/net/InetAddress;
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_2

    .line 103
    .end local v5    # "hostIp":Ljava/lang/String;
    .end local v9    # "x":Ljava/net/InetAddress;
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 v10, 0x4

    if-le v6, v10, :cond_0

    .line 106
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    const-string v11, "brmode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 108
    .restart local v7    # "msg":Landroid/os/Message;
    iput v13, v7, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->cmd:Ljava/lang/String;

    const-string v11, "open"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 110
    const-string v10, "open"

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    :goto_3
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v10, "close"

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 116
    .end local v7    # "msg":Landroid/os/Message;
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 117
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v10, 0x70

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 118
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
