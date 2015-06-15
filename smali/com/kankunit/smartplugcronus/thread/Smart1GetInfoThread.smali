.class public Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
.super Ljava/lang/Thread;
.source "Smart1GetInfoThread.java"


# instance fields
.field private allCmd:Ljava/lang/String;

.field private brCmd:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field i:I

.field private isDirect:Z

.field private isSmart1:Z

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private port:I

.field private userIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "port"    # I
    .param p4, "allCmd"    # Ljava/lang/String;
    .param p5, "brCmd"    # Ljava/lang/String;
    .param p6, "isDirect"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "model"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    .line 38
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->cmd:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->handler:Landroid/os/Handler;

    .line 41
    iput p3, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    .line 42
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->allCmd:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->brCmd:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isSmart1:Z

    .line 46
    iput-object p8, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "port"    # I
    .param p4, "allCmd"    # Ljava/lang/String;
    .param p5, "brCmd"    # Ljava/lang/String;
    .param p6, "isDirect"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "userIp"    # Ljava/lang/String;
    .param p9, "model"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    iput v0, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->cmd:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->userIp:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->handler:Landroid/os/Handler;

    .line 53
    iput p3, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    .line 54
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->allCmd:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->brCmd:Ljava/lang/String;

    .line 56
    iput-boolean p6, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    .line 60
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isSmart1:Z

    .line 61
    iput-object p9, p0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 67
    const-string v12, ""

    .line 68
    .local v12, "deviceTime":Ljava/lang/String;
    const-string v17, ""

    .line 69
    .local v17, "hardV":Ljava/lang/String;
    const-string v24, ""

    .line 70
    .local v24, "softV":Ljava/lang/String;
    new-instance v14, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    invoke-direct {v14}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;-><init>()V

    .line 71
    .local v14, "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 222
    return-void

    .line 73
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    .line 74
    const-string v18, ""

    .line 75
    .local v18, "hostIp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_2

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v31

    if-nez v31, :cond_8

    .line 76
    :cond_2
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v31

    if-nez v31, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->userIp:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 81
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 82
    const-string v18, "192.168.145.253"

    .line 84
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->cmd:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "wan_phone"

    const-string v33, "lan_phone"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->cmd:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->allCmd:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "wan_phone"

    const-string v33, "lan_phone"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->allCmd:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->brCmd:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "wan_phone"

    const-string v33, "lan_phone"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->brCmd:Ljava/lang/String;

    .line 87
    const/16 v31, 0x6b27

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    .line 93
    :goto_2
    new-instance v23, Ljava/net/DatagramSocket;

    invoke-direct/range {v23 .. v23}, Ljava/net/DatagramSocket;-><init>()V

    .line 94
    .local v23, "socket":Ljava/net/DatagramSocket;
    const/16 v31, 0xbb8

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->cmd:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "backMsg":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    .line 98
    const-string v31, "%"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "cons":[Ljava/lang/String;
    const/16 v31, 0x3

    aget-object v7, v10, v31

    .line 100
    .local v7, "check":Ljava/lang/String;
    const-string v31, "#"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "checks":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 102
    .local v27, "timeLength":I
    const/16 v31, 0x0

    aget-object v31, v9, v31

    const-string v32, "check"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 103
    const/16 v31, 0x1

    aget-object v31, v9, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 104
    const/16 v31, 0x2

    aget-object v12, v9, v31

    .line 105
    const/16 v31, 0x4

    aget-object v17, v9, v31

    .line 106
    const/16 v31, 0x3

    aget-object v24, v9, v31

    .line 108
    :cond_4
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 109
    .local v28, "timeList":[Ljava/lang/String;
    const-string v8, ""

    .line 110
    .local v8, "checkCmd":Ljava/lang/String;
    const-string v25, ""

    .line 111
    .local v25, "sunBackMsg":Ljava/lang/String;
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 126
    const-string v6, ""

    .line 127
    .local v6, "brState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 128
    new-instance v23, Ljava/net/DatagramSocket;

    .end local v23    # "socket":Ljava/net/DatagramSocket;
    invoke-direct/range {v23 .. v23}, Ljava/net/DatagramSocket;-><init>()V

    .line 129
    .restart local v23    # "socket":Ljava/net/DatagramSocket;
    const/16 v31, 0xbb8

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->brCmd:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    .line 133
    const-string v31, "%"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "arr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isDirect:Z

    move/from16 v31, v0

    if-nez v31, :cond_b

    array-length v0, v4

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_b

    .line 135
    const/16 v31, 0x3

    aget-object v6, v4, v31

    .line 141
    .end local v4    # "arr":[Ljava/lang/String;
    :cond_5
    :goto_4
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 142
    .local v29, "timerList":[Ljava/lang/String;
    const-string v11, ""

    .line 143
    .local v11, "delayTime":Ljava/lang/String;
    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v19

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    .line 195
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v31

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v13, "df":Ljava/text/DateFormat;
    new-instance v21, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-object/from16 v0, v21

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 197
    .local v21, "now":Ljava/util/Date;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 198
    .local v22, "nowTime":Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_18

    move-object/from16 v31, v22

    :goto_6
    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setDeviceTime(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setHardV(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setSoftV(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setTimerList([Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v31

    if-gez v31, :cond_6

    .line 203
    const-string v11, ""

    .line 205
    :cond_6
    invoke-virtual {v14, v11}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setDelayTime(Ljava/lang/String;)V

    .line 206
    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setTimerListLength(I)V

    .line 207
    invoke-virtual {v14, v6}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setBrState(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v20

    .line 209
    .local v20, "msg":Landroid/os/Message;
    const/16 v31, 0x71

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 210
    move-object/from16 v0, v20

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->handler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    const/16 v31, 0xa

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 213
    .end local v5    # "backMsg":Ljava/lang/String;
    .end local v6    # "brState":Ljava/lang/String;
    .end local v7    # "check":Ljava/lang/String;
    .end local v8    # "checkCmd":Ljava/lang/String;
    .end local v9    # "checks":[Ljava/lang/String;
    .end local v10    # "cons":[Ljava/lang/String;
    .end local v11    # "delayTime":Ljava/lang/String;
    .end local v13    # "df":Ljava/text/DateFormat;
    .end local v18    # "hostIp":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "msg":Landroid/os/Message;
    .end local v21    # "now":Ljava/util/Date;
    .end local v22    # "nowTime":Ljava/lang/String;
    .end local v23    # "socket":Ljava/net/DatagramSocket;
    .end local v25    # "sunBackMsg":Ljava/lang/String;
    .end local v27    # "timeLength":I
    .end local v28    # "timeList":[Ljava/lang/String;
    .end local v29    # "timerList":[Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 214
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->i:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v20

    .line 217
    .restart local v20    # "msg":Landroid/os/Message;
    const/16 v31, 0x70

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->handler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 79
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v20    # "msg":Landroid/os/Message;
    .restart local v18    # "hostIp":Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/util/GetMobieIpUtil;->getIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 89
    :cond_8
    const-string v31, "wis.huafeng.com"

    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v30

    .line 90
    .local v30, "x":Ljava/net/InetAddress;
    invoke-virtual/range {v30 .. v30}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 112
    .end local v30    # "x":Ljava/net/InetAddress;
    .restart local v5    # "backMsg":Ljava/lang/String;
    .restart local v7    # "check":Ljava/lang/String;
    .restart local v8    # "checkCmd":Ljava/lang/String;
    .restart local v9    # "checks":[Ljava/lang/String;
    .restart local v10    # "cons":[Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v23    # "socket":Ljava/net/DatagramSocket;
    .restart local v25    # "sunBackMsg":Ljava/lang/String;
    .restart local v27    # "timeLength":I
    .restart local v28    # "timeList":[Ljava/lang/String;
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "check#"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    new-instance v23, Ljava/net/DatagramSocket;

    .end local v23    # "socket":Ljava/net/DatagramSocket;
    invoke-direct/range {v23 .. v23}, Ljava/net/DatagramSocket;-><init>()V

    .line 115
    .restart local v23    # "socket":Ljava/net/DatagramSocket;
    const/16 v31, 0xbb8

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 116
    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->allCmd:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%timer"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->port:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/OldConnectUtil;->socketConnect(Ljava/lang/String;Ljava/lang/String;Ljava/net/DatagramSocket;I)Ljava/lang/String;

    move-result-object v25

    .line 117
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    .line 118
    add-int/lit8 v31, v19, -0x1

    const-string v32, "%"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    aget-object v32, v32, v33

    aput-object v32, v28, v31

    .line 119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->isSmart1:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 120
    const-string v31, "%"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aget-object v31, v31, v32

    const-string v32, "#"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x8

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int/lit8 v19, v31, 0x1

    .line 121
    goto/16 :goto_3

    .line 122
    :cond_a
    const-string v31, "%"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aget-object v31, v31, v32

    const-string v32, "#"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x9

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int/lit8 v19, v31, 0x1

    goto/16 :goto_3

    .line 137
    .restart local v4    # "arr":[Ljava/lang/String;
    .restart local v6    # "brState":Ljava/lang/String;
    :cond_b
    const-string v6, "isDirectBr"

    goto/16 :goto_4

    .line 144
    .end local v4    # "arr":[Ljava/lang/String;
    .restart local v11    # "delayTime":Ljava/lang/String;
    .restart local v29    # "timerList":[Ljava/lang/String;
    :cond_c
    aget-object v31, v28, v19

    const-string v32, "#"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 149
    .local v26, "timeArray":[Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v26, v31

    const-string v32, "1023"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 151
    :cond_d
    const/16 v31, 0x2

    aget-object v31, v26, v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 152
    const/16 v31, 0x4

    aget-object v31, v26, v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 153
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v32, 0x3

    aget-object v32, v26, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 143
    :cond_e
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 155
    :cond_f
    const/16 v31, 0x6

    aget-object v31, v26, v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 156
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v32, 0x5

    aget-object v32, v26, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 157
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto :goto_7

    .line 162
    :cond_10
    aget-object v31, v28, v19

    invoke-static/range {v31 .. v31}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getNearTime(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;

    move-result-object v15

    .line 163
    .local v15, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v31

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_13

    .line 164
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseRealTime()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 170
    :goto_8
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_11

    .line 171
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseRealTime()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 172
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 174
    :cond_11
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_12

    .line 175
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenRealTime()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 176
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 178
    :cond_12
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_14

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_14

    .line 179
    const-string v11, ""

    .line 180
    const-string v31, "n"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 188
    :goto_9
    aget-object v31, v28, v19

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setMiniDelayStr(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 167
    :cond_13
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenRealTime()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "----"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "y"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 168
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 181
    :cond_14
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayState()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_15

    const-string v31, "y"

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayState()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 182
    :cond_15
    const-string v11, "allen_close"

    .line 183
    const-string v31, "n"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto :goto_9

    .line 186
    :cond_16
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto :goto_9

    .line 191
    .end local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :cond_17
    aget-object v31, v28, v19

    aput-object v31, v29, v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .end local v26    # "timeArray":[Ljava/lang/String;
    .restart local v13    # "df":Ljava/text/DateFormat;
    .restart local v21    # "now":Ljava/util/Date;
    .restart local v22    # "nowTime":Ljava/lang/String;
    :cond_18
    move-object/from16 v31, v12

    .line 198
    goto/16 :goto_6
.end method
