.class public Lcom/kankunit/smartplugcronus/util/LinkageUtil;
.super Ljava/lang/Object;
.source "LinkageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuilder(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "btnListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "chooseListener"    # Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .prologue
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_0

    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "items":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .line 64
    .restart local p2    # "items":[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/kankunit/smartplugcronus/util/LinkageUtil$1;

    invoke-direct {v5}, Lcom/kankunit/smartplugcronus/util/LinkageUtil$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0239

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 75
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 76
    return-void

    .line 59
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    aget-object v4, p2, v2

    if-eqz v4, :cond_1

    .line 60
    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 471
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 441
    if-nez p0, :cond_1

    .line 442
    const-string p0, ""

    .line 468
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 444
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 446
    if-nez p0, :cond_2

    const-string v0, ""

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "°C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 448
    :cond_3
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 450
    :cond_4
    const-string v0, "hum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 452
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 454
    :cond_6
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 456
    :cond_7
    const-string v0, "up_temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 457
    const-string v0, "°C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 458
    const-string v0, "°C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, v1

    goto :goto_0

    .line 460
    :cond_8
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 462
    :cond_9
    const-string v0, "up_hum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 463
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 464
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, v1

    goto/16 :goto_0

    .line 466
    :cond_a
    if-nez p0, :cond_0

    const-string p0, ""

    goto/16 :goto_0

    .line 468
    :cond_b
    if-nez p0, :cond_0

    const-string p0, ""

    goto/16 :goto_0
.end method

