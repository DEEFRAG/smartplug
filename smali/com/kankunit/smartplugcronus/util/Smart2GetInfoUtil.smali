.class public Lcom/kankunit/smartplugcronus/util/Smart2GetInfoUtil;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "Smart2GetInfoUtil.java"


# static fields
.field private static backMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/kankunit/smartplugcronus/util/Smart2GetInfoUtil;->backMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static getSmart2Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kankunit/smartplugcronus/model/DeviceModel;)Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "allCmd"    # Ljava/lang/String;
    .param p5, "isDirect"    # Z
    .param p6, "model"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 21
    :try_start_0
    new-instance v12, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    invoke-direct {v12}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;-><init>()V

    .line 22
    .local v12, "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v11, "df":Ljava/text/DateFormat;
    new-instance v18, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v18

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 24
    .local v18, "now":Ljava/util/Date;
    const-string v10, ""

    .line 25
    .local v10, "deviceTime":Ljava/lang/String;
    const-string v16, ""

    .line 26
    .local v16, "hardV":Ljava/lang/String;
    const-string v20, ""

    .line 27
    .local v20, "softV":Ljava/lang/String;
    const/16 v23, 0x0

    .line 28
    .local v23, "timeLength":I
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 29
    .local v24, "timeList":[Ljava/lang/String;
    const-string v26, "%"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "cons":[Ljava/lang/String;
    const/16 v26, 0x3

    aget-object v5, v6, v26

    .line 32
    .local v5, "check":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 33
    const-string v26, "wan_phone"

    const-string v27, "lan_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    const-string v26, "wan"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "check#"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 43
    const-string v26, "\\|"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "allDatas":[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v8, v3, v26

    .line 45
    .local v8, "detailInfo":Ljava/lang/String;
    const-string v26, "#"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, "detailInfos":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v9, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 47
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 51
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 63
    .end local v8    # "detailInfo":Ljava/lang/String;
    .end local v9    # "detailInfos":[Ljava/lang/String;
    :cond_1
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 64
    .local v25, "timerList":[Ljava/lang/String;
    const-string v7, ""

    .line 65
    .local v7, "delayTime":Ljava/lang/String;
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 126
    const-string v4, ""

    .line 128
    .local v4, "brState":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "nowTime":Ljava/lang/String;
    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v10, v19

    .end local v10    # "deviceTime":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12, v10}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setDeviceTime(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setHardV(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setSoftV(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setTimerList([Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-gez v26, :cond_3

    .line 134
    const-string v7, ""

    .line 136
    :cond_3
    invoke-virtual {v12, v7}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setDelayTime(Ljava/lang/String;)V

    .line 137
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setTimerListLength(I)V

    .line 138
    invoke-virtual {v12, v4}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setBrState(Ljava/lang/String;)V

    .line 143
    .end local v3    # "allDatas":[Ljava/lang/String;
    .end local v4    # "brState":Ljava/lang/String;
    .end local v5    # "check":Ljava/lang/String;
    .end local v6    # "cons":[Ljava/lang/String;
    .end local v7    # "delayTime":Ljava/lang/String;
    .end local v11    # "df":Ljava/text/DateFormat;
    .end local v12    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .end local v16    # "hardV":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "now":Ljava/util/Date;
    .end local v19    # "nowTime":Ljava/lang/String;
    .end local v20    # "softV":Ljava/lang/String;
    .end local v23    # "timeLength":I
    .end local v24    # "timeList":[Ljava/lang/String;
    .end local v25    # "timerList":[Ljava/lang/String;
    :goto_2
    return-object v12

    .line 52
    .restart local v3    # "allDatas":[Ljava/lang/String;
    .restart local v5    # "check":Ljava/lang/String;
    .restart local v6    # "cons":[Ljava/lang/String;
    .restart local v8    # "detailInfo":Ljava/lang/String;
    .restart local v9    # "detailInfos":[Ljava/lang/String;
    .restart local v10    # "deviceTime":Ljava/lang/String;
    .restart local v11    # "df":Ljava/text/DateFormat;
    .restart local v12    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .restart local v16    # "hardV":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "now":Ljava/util/Date;
    .restart local v20    # "softV":Ljava/lang/String;
    .restart local v23    # "timeLength":I
    .restart local v24    # "timeList":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v26, v17, -0x1

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "alart#"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v28, v3, v17

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v24, v26

    .line 51
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "allDatas":[Ljava/lang/String;
    .end local v8    # "detailInfo":Ljava/lang/String;
    .end local v9    # "detailInfos":[Ljava/lang/String;
    .end local v17    # "i":I
    :cond_5
    const-string v26, "\\|"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .restart local v3    # "allDatas":[Ljava/lang/String;
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 57
    const/16 v23, 0x1

    .line 58
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_3
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 59
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v27, v3, v17

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v17

    .line 58
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 66
    .restart local v7    # "delayTime":Ljava/lang/String;
    .restart local v25    # "timerList":[Ljava/lang/String;
    :cond_6
    aget-object v26, v24, v17

    const-string v27, "#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 72
    .local v22, "timeArray":[Ljava/lang/String;
    const/16 v26, 0x1

    :try_start_1
    aget-object v26, v22, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 73
    .local v21, "ti":I
    const/16 v26, 0x7d0

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 65
    .end local v21    # "ti":I
    :cond_7
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 76
    :catch_0
    move-exception v15

    .line 77
    .local v15, "exception":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v15    # "exception":Ljava/lang/Exception;
    :cond_8
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "1023"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 80
    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 81
    :cond_9
    const/16 v26, 0x2

    aget-object v26, v22, v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 82
    const/16 v26, 0x4

    aget-object v26, v22, v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 83
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v27, 0x3

    aget-object v27, v22, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 140
    .end local v3    # "allDatas":[Ljava/lang/String;
    .end local v5    # "check":Ljava/lang/String;
    .end local v6    # "cons":[Ljava/lang/String;
    .end local v7    # "delayTime":Ljava/lang/String;
    .end local v10    # "deviceTime":Ljava/lang/String;
    .end local v11    # "df":Ljava/text/DateFormat;
    .end local v12    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .end local v16    # "hardV":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "now":Ljava/util/Date;
    .end local v20    # "softV":Ljava/lang/String;
    .end local v22    # "timeArray":[Ljava/lang/String;
    .end local v23    # "timeLength":I
    .end local v24    # "timeList":[Ljava/lang/String;
    .end local v25    # "timerList":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 141
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 85
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v3    # "allDatas":[Ljava/lang/String;
    .restart local v5    # "check":Ljava/lang/String;
    .restart local v6    # "cons":[Ljava/lang/String;
    .restart local v7    # "delayTime":Ljava/lang/String;
    .restart local v10    # "deviceTime":Ljava/lang/String;
    .restart local v11    # "df":Ljava/text/DateFormat;
    .restart local v12    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .restart local v16    # "hardV":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "now":Ljava/util/Date;
    .restart local v20    # "softV":Ljava/lang/String;
    .restart local v22    # "timeArray":[Ljava/lang/String;
    .restart local v23    # "timeLength":I
    .restart local v24    # "timeList":[Ljava/lang/String;
    .restart local v25    # "timerList":[Ljava/lang/String;
    :cond_a
    const/16 v26, 0x6

    :try_start_3
    aget-object v26, v22, v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 86
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v27, 0x5

    aget-object v27, v22, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 92
    :cond_b
    aget-object v26, v24, v17

    invoke-static/range {v26 .. v26}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getNearTime(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;

    move-result-object v13

    .line 93
    .local v13, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v26

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-lez v26, :cond_10

    .line 94
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseRealTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 100
    :goto_5
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_c

    .line 101
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseRealTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 104
    :cond_c
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_d

    .line 105
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenRealTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 108
    :cond_d
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_11

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_11

    .line 109
    const-string v7, ""

    .line 110
    const-string v26, "n"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 115
    :goto_6
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayState()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_e

    const-string v26, "y"

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayState()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 116
    :cond_e
    const-string v7, "allen_close"

    .line 117
    const-string v26, "n"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    .line 119
    :cond_f
    aget-object v26, v24, v17

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setMiniDelayStr(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 97
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenRealTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "----"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "y"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 113
    :cond_11
    const-string v26, "y"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->setShowMiniDelay(Ljava/lang/String;)V

    goto :goto_6

    .line 122
    .end local v13    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :cond_12
    aget-object v26, v24, v17

    aput-object v26, v25, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const-string v0, "msgBody"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kankunit/smartplugcronus/util/Smart2GetInfoUtil;->backMsg:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
