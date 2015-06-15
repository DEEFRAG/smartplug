.class public Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AddSceneDeviceListActivity.java"


# instance fields
.field private behindAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;

.field private behindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private db:Lnet/tsz/afinal/FinalDb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 422
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "type"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v15, "title"

    const-string v16, "Delay Function"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v16, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v17, "version=1"

    invoke-virtual/range {v15 .. v17}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 266
    .local v5, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v16, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v17, "version=2"

    invoke-virtual/range {v15 .. v17}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 267
    .local v6, "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v16, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v17, "version=3 or version=4"

    invoke-virtual/range {v15 .. v17}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 268
    .local v7, "devicelist3":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 269
    .local v12, "shortCutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v16, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual/range {v15 .. v16}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 309
    .local v3, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortRemoteControlList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 310
    .local v13, "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_c

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    return-object v15

    .line 271
    .end local v3    # "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .end local v13    # "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 272
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v2, 0x0

    .line 273
    .local v2, "b":Z
    if-eqz v12, :cond_4

    .line 274
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_6

    .line 281
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 284
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v8, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "new"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 286
    const-string v16, "isNew"

    const-string v17, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :goto_3
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v16

    const-string v17, "off"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 291
    const-string v16, "status"

    const-string v17, "offline"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_4
    const-string v16, "mac"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v16, "title"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 298
    const-string v16, "type"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    .end local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 275
    .local v4, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 276
    const/4 v2, 0x1

    .line 277
    goto/16 :goto_2

    .line 288
    .end local v4    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    const-string v16, "isNew"

    const-string v17, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 293
    :cond_8
    const-string v16, "status"

    const-string v17, "online"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 299
    :cond_9
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 300
    const-string v16, "type"

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 301
    :cond_a
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 302
    const-string v16, "type"

    const/16 v17, 0xe

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 303
    :cond_b
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 304
    const-string v16, "type"

    const/16 v17, 0xf

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 310
    .end local v2    # "b":Z
    .end local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v3    # "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .restart local v13    # "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_c
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 311
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    const/4 v14, 0x0

    .line 312
    .local v14, "smodel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_f

    .line 318
    :goto_6
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v16

    const-string v17, "off"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 321
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 322
    .restart local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "title"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v16, "controlId"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 325
    const-string v16, "type"

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 312
    .end local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 313
    .local v11, "scModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 314
    move-object v14, v11

    .line 315
    goto :goto_6

    .line 326
    .end local v11    # "scModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v8    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 327
    const-string v16, "type"

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 328
    :cond_11
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 329
    const-string v16, "type"

    const/16 v17, 0xb

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 330
    :cond_12
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 331
    const-string v16, "type"

    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 332
    :cond_13
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 333
    const-string v16, "type"

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 334
    :cond_14
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 335
    const-string v16, "type"

    const/16 v17, 0x7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 336
    :cond_15
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 337
    const-string v16, "type"

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 338
    :cond_16
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 339
    const-string v16, "type"

    const/16 v17, 0x9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 340
    :cond_17
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 341
    const-string v16, "type"

    const/16 v17, 0xc

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 342
    :cond_18
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v16

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 343
    const-string v16, "type"

    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 394
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 395
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 403
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 411
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 413
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x6

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    if-nez p3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    if-eq p1, v9, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_2

    const/16 v6, 0xb

    if-eq p1, v6, :cond_2

    const/16 v6, 0xa

    if-eq p1, v6, :cond_2

    const/4 v6, 0x5

    if-eq p1, v6, :cond_2

    const/4 v6, 0x7

    if-eq p1, v6, :cond_2

    const/16 v6, 0x8

    if-eq p1, v6, :cond_2

    const/16 v6, 0x9

    if-eq p1, v6, :cond_2

    const/16 v6, 0xc

    if-eq p1, v6, :cond_2

    const/16 v6, 0xd

    if-ne p1, v6, :cond_0

    .line 360
    :cond_2
    const-string v6, "title"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "title":Ljava/lang/String;
    const-string v6, "controlId"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "controlId":Ljava/lang/String;
    const-string v6, "groupString"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "groupString":Ljava/lang/String;
    const-string v6, "recordIdx"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "recordIdx":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "operationType"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "type":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "operationType"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v6, "title"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v6, "type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v6, "controlId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    if-ne p1, v9, :cond_3

    .line 371
    const-string v6, "groupString"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    :goto_1
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 376
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    goto/16 :goto_0

    .line 373
    :cond_3
    const-string v6, "recordIdx"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 71
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 72
    const v1, 0x7f0700bc

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 73
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;

    .line 74
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->behindAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    .line 386
    :cond_0
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 58
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 54
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 55
    return-void
.end method
