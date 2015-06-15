.class Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;
.super Ljava/lang/Thread;
.source "MiniConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

.field private timezones:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)V
    .locals 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 63
    const-string v2, "GMT+0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 64
    const-string v2, "GMT+0100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 65
    const-string v2, "GMT+0200"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 66
    const-string v2, "GMT+0300"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 67
    const-string v2, "GMT+0400"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 68
    const-string v2, "GMT+0430"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 69
    const-string v2, "GMT+0500"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 70
    const-string v2, "GMT+0530"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 71
    const-string v2, "GMT+0545"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 72
    const-string v2, "GMT+0600"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 73
    const-string v2, "GMT+0630"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 74
    const-string v2, "GMT+0700"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 75
    const-string v2, "GMT+0800"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 76
    const-string v2, "GMT+0845"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 77
    const-string v2, "GMT+0900"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 78
    const-string v2, "GMT+0930"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 79
    const-string v2, "GMT+1000"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 80
    const-string v2, "GMT+1100"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 81
    const-string v2, "GMT+1130"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 82
    const-string v2, "GMT+1200"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 83
    const-string v2, "GMT+1300"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 84
    const-string v2, "GMT+1400"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 85
    const-string v2, "GMT-0100"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 86
    const-string v2, "GMT-0200"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 87
    const-string v2, "GMT-0300"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 88
    const-string v2, "GMT-0400"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 89
    const-string v2, "GMT-0430"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 90
    const-string v2, "GMT-0500"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 91
    const-string v2, "GMT-0600"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 92
    const-string v2, "GMT-0700"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 93
    const-string v2, "GMT-0800"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 94
    const-string v2, "GMT-0900"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 95
    const-string v2, "GMT-0930"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 96
    const-string v2, "GMT-1000"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 97
    const-string v2, "GMT-1100"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->timezones:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;-><init>(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)V

    return-void
.end method

.method private sendMsg([ILjava/net/InetAddress;)V
    .locals 7
    .param p1, "bytes"    # [I
    .param p2, "broadcastAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    array-length v4, p1

    .line 49
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 59
    :cond_0
    const-wide/16 v5, 0x50

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->sleep(J)V

    .line 60
    return-void

    .line 50
    :cond_1
    aget v1, p1, v3

    .line 51
    .local v1, "bLength":I
    if-eqz v1, :cond_0

    .line 54
    new-array v0, v1, [B

    .line 55
    .local v0, "b":[B
    new-instance v2, Ljava/net/DatagramPacket;

    .line 56
    const/16 v5, 0x3a98

    .line 55
    invoke-direct {v2, v0, v1, p2, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 57
    .local v2, "datapacket":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->udpSocket:Ljava/net/DatagramSocket;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->access$0(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->access$1(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getGateWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "gateway":Ljava/lang/String;
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 106
    .local v2, "broadcastAddr":Ljava/net/InetAddress;
    new-instance v11, Lsmartplug/JniC;

    invoke-direct {v11}, Lsmartplug/JniC;-><init>()V

    .line 108
    .local v11, "jnic":Lsmartplug/JniC;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 109
    .local v5, "cal":Ljava/util/Calendar;
    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 110
    .local v17, "zoneOffset":I
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 112
    .local v6, "dstOffset":I
    add-int v18, v17, v6

    const v19, 0x36ee80

    div-int v13, v18, v19

    .line 113
    .local v13, "tzH":I
    add-int v18, v17, v6

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v18, v0

    div-int/lit8 v15, v18, 0x3c

    .line 115
    .local v15, "tzM":I
    if-gez v13, :cond_1

    const-string v8, "-"

    .line 116
    .local v8, "flag":Ljava/lang/String;
    :goto_0
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "0"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "tzHString":Ljava/lang/String;
    :goto_1
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "0"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "tzMString":Ljava/lang/String;
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "GMT"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "timezone":Ljava/lang/String;
    const/4 v10, 0x0

    .line 120
    .local v10, "i":I
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->timezones:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_4

    .line 127
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->access$1(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Landroid/content/Context;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "---"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v20, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    sget-boolean v18, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    if-eqz v18, :cond_5

    .line 138
    .end local v2    # "broadcastAddr":Ljava/net/InetAddress;
    .end local v5    # "cal":Ljava/util/Calendar;
    .end local v6    # "dstOffset":I
    .end local v8    # "flag":Ljava/lang/String;
    .end local v9    # "gateway":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jnic":Lsmartplug/JniC;
    .end local v12    # "timezone":Ljava/lang/String;
    .end local v13    # "tzH":I
    .end local v14    # "tzHString":Ljava/lang/String;
    .end local v15    # "tzM":I
    .end local v16    # "tzMString":Ljava/lang/String;
    .end local v17    # "zoneOffset":I
    :goto_5
    return-void

    .line 115
    .restart local v2    # "broadcastAddr":Ljava/net/InetAddress;
    .restart local v5    # "cal":Ljava/util/Calendar;
    .restart local v6    # "dstOffset":I
    .restart local v9    # "gateway":Ljava/lang/String;
    .restart local v11    # "jnic":Lsmartplug/JniC;
    .restart local v13    # "tzH":I
    .restart local v15    # "tzM":I
    .restart local v17    # "zoneOffset":I
    :cond_1
    const-string v8, "+"

    goto/16 :goto_0

    .line 116
    .restart local v8    # "flag":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 117
    .restart local v14    # "tzHString":Ljava/lang/String;
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 121
    .restart local v10    # "i":I
    .restart local v12    # "timezone":Ljava/lang/String;
    .restart local v16    # "tzMString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->timezones:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 120
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 131
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->access$1(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->this$0:Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->wifipwd:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->access$2(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0, v10}, Lsmartplug/JniC;->PackageConfigData(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v4

    .line 133
    .local v4, "bssids":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->sendMsg([ILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 135
    .end local v2    # "broadcastAddr":Ljava/net/InetAddress;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "bssids":[I
    .end local v5    # "cal":Ljava/util/Calendar;
    .end local v6    # "dstOffset":I
    .end local v8    # "flag":Ljava/lang/String;
    .end local v9    # "gateway":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jnic":Lsmartplug/JniC;
    .end local v12    # "timezone":Ljava/lang/String;
    .end local v13    # "tzH":I
    .end local v14    # "tzHString":Ljava/lang/String;
    .end local v15    # "tzM":I
    .end local v16    # "tzMString":Ljava/lang/String;
    .end local v17    # "zoneOffset":I
    :catch_0
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