.method private getDelayCmd(ILandroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;J)Ljava/lang/String;
    .locals 23
    .param p1, "i"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "db"    # Lnet/tsz/afinal/FinalDb;
    .param p5, "delayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/SceneDetailModel;",
            ">;",
            "Lnet/tsz/afinal/FinalDb;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    const-string v6, ""

    .line 103
    .local v6, "cmd":Ljava/lang/String;
    const-string v5, "%deviceaction%"

    .line 104
    .local v5, "actionSplit":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 105
    .local v16, "sdm":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "mac":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "pwd":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayIdRandom()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 113
    .local v19, "timerID":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 114
    .local v18, "time":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 115
    const-string v20, ""

    .line 167
    :goto_0
    return-object v20

    .line 117
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 118
    const-string v17, "open"

    .line 119
    .local v17, "state":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 120
    const-string v17, "close"

    .line 122
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%request%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .end local v17    # "state":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 125
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    .line 126
    .local v9, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v9, :cond_4

    .line 127
    const-string v20, "noDevice"

    goto/16 :goto_0

    .line 129
    :cond_4
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v20

    const-string v21, "n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 130
    const-string v20, "noAuth"

    goto/16 :goto_0

    .line 132
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 133
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%close%relay%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .end local v9    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_6
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 145
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-class v21, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 146
    .local v7, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%operate#3031#emityun#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%uart"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .end local v7    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v12

    .line 149
    .local v12, "modelType":I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0xb

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v12, v0, :cond_9

    .line 150
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->sendRemoteControl(Landroid/content/Context;ILjava/lang/String;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    :cond_9
    const-string v13, ""

    .line 153
    .local v13, "newCmd":Ljava/lang/String;
    const-string v20, "%uart"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 154
    .local v14, "newStr":[Ljava/lang/String;
    const-string v20, "uart"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 155
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_2
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v10, v0, :cond_d

    .line 167
    .end local v10    # "index":I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 134
    .end local v12    # "modelType":I
    .end local v13    # "newCmd":Ljava/lang/String;
    .end local v14    # "newStr":[Ljava/lang/String;
    .restart local v9    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 135
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%open%light%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 137
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%close%light%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v20

    if-nez v20, :cond_6

    .line 139
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%deviceaction%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%open%relay%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 156
    .end local v9    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v10    # "index":I
    .restart local v12    # "modelType":I
    .restart local v13    # "newCmd":Ljava/lang/String;
    .restart local v14    # "newStr":[Ljava/lang/String;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayIdRandom()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 157
    new-instance v20, Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int v21, v21, v10

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "delay":Ljava/lang/String;
    aget-object v20, v14, v10

    const-string v21, "emityun"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 159
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v21, v14, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#none%operate%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 155
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 161
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v21, v14, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%operate%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 165
    .end local v8    # "delay":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_f
    move-object v13, v6

    goto/16 :goto_3
.end method

.method private getDelayIdRandom()Ljava/lang/String;
    .locals 5

    .prologue
    const-wide v3, 0x40c3880000000000L    # 10000.0

    .line 95
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 96
    .local v0, "num":I
    :goto_0
    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    const/16 v1, 0x270f

    if-ge v0, v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method public static getLinkageNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "nums":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mac"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 512
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "macs":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 514
    aget-object v1, v0, v2

    .line 516
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "oldMac"    # Ljava/lang/String;
    .param p1, "newMac"    # Ljava/lang/String;
    .param p2, "macStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    const-string v2, ""

    .line 483
    .local v2, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    :cond_0
    const-string p0, ""

    .line 486
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "macs":[Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_2

    move-object v3, v2

    .line 505
    .end local v0    # "i":I
    :goto_1
    return-object v3

    .line 489
    .restart local v0    # "i":I
    :cond_2
    if-ne v0, v6, :cond_3

    .line 488
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 496
    .end local v0    # "i":I
    :cond_4
    array-length v3, v1

    if-ne v3, v6, :cond_5

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 499
    :cond_5
    array-length v3, v1

    if-ne v3, v7, :cond_6

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 502
    :cond_6
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    move-object v3, v2

    .line 505
    goto :goto_1
.end method

.method public static getRandom()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x7

    .line 42
    const/16 v4, 0x3e

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "c"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "d"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "e"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "f"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "g"

    aput-object v5, v1, v4

    const-string v4, "h"

    aput-object v4, v1, v8

    const/16 v4, 0x8

    const-string v5, "i"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    .line 43
    const-string v5, "j"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "k"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "l"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "m"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "n"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "o"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "p"

    aput-object v5, v1, v4

    const/16 v4, 0x10

    const-string v5, "q"

    aput-object v5, v1, v4

    const/16 v4, 0x11

    const-string v5, "r"

    aput-object v5, v1, v4

    const/16 v4, 0x12

    const-string v5, "s"

    aput-object v5, v1, v4

    const/16 v4, 0x13

    const-string v5, "t"

    aput-object v5, v1, v4

    const/16 v4, 0x14

    const-string v5, "u"

    aput-object v5, v1, v4

    const/16 v4, 0x15

    const-string v5, "v"

    aput-object v5, v1, v4

    const/16 v4, 0x16

    const-string v5, "w"

    aput-object v5, v1, v4

    const/16 v4, 0x17

    const-string v5, "x"

    aput-object v5, v1, v4

    const/16 v4, 0x18

    const-string v5, "y"

    aput-object v5, v1, v4

    const/16 v4, 0x19

    const-string v5, "z"

    aput-object v5, v1, v4

    const/16 v4, 0x1a

    const-string v5, "1"

    aput-object v5, v1, v4

    const/16 v4, 0x1b

    const-string v5, "2"

    aput-object v5, v1, v4

    const/16 v4, 0x1c

    const-string v5, "3"

    aput-object v5, v1, v4

    const/16 v4, 0x1d

    const-string v5, "4"

    aput-object v5, v1, v4

    const/16 v4, 0x1e

    const-string v5, "5"

    aput-object v5, v1, v4

    const/16 v4, 0x1f

    const-string v5, "6"

    aput-object v5, v1, v4

    const/16 v4, 0x20

    const-string v5, "7"

    aput-object v5, v1, v4

    const/16 v4, 0x21

    const-string v5, "8"

    aput-object v5, v1, v4

    const/16 v4, 0x22

    const-string v5, "9"

    aput-object v5, v1, v4

    const/16 v4, 0x23

    const-string v5, "0"

    aput-object v5, v1, v4

    const/16 v4, 0x24

    const-string v5, "A"

    aput-object v5, v1, v4

    const/16 v4, 0x25

    .line 44
    const-string v5, "B"

    aput-object v5, v1, v4

    const/16 v4, 0x26

    const-string v5, "C"

    aput-object v5, v1, v4

    const/16 v4, 0x27

    const-string v5, "D"

    aput-object v5, v1, v4

    const/16 v4, 0x28

    const-string v5, "E"

    aput-object v5, v1, v4

    const/16 v4, 0x29

    const-string v5, "F"

    aput-object v5, v1, v4

    const/16 v4, 0x2a

    const-string v5, "G"

    aput-object v5, v1, v4

    const/16 v4, 0x2b

    const-string v5, "H"

    aput-object v5, v1, v4

    const/16 v4, 0x2c

    const-string v5, "I"

    aput-object v5, v1, v4

    const/16 v4, 0x2d

    const-string v5, "J"

    aput-object v5, v1, v4

    const/16 v4, 0x2e

    const-string v5, "K"

    aput-object v5, v1, v4

    const/16 v4, 0x2f

    const-string v5, "L"

    aput-object v5, v1, v4

    const/16 v4, 0x30

    const-string v5, "M"

    aput-object v5, v1, v4

    const/16 v4, 0x31

    const-string v5, "N"

    aput-object v5, v1, v4

    const/16 v4, 0x32

    const-string v5, "O"

    aput-object v5, v1, v4

    const/16 v4, 0x33

    const-string v5, "P"

    aput-object v5, v1, v4

    const/16 v4, 0x34

    const-string v5, "Q"

    aput-object v5, v1, v4

    const/16 v4, 0x35

    const-string v5, "R"

    aput-object v5, v1, v4

    const/16 v4, 0x36

    const-string v5, "S"

    aput-object v5, v1, v4

    const/16 v4, 0x37

    const-string v5, "T"

    aput-object v5, v1, v4

    const/16 v4, 0x38

    const-string v5, "U"

    aput-object v5, v1, v4

    const/16 v4, 0x39

    const-string v5, "V"

    aput-object v5, v1, v4

    const/16 v4, 0x3a

    const-string v5, "W"

    aput-object v5, v1, v4

    const/16 v4, 0x3b

    const-string v5, "X"

    aput-object v5, v1, v4

    const/16 v4, 0x3c

    const-string v5, "Y"

    aput-object v5, v1, v4

    const/16 v4, 0x3d

    const-string v5, "Z"

    aput-object v5, v1, v4

    .line 45
    .local v1, "randoms":[Ljava/lang/String;
    const-string v3, ""

    .line 46
    .local v3, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 50
    return-object v3

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 48
    .local v2, "rd":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTempStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "temp"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "°C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getTime(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 91
    mul-int/lit8 v0, p2, 0x3c

    mul-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-long v0, v0

    return-wide v0
.end method

.method public static isBodyNull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v1, 0x0

    .line 365
    if-eqz p0, :cond_2

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 376
    :goto_0
    return v0

    .line 369
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 370
    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 373
    goto :goto_0

    .line 376
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHumNull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v1, 0x0

    .line 396
    if-eqz p0, :cond_1

    .line 397
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 404
    :goto_0
    return v0

    .line 400
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 401
    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLumNull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v1, 0x0

    .line 407
    if-eqz p0, :cond_1

    .line 408
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 415
    :goto_0
    return v0

    .line 411
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 412
    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNullLinkageInfo(Lcom/kankunit/smartplugcronus/model/LinkageModel;)Z
    .locals 3
    .param p0, "lm"    # Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .prologue
    const/4 v0, 0x0

    .line 315
    if-eqz p0, :cond_5

    .line 316
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasHum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasHum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasLum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasLum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTemp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    :cond_4
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, ""

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTempNull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v1, 0x0

    .line 379
    if-eqz p0, :cond_3

    .line 380
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 393
    :goto_0
    return v0

    .line 383
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 384
    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 387
    goto :goto_0

    .line 389
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 390
    goto :goto_0

    .line 393
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTimerNull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    const/4 v1, 0x0

    .line 418
    if-eqz p0, :cond_5

    .line 419
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 437
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 422
    goto :goto_0

    .line 427
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 428
    goto :goto_0

    .line 429
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 430
    goto :goto_0

    .line 431
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 432
    goto :goto_0

    .line 433
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 434
    goto/16 :goto_0

    .line 437
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private sendRemoteControl(Landroid/content/Context;ILjava/lang/String;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controlId"    # I
    .param p3, "recordIdx"    # Ljava/lang/String;
    .param p4, "db"    # Lnet/tsz/afinal/FinalDb;

    .prologue
    .line 243
    const-string v10, ""

    .line 244
    .local v10, "message":Ljava/lang/String;
    const-string v1, "%deviceaction%"

    .line 245
    .local v1, "actionSplit":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 246
    .local v4, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v4, :cond_0

    .line 247
    const-string v13, ""

    .line 287
    :goto_0
    return-object v13

    .line 249
    :cond_0
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 250
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v6, :cond_1

    .line 251
    const-string v13, ""

    goto :goto_0

    .line 253
    :cond_1
    const-string v13, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "idx":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v13, v9

    if-lt v7, v13, :cond_3

    .line 284
    if-eqz v10, :cond_2

    const-string v13, ""

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 285
    :cond_2
    const-string v13, ""

    goto :goto_0

    .line 255
    :cond_3
    aget-object v8, v9, v7

    .line 256
    .local v8, "id":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 254
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 259
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, "d":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 261
    .local v12, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "begin"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "end"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 264
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v13

    const/4 v14, 0x7

    if-eq v13, v14, :cond_6

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_6

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_8

    .line 265
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "%deviceaction%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%operate#3031#emityun#xiaomi_tv_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%uart"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 266
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_7

    .line 267
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "%deviceaction%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%operate#3031#emityun#apple_tv_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%uart"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 268
    goto/16 :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_4

    .line 269
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "%deviceaction%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%operate#3031#emityun#gehua_tv_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%uart"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 271
    goto/16 :goto_2

    .line 273
    :cond_8
    const-class v13, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "remoteControlId="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and buttonId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v13

    if-nez v13, :cond_a

    .line 275
    :cond_9
    const-class v13, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "remoteControlId="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and buttonName=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 277
    :cond_a
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_4

    .line 280
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 281
    .local v2, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v11

    .line 282
    .local v11, "port":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "%deviceaction%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%operate#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#emit#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%uart"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 287
    .end local v2    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v3    # "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    .end local v5    # "d":I
    .end local v8    # "id":Ljava/lang/String;
    .end local v11    # "port":I
    .end local v12    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public static setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .locals 0
    .param p0, "ltm"    # Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .param p1, "trignum"    # Ljava/lang/String;
    .param p2, "val1"    # Ljava/lang/String;
    .param p3, "val2"    # Ljava/lang/String;
    .param p4, "repart"    # Ljava/lang/String;
    .param p5, "isset"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->setTrignum(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->setVal1(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->setVal2(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p5}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->setIsset(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p4}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->setRepart(Ljava/lang/String;)V

    .line 84
    return-object p0
.end method


# virtual methods
.method public getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "db"    # Lnet/tsz/afinal/FinalDb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/SceneDetailModel;",
            ">;",
            "Lnet/tsz/afinal/FinalDb;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    const/4 v14, 0x0

    .line 172
    .local v14, "hasDelay":Z
    const-wide/16 v8, 0x0

    .line 173
    .local v8, "delayTime":J
    const-string v11, ""

    .line 174
    .local v11, "cmd":Ljava/lang/String;
    const-string v10, "%deviceaction%"

    .line 175
    .local v10, "actionSplit":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_2

    .line 233
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, "result":Ljava/lang/String;
    if-eqz v17, :cond_0

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    const-string v17, "none"

    .line 237
    :cond_1
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 240
    .end local v17    # "result":Ljava/lang/String;
    :goto_2
    return-object v17

    .line 176
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 177
    .local v18, "sdm":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v15

    .line 178
    .local v15, "modelType":I
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "pwd":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eqz v14, :cond_7

    .line 180
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 181
    const/4 v14, 0x1

    .line 182
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getTime(III)J

    move-result-wide v5

    add-long/2addr v8, v5

    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 184
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_4

    move-object/from16 v17, v11

    .line 185
    goto :goto_2

    .line 187
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayCmd(ILandroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 191
    :goto_3
    const-string v20, "noAuth"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayCmd(ILandroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    const-string v17, "noAuth"

    goto/16 :goto_2

    .line 189
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayCmd(ILandroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 194
    :cond_6
    const-string v20, "noDevice"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getDelayCmd(ILandroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 195
    const-string v17, "noDevice"

    goto/16 :goto_2

    .line 198
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    .line 199
    const-string v19, "open"

    .line 200
    .local v19, "state":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 201
    const-string v19, "close"

    .line 203
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%request"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    .end local v19    # "state":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 205
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/16 v5, 0xe

    if-eq v3, v5, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/16 v5, 0xf

    if-ne v3, v5, :cond_11

    .line 206
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v13

    .line 207
    .local v13, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v13, :cond_c

    .line 208
    const-string v17, "noDevice"

    goto/16 :goto_2

    .line 210
    :cond_c
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v3

    const-string v5, "n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 211
    const-string v17, "noAuth"

    goto/16 :goto_2

    .line 213
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%close%relay"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 215
    goto :goto_4

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_f

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%open%light"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 217
    goto/16 :goto_4

    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_10

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%close%light"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 219
    goto/16 :goto_4

    :cond_10
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v3

    if-nez v3, :cond_9

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%open%relay"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 224
    goto/16 :goto_4

    .line 225
    .end local v13    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_12

    .line 226
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 227
    .local v12, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%operate#3031#emityun#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%uart"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 228
    goto/16 :goto_4

    .line 229
    .end local v12    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_12
    const/4 v3, 0x4

    if-eq v15, v3, :cond_13

    const/16 v3, 0xa

    if-eq v15, v3, :cond_13

    const/16 v3, 0xb

    if-eq v15, v3, :cond_13

    const/4 v3, 0x5

    if-eq v15, v3, :cond_13

    const/4 v3, 0x7

    if-eq v15, v3, :cond_13

    const/16 v3, 0x8

    if-eq v15, v3, :cond_13

    const/16 v3, 0x9

    if-eq v15, v3, :cond_13

    const/16 v3, 0xc

    if-eq v15, v3, :cond_13

    const/16 v3, 0xd

    if-ne v15, v3, :cond_9

    .line 230
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%deviceaction%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->sendRemoteControl(Landroid/content/Context;ILjava/lang/String;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 238
    .end local v15    # "modelType":I
    .end local v16    # "pwd":Ljava/lang/String;
    .end local v18    # "sdm":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .restart local v17    # "result":Ljava/lang/String;
    :cond_14
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1
.end method

.method public getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ltm"    # Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->getTrignum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->getVal1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->getVal2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->getRepart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;->getIsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac(Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)Ljava/lang/String;
    .locals 6
    .param p1, "ldm"    # Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    const-string v0, ""

    .line 337
    .local v0, "mac":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ":temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    move-object v1, v0

    .line 357
    .end local v0    # "mac":Ljava/lang/String;
    .local v1, "mac":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 341
    .end local v1    # "mac":Ljava/lang/String;
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":body"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ":body"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    move-object v1, v0

    .line 343
    .end local v0    # "mac":Ljava/lang/String;
    .restart local v1    # "mac":Ljava/lang/String;
    goto :goto_0

    .line 345
    .end local v1    # "mac":Ljava/lang/String;
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 346
    :cond_4
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":hum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ":hum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    move-object v1, v0

    .line 347
    .end local v0    # "mac":Ljava/lang/String;
    .restart local v1    # "mac":Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v1    # "mac":Ljava/lang/String;
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum3()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 350
    :cond_6
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":lum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ":lum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    move-object v1, v0

    .line 351
    .end local v0    # "mac":Ljava/lang/String;
    .restart local v1    # "mac":Ljava/lang/String;
    goto/16 :goto_0

    .line 353
    .end local v1    # "mac":Ljava/lang/String;
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 354
    :cond_8
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":timer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ":timer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    move-object v1, v0

    .line 355
    .end local v0    # "mac":Ljava/lang/String;
    .restart local v1    # "mac":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "mac":Ljava/lang/String;
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_9
    move-object v1, v0

    .line 357
    .end local v0    # "mac":Ljava/lang/String;
    .restart local v1    # "mac":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getTrignum(Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)Ljava/lang/String;
    .locals 3
    .param p1, "ldm"    # Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .prologue
    .line 290
    const-string v0, ""

    .line 291
    .local v0, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum3()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ""

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ""

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ""

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ""

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ""

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    :goto_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, ""

    :goto_10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ""

    :goto_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ","

    :goto_12
    return-object v1

    .line 291
    :cond_0
    const-string v1, ",0"

    goto/16 :goto_0

    .line 292
    :cond_1
    const-string v1, ",1"

    goto/16 :goto_1

    .line 293
    :cond_2
    const-string v1, ",2"

    goto/16 :goto_2

    .line 294
    :cond_3
    const-string v1, ",3"

    goto/16 :goto_3

    .line 295
    :cond_4
    const-string v1, ",4"

    goto/16 :goto_4

    .line 296
    :cond_5
    const-string v1, ",5"

    goto/16 :goto_5

    .line 297
    :cond_6
    const-string v1, ",6"

    goto/16 :goto_6

    .line 298
    :cond_7
    const-string v1, ",7"

    goto/16 :goto_7

    .line 299
    :cond_8
    const-string v1, ",8"

    goto/16 :goto_8

    .line 300
    :cond_9
    const-string v1, ",9"

    goto/16 :goto_9

    .line 301
    :cond_a
    const-string v1, ",10"

    goto/16 :goto_a

    .line 302
    :cond_b
    const-string v1, ",11"

    goto/16 :goto_b

    .line 303
    :cond_c
    const-string v1, ",14"

    goto/16 :goto_c

    .line 304
    :cond_d
    const-string v1, ",15"

    goto/16 :goto_d

    .line 306
    :cond_e
    const-string v1, ",19"

    goto/16 :goto_e

    .line 307
    :cond_f
    const-string v1, ",20"

    goto/16 :goto_f

    .line 308
    :cond_10
    const-string v1, ",16"

    goto :goto_10

    .line 309
    :cond_11
    const-string v1, ",17"

    goto :goto_11

    .line 311
    :cond_12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method
