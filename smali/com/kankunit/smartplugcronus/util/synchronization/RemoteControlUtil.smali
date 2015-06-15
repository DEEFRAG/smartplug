.class public Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;
.super Ljava/lang/Object;
.source "RemoteControlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 165
    .local v13, "jsonArray":Lorg/json/JSONArray;
    invoke-static/range {p1 .. p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    .line 166
    .local v8, "db":Lnet/tsz/afinal/FinalDb;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(I)V

    .line 179
    const-class v23, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 180
    const-class v23, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 181
    const-class v23, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 183
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 276
    .end local v8    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local v8    # "db":Lnet/tsz/afinal/FinalDb;
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_0

    .line 187
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 188
    .local v16, "nObject":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    const-string v23, "buttons"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "array":Lorg/json/JSONArray;
    const-string v23, "rctype"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "rctype":Ljava/lang/String;
    const-string v23, "universal"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 192
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const-string v24, "rctype"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getCType(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getControlXml(I)I

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 193
    .local v20, "v":Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/util/ViewUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getControlMap2(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v5

    .line 195
    .local v5, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v12, v0, :cond_4

    .line 243
    .end local v5    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "v":Landroid/view/View;
    :cond_2
    new-instance v7, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;-><init>()V

    .line 244
    .local v7, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    const-string v23, "brand"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setBrand(Ljava/lang/String;)V

    .line 245
    const-string v23, "brand_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setBrandType(Ljava/lang/String;)V

    .line 246
    const-string v23, "rcinfoname"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setDname(Ljava/lang/String;)V

    .line 247
    const-string v23, "mac"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setMac(Ljava/lang/String;)V

    .line 248
    const-string v23, "rcname"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 249
    const-string v23, "plugname"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "ir_module"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 250
    const/16 v23, 0xbd7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPort(I)V

    .line 254
    :goto_3
    const-string v23, "rctype"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getCType(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setType(I)V

    .line 255
    const-string v23, "rcid"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setId(I)V

    .line 256
    invoke-virtual {v8, v7}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->isExistShortcut(Landroid/content/Context;I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 259
    new-instance v18, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 260
    .local v18, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getIcon(I)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 261
    const-string v23, "on"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 262
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 263
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 264
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 265
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getRemoteType(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    .line 268
    .local v9, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 269
    const-string v23, "other"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 186
    .end local v9    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v18    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 196
    .end local v7    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .restart local v5    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 197
    .local v14, "map":Lorg/json/JSONObject;
    new-instance v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 198
    .local v6, "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    const-string v23, "rcbuttonUname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 199
    const-string v23, "rcbuttonUname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 200
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 201
    const-string v23, "rcbuttontimestamp"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 202
    const-string v23, "rcid"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 203
    invoke-virtual {v8, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 206
    .end local v5    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v12    # "j":I
    .end local v14    # "map":Lorg/json/JSONObject;
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getPositionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 207
    .local v3, "bList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_2

    .line 208
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 209
    .restart local v14    # "map":Lorg/json/JSONObject;
    const-string v23, "rcbuttontimestamp"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 210
    .local v19, "timestamp":Ljava/lang/String;
    new-instance v15, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-direct {v15}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;-><init>()V

    .line 211
    .local v15, "mrcModel":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 212
    .local v21, "x":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 213
    .local v22, "y":I
    add-int/lit8 v23, v22, -0x1

    mul-int/lit8 v23, v23, 0x3

    add-int v23, v23, v21

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 214
    .local v4, "bMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v4, :cond_7

    .line 207
    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 217
    :cond_7
    const-string v23, "icontype"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_6
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setAuto(Z)V

    .line 218
    const-string v23, "rcid"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setCpid(I)V

    .line 219
    const-string v23, "icontype"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 220
    const-string v23, "rcbuttonUname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setId(I)V

    .line 221
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v23, "btn"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTag(Ljava/lang/String;)V

    .line 222
    const-string v23, "rcbuttonname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    .line 223
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x14

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setX(I)V

    .line 224
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x14

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setY(I)V

    .line 225
    invoke-virtual {v8, v15}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 227
    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 228
    new-instance v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 229
    .restart local v6    # "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    const-string v23, "icontype"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 230
    const-string v23, "rcbuttonname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 231
    const-string v23, "rcbuttonname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 236
    :goto_7
    const-string v23, "rcbuttonUname"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 237
    const-string v23, "rcbuttontimestamp"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 238
    const-string v23, "rcid"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 239
    invoke-virtual {v8, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 273
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "bList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v4    # "bMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v8    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "map":Lorg/json/JSONObject;
    .end local v15    # "mrcModel":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    .end local v16    # "nObject":Lorg/json/JSONObject;
    .end local v17    # "rctype":Ljava/lang/String;
    .end local v19    # "timestamp":Ljava/lang/String;
    .end local v21    # "x":I
    .end local v22    # "y":I
    :catch_0
    move-exception v10

    .line 274
    .local v10, "exception":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v10    # "exception":Ljava/lang/Exception;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v3    # "bList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v4    # "bMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "db":Lnet/tsz/afinal/FinalDb;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v14    # "map":Lorg/json/JSONObject;
    .restart local v15    # "mrcModel":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    .restart local v16    # "nObject":Lorg/json/JSONObject;
    .restart local v17    # "rctype":Ljava/lang/String;
    .restart local v19    # "timestamp":Ljava/lang/String;
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 233
    .restart local v6    # "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_9
    :try_start_1
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 234
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    goto :goto_7

    .line 252
    .end local v3    # "bList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v4    # "bMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "ccModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v14    # "map":Lorg/json/JSONObject;
    .end local v15    # "mrcModel":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    .end local v19    # "timestamp":Ljava/lang/String;
    .end local v21    # "x":I
    .end local v22    # "y":I
    .restart local v7    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_a
    const/16 v23, 0xbdb

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPort(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public getCType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 380
    const-string v1, "air"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const/4 v0, 0x1

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    const-string v1, "tv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const-string v1, "curtain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    const/4 v0, 0x3

    goto :goto_0

    .line 386
    :cond_2
    const-string v1, "universal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    const/4 v0, 0x4

    goto :goto_0

    .line 388
    :cond_3
    const-string v1, "tmall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    const/4 v0, 0x5

    goto :goto_0

    .line 390
    :cond_4
    const-string v1, "radio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    const/4 v0, 0x6

    goto :goto_0

    .line 392
    :cond_5
    const-string v1, "mi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 393
    const/4 v0, 0x7

    goto :goto_0

    .line 394
    :cond_6
    const-string v1, "apple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    const/16 v0, 0x8

    goto :goto_0

    .line 396
    :cond_7
    const-string v1, "garage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 397
    const/16 v0, 0x9

    goto :goto_0

    .line 398
    :cond_8
    const-string v1, "gehua"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getControlMap1(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 413
    return-object v0

    .line 406
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 407
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 408
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getControlMap2(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    return-object v0

    .line 418
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 419
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getControlType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 305
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 306
    const-string v0, "air"

    .line 326
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 308
    const-string v0, "tv"

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 310
    const-string v0, "curtain"

    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 312
    const-string v0, "universal"

    goto :goto_0

    .line 313
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 314
    const-string v0, "tmall"

    goto :goto_0

    .line 315
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 316
    const-string v0, "radio"

    goto :goto_0

    .line 317
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 318
    const-string v0, "mi"

    goto :goto_0

    .line 319
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 320
    const-string v0, "apple"

    goto :goto_0

    .line 321
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 322
    const-string v0, "garage"

    goto :goto_0

    .line 323
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 324
    const-string v0, "gehua"

    goto :goto_0

    .line 326
    :cond_9
    const-string v0, "tv"

    goto :goto_0
.end method

.method public getControlXml(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    const v0, 0x7f0300e9

    .line 330
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 331
    const v0, 0x7f030032

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 334
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 335
    const v0, 0x7f030049

    goto :goto_0

    .line 336
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 337
    const v0, 0x7f0300eb

    goto :goto_0

    .line 338
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 339
    const v0, 0x7f0300e7

    goto :goto_0

    .line 340
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 341
    const v0, 0x7f0300ba

    goto :goto_0

    .line 342
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 343
    const v0, 0x7f0300a4

    goto :goto_0

    .line 344
    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 345
    const v0, 0x7f030035

    goto :goto_0

    .line 346
    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    .line 347
    const v0, 0x7f03007a

    goto :goto_0

    .line 348
    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 349
    const v0, 0x7f03007d

    goto :goto_0
.end method

.method public getIcon(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    const v0, 0x7f0201d2

    const/4 v1, 0x1

    .line 279
    if-ne p1, v1, :cond_1

    .line 280
    const v0, 0x7f0201b6

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 283
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 284
    const v0, 0x7f0201b8

    goto :goto_0

    .line 285
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 286
    const v0, 0x7f0201be

    goto :goto_0

    .line 287
    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 290
    const v0, 0x7f0201cc

    goto :goto_0

    .line 291
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 292
    const v0, 0x7f0201bf

    goto :goto_0

    .line 293
    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 294
    const v0, 0x7f0201b7

    goto :goto_0

    .line 295
    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    .line 296
    const v0, 0x7f0201bb

    goto :goto_0

    .line 297
    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 298
    const v0, 0x7f0201bc

    goto :goto_0
.end method

.method public getPosition(Ljava/util/List;II)Ljava/util/Map;
    .locals 5
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .line 430
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "x"

    rem-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_2

    const/4 v2, 0x3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v3, "y"

    rem-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_3

    div-int/lit8 v2, v0, 0x3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-object v1

    .line 430
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 431
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v0, v0, 0x1

    .line 432
    const-string v2, "x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v4, p2, -0x14

    if-ne v2, v4, :cond_0

    const-string v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v4, p3, -0x14

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 437
    :cond_2
    rem-int/lit8 v2, v0, 0x3

    goto :goto_1

    .line 438
    :cond_3
    div-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getPositionList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v7, 0x7f0a0101

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v2, "meshList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "county":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x7

    if-le v1, v4, :cond_0

    .line 453
    return-object v2

    .line 445
    :cond_0
    const/4 v0, 0x0

    .local v0, "countx":I
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 446
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v3, "meshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v4, "x"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v4, "y"

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {p1, v5}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "meshList======"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method public getRemoteType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 355
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 356
    const-string v0, "airRemoteControl"

    .line 376
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 358
    const-string v0, "tvRemoteControl"

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 360
    const-string v0, "curtainRemoteControl"

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 362
    const-string v0, "universalRemoteControl"

    goto :goto_0

    .line 363
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 364
    const-string v0, "tmallRemoteControl"

    goto :goto_0

    .line 365
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 366
    const-string v0, "radioRemoteControl"

    goto :goto_0

    .line 367
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 368
    const-string v0, "miRemoteControl"

    goto :goto_0

    .line 369
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 370
    const-string v0, "appleRemoteControl"

    goto :goto_0

    .line 371
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 372
    const-string v0, "garageRemoteControl"

    goto :goto_0

    .line 373
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 374
    const-string v0, "ghRemoteControl"

    goto :goto_0

    .line 376
    :cond_9
    const-string v0, "tvRemoteControl"

    goto :goto_0
.end method

.method public sendDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v2, "uObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "userid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v3, "method"

    const-string v4, "downloadRemoteControl"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public upload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userid"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static/range {p1 .. p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v10

    .line 44
    .local v10, "db":Lnet/tsz/afinal/FinalDb;
    const-class v23, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v19

    .line 45
    .local v19, "remoteControlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const-class v23, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v18

    .line 46
    .local v18, "remoteControlCodeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    const-class v23, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v21

    .line 48
    .local v21, "universalRemoteModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getPositionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 49
    .local v17, "poList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v14, "jsonArray":Lorg/json/JSONArray;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_0

    .line 124
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v15, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v23, "userid"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v23, "data"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v13, "jObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v23, "method"

    const-string v24, "uploadRemoteControl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v23, "data"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    :goto_2
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "JsonObject========="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    return-object v23

    .line 50
    .end local v13    # "jObject":Lorg/json/JSONObject;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 54
    .local v9, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v8, "cmObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v24, "rcname"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v24, "userid"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v24, "mac"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v24, "rcinfoname"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v24

    const/16 v25, 0xbd7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 61
    const-string v24, "plugname"

    const-string v25, "ir_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :goto_3
    const-string v24, "brand_type"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v24, "brand"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v24, "rctype"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getControlType(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v24, "rcid"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v24

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getControlXml(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 71
    .local v22, "v":Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/util/ViewUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getControlMap1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v4

    .line 73
    .local v4, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .local v5, "cJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 75
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_4

    .line 117
    :cond_2
    const-string v24, "buttons"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .end local v4    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "cJsonArray":Lorg/json/JSONArray;
    .end local v22    # "v":Landroid/view/View;
    :goto_5
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 63
    :cond_3
    :try_start_3
    const-string v24, "plugname"

    const-string v25, "rf_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 118
    :catch_0
    move-exception v24

    goto :goto_5

    .line 75
    .restart local v4    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "cJsonArray":Lorg/json/JSONArray;
    .restart local v22    # "v":Landroid/view/View;
    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 76
    .local v7, "ccodeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getRemoteControlId()I

    move-result v25

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 77
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v6, "cJsonObject":Lorg/json/JSONObject;
    const-string v25, "rcbuttonname"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getButtonName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v25, "rcbuttontimestamp"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v25, "rcbuttonid"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v25, "rcid"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v25, "rcbuttonUname"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getButtonName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 87
    .end local v6    # "cJsonObject":Lorg/json/JSONObject;
    .end local v7    # "ccodeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_6
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .line 88
    .local v20, "universal":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getCpid()I

    move-result v25

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 89
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .restart local v6    # "cJsonObject":Lorg/json/JSONObject;
    const-string v25, "rcbuttonname"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v25, "rcbuttonUname"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v25, "icontype"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getIcon()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v25, "rcid"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->getPosition(Ljava/util/List;II)Ljava/util/Map;

    move-result-object v16

    .line 95
    .local v16, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v16, :cond_9

    .line 96
    const-string v25, "x"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v25, "y"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    :goto_7
    const/4 v12, 0x0

    .line 104
    .local v12, "isEarn":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_a

    .line 110
    if-nez v12, :cond_8

    .line 111
    const-string v25, "rcbuttontimestamp"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_8
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    .line 99
    .end local v12    # "isEarn":Z
    :cond_9
    const-string v25, "x"

    const-string v26, "x"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v25, "y"

    const-string v26, "y"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 104
    .restart local v12    # "isEarn":Z
    :cond_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 105
    .restart local v7    # "ccodeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getButtonId()I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getRemoteControlId()I

    move-result v26

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 106
    const-string v26, "rcbuttontimestamp"

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 107
    const/4 v12, 0x1

    goto :goto_8

    .line 128
    .end local v4    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "cJsonArray":Lorg/json/JSONArray;
    .end local v6    # "cJsonObject":Lorg/json/JSONObject;
    .end local v7    # "ccodeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v8    # "cmObject":Lorg/json/JSONObject;
    .end local v9    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v12    # "isEarn":Z
    .end local v16    # "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "universal":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    .end local v22    # "v":Landroid/view/View;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    .line 129
    .local v11, "exception":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 136
    .end local v11    # "exception":Ljava/lang/Exception;
    .restart local v13    # "jObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v23

    goto/16 :goto_2
.end method
