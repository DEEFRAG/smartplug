.class Lcom/kankunit/smartplugcronus/view/MenuActivity$7;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 20
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 500
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "backMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 503
    .local v5, "decoded":[B
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "backMsg":Ljava/lang/String;
    .local v4, "backMsg":Ljava/lang/String;
    move-object v3, v4

    .line 507
    .end local v4    # "backMsg":Ljava/lang/String;
    .restart local v3    # "backMsg":Ljava/lang/String;
    :goto_0
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 508
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v2, v18, v19

    .line 509
    .local v2, "allDetails":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v14, v18, v19

    .line 510
    .local v14, "newEest":Ljava/lang/String;
    const-string v16, ""

    .line 511
    .local v16, "newMiniEst":Ljava/lang/String;
    const-string v15, ""

    .line 512
    .local v15, "newMiniBEst":Ljava/lang/String;
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 513
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    aget-object v16, v18, v19

    .line 515
    :cond_0
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 516
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x6

    aget-object v15, v18, v19

    .line 519
    :cond_1
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, "details":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_3

    .line 546
    .end local v2    # "allDetails":Ljava/lang/String;
    .end local v7    # "details":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v14    # "newEest":Ljava/lang/String;
    .end local v15    # "newMiniBEst":Ljava/lang/String;
    .end local v16    # "newMiniEst":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 504
    :catch_0
    move-exception v10

    .line 505
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 521
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "allDetails":Ljava/lang/String;
    .restart local v7    # "details":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "newEest":Ljava/lang/String;
    .restart local v15    # "newMiniBEst":Ljava/lang/String;
    .restart local v16    # "newMiniEst":Ljava/lang/String;
    :cond_3
    aget-object v6, v7, v11

    .line 522
    .local v6, "detail":Ljava/lang/String;
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 520
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 525
    :cond_5
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v12, v18, v19

    .line 526
    .local v12, "mac":Ljava/lang/String;
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v9, v18, v19

    .line 527
    .local v9, "dm_ssoftver":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 529
    .local v8, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v17, ""

    .line 530
    .local v17, "newVersion":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 531
    move-object/from16 v17, v14

    .line 538
    :cond_6
    :goto_3
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/kankunit/smartplugcronus/util/DataUtil;->hasNewVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 539
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 540
    .local v13, "msg":Landroid/os/Message;
    const/16 v18, 0x8a4

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->what:I

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 532
    .end local v13    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 533
    move-object/from16 v17, v16

    .line 534
    goto :goto_3

    :cond_8
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 535
    move-object/from16 v17, v15

    goto :goto_3
.end method
