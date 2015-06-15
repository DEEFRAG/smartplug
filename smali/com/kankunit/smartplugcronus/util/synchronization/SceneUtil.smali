.class public Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;
.super Ljava/lang/Object;
.source "SceneUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "count":I
    invoke-static/range {p1 .. p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    .line 171
    .local v6, "db":Lnet/tsz/afinal/FinalDb;
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 172
    .local v14, "jsonArray":Lorg/json/JSONArray;
    const-class v25, Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 173
    const-class v25, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 174
    const-class v25, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 175
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v25

    if-nez v25, :cond_1

    .line 245
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_0

    .line 179
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 180
    .local v16, "nObject":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    const-string v25, "details"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "detailArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-lt v13, v0, :cond_2

    .line 232
    new-instance v23, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-direct/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/model/SceneModel;-><init>()V

    .line 233
    .local v23, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setAddtime(J)V

    .line 234
    const-string v25, "count"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setCount(I)V

    .line 235
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 236
    const-string v25, "sceneImage"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneImage(I)V

    .line 237
    const-string v25, "sceneName"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneName(Ljava/lang/String;)V

    .line 238
    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 239
    const-string v25, "sceneid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setId(I)V

    .line 240
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 183
    .end local v23    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_2
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 185
    .local v8, "detailMap":Lorg/json/JSONObject;
    const-string v25, "controlFilename"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 186
    .local v22, "remoteFile":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlIdByFileName(Lnet/tsz/afinal/FinalDb;Ljava/lang/String;)I

    move-result v3

    .line 187
    .local v3, "controlId":I
    new-instance v19, Lorg/json/JSONArray;

    const-string v25, "records"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 188
    .local v19, "recordArray":Lorg/json/JSONArray;
    const-string v17, ""

    .line 189
    .local v17, "rIdx":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 190
    .local v18, "rTime":I
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    const/4 v15, 0x0

    .local v15, "k":I
    move v5, v4

    .end local v4    # "count":I
    .local v5, "count":I
    :goto_3
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-lt v15, v0, :cond_4

    .line 214
    const-string v25, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 215
    const/16 v25, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 217
    :cond_3
    new-instance v9, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;-><init>()V

    .line 218
    .local v9, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    const-string v25, "action"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setAction(I)V

    .line 219
    invoke-virtual {v9, v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setControlId(I)V

    .line 220
    const-string v25, "groupString"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setGroupString(Ljava/lang/String;)V

    .line 221
    const-string v25, "timetaskstamp"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 222
    .local v24, "second":I
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setHour(I)V

    .line 223
    div-int/lit8 v25, v24, 0x3c

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMinute(I)V

    .line 224
    rem-int/lit8 v25, v24, 0x3c

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSecond(I)V

    .line 225
    const-string v25, "mac"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMac(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setRecordIdx(Ljava/lang/String;)V

    .line 227
    const-string v25, "sceneid"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSceneId(I)V

    .line 228
    const-string v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setTitle(Ljava/lang/String;)V

    .line 229
    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setType(I)V

    .line 230
    invoke-virtual {v6, v9}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 182
    add-int/lit8 v13, v13, 0x1

    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_2

    .line 192
    .end local v4    # "count":I
    .end local v9    # "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .end local v24    # "second":I
    .restart local v5    # "count":I
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/json/JSONObject;

    .line 193
    .local v20, "recordMap":Lorg/json/JSONObject;
    new-instance v21, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 194
    .local v21, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 195
    :cond_5
    if-nez v3, :cond_7

    .line 196
    const-string v25, "buttonname"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonEname(Ljava/lang/String;)V

    .line 203
    :goto_4
    const-string v25, "buttonname"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 204
    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 205
    const-string v25, "buttonUname"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 207
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 208
    const-string v25, "pressTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    move-object/from16 v0, v21

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    add-int v12, v18, v5

    .line 210
    .local v12, "id":I
    :try_start_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setId(I)V

    .line 211
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 212
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 191
    add-int/lit8 v15, v15, 0x1

    move v5, v4

    .end local v4    # "count":I
    .restart local v5    # "count":I
    goto/16 :goto_3

    .line 198
    .end local v12    # "id":I
    :cond_7
    :try_start_3
    const-string v25, "buttonname"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v3, v2}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getButtonEName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonEname(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 242
    .end local v20    # "recordMap":Lorg/json/JSONObject;
    .end local v21    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    :catch_0
    move-exception v10

    move v4, v5

    .line 243
    .end local v3    # "controlId":I
    .end local v5    # "count":I
    .end local v7    # "detailArray":Lorg/json/JSONArray;
    .end local v8    # "detailMap":Lorg/json/JSONObject;
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v16    # "nObject":Lorg/json/JSONObject;
    .end local v17    # "rIdx":Ljava/lang/String;
    .end local v18    # "rTime":I
    .end local v19    # "recordArray":Lorg/json/JSONArray;
    .end local v22    # "remoteFile":Ljava/lang/String;
    .restart local v4    # "count":I
    .local v10, "exception":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v4    # "count":I
    .end local v10    # "exception":Ljava/lang/Exception;
    .restart local v3    # "controlId":I
    .restart local v5    # "count":I
    .restart local v7    # "detailArray":Lorg/json/JSONArray;
    .restart local v8    # "detailMap":Lorg/json/JSONObject;
    .restart local v11    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "k":I
    .restart local v16    # "nObject":Lorg/json/JSONObject;
    .restart local v17    # "rIdx":Ljava/lang/String;
    .restart local v18    # "rTime":I
    .restart local v19    # "recordArray":Lorg/json/JSONArray;
    .restart local v20    # "recordMap":Lorg/json/JSONObject;
    .restart local v21    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    .restart local v22    # "remoteFile":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v25, "buttonname"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonEname(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 242
    .end local v3    # "controlId":I
    .end local v5    # "count":I
    .end local v7    # "detailArray":Lorg/json/JSONArray;
    .end local v8    # "detailMap":Lorg/json/JSONObject;
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v16    # "nObject":Lorg/json/JSONObject;
    .end local v17    # "rIdx":Ljava/lang/String;
    .end local v18    # "rTime":I
    .end local v19    # "recordArray":Lorg/json/JSONArray;
    .end local v20    # "recordMap":Lorg/json/JSONObject;
    .end local v21    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    .end local v22    # "remoteFile":Ljava/lang/String;
    .restart local v4    # "count":I
    :catch_1
    move-exception v10

    goto :goto_5
.end method

.method public getButtonEName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controlId"    # I
    .param p3, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 279
    .local v2, "db":Lnet/tsz/afinal/FinalDb;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v5, v6}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 280
    .local v1, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "controlModel=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlXml(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 282
    .local v4, "v":Landroid/view/View;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/ViewUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlMap2(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    .line 283
    .local v0, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, "string":Ljava/lang/String;
    return-object v3
.end method

.method public getButtonUname(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controlId"    # I
    .param p3, "buttonName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    .line 252
    invoke-static {p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 253
    .local v2, "db":Lnet/tsz/afinal/FinalDb;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v5, v6}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 254
    .local v1, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlXml(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-eq v5, v8, :cond_0

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 256
    :cond_0
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/ViewUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlMap2(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    .line 257
    .local v0, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-ne v5, v8, :cond_1

    const-string v5, "plus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    const-string v5, "mi_soundadd"

    .line 273
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 261
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-ne v5, v8, :cond_2

    const-string v5, "minus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    const-string v5, "mi_soundred"

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mi_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "apple_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 269
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gehua_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 272
    .end local v0    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "string":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/ViewUtil;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getControlMap1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    .line 273
    .restart local v0    # "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 313
    const-string v1, "air"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v0, 0x1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    const-string v1, "tv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const-string v1, "curtain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    const/4 v0, 0x3

    goto :goto_0

    .line 319
    :cond_2
    const-string v1, "universal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    const/4 v0, 0x4

    goto :goto_0

    .line 321
    :cond_3
    const-string v1, "tmall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    const/4 v0, 0x5

    goto :goto_0

    .line 323
    :cond_4
    const-string v1, "radio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    const/4 v0, 0x6

    goto :goto_0

    .line 325
    :cond_5
    const-string v1, "mi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 326
    const/4 v0, 0x7

    goto :goto_0

    .line 327
    :cond_6
    const-string v1, "apple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 328
    const/16 v0, 0x8

    goto :goto_0

    .line 329
    :cond_7
    const-string v1, "garage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 330
    const/16 v0, 0x9

    goto :goto_0

    .line 331
    :cond_8
    const-string v1, "gehua"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getControlIdByFileName(Lnet/tsz/afinal/FinalDb;Ljava/lang/String;)I
    .locals 5
    .param p1, "db"    # Lnet/tsz/afinal/FinalDb;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 362
    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dname=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v1

    .line 366
    :cond_0
    return v1
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
    .line 338
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    return-object v0

    .line 339
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 340
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 342
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
    .line 350
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    return-object v0

    .line 351
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 352
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 354
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

.method public getControlXml(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    const v0, 0x7f0300e9

    .line 288
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 289
    const v0, 0x7f030032

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 292
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 293
    const v0, 0x7f030049

    goto :goto_0

    .line 294
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 295
    const v0, 0x7f0300eb

    goto :goto_0

    .line 296
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 297
    const v0, 0x7f0300e7

    goto :goto_0

    .line 298
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 299
    const v0, 0x7f0300ba

    goto :goto_0

    .line 300
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 301
    const v0, 0x7f0300a4

    goto :goto_0

    .line 302
    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 303
    const v0, 0x7f030035

    goto :goto_0

    .line 304
    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    .line 305
    const v0, 0x7f03007a

    goto :goto_0

    .line 306
    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 307
    const v0, 0x7f03007d

    goto :goto_0
.end method

.method public getTime(III)I
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 248
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0
.end method

.method public sendDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v2, "uObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "userid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "method"

    const-string v4, "downloadScene"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public upload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userid"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static/range {p1 .. p1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    .line 51
    .local v8, "db":Lnet/tsz/afinal/FinalDb;
    const-class v24, Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v22

    .line 52
    .local v22, "sceneModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v4, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    if-nez v25, :cond_0

    .line 140
    :goto_1
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "jsonArray===="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v15, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v24, "userid"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v14, "jObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v24, "method"

    const-string v25, "uploadScene"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :goto_3
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "JsonObject========="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 54
    .end local v14    # "jObject":Lorg/json/JSONObject;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 55
    .local v21, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v23, "sceneObject":Lorg/json/JSONObject;
    const-string v25, "sceneName"

    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v25, "sceneImage"

    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneImage()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v25, "count"

    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getCount()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v25, "sceneid"

    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v9, "detailArray":Lorg/json/JSONArray;
    const-class v25, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "sceneId="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 83
    .local v11, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    const/4 v6, 0x0

    .line 84
    .local v6, "count":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_1

    .line 134
    const-string v25, "details"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 137
    .end local v7    # "count":I
    .end local v9    # "detailArray":Lorg/json/JSONArray;
    .end local v11    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    .end local v21    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    .end local v23    # "sceneObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 138
    .local v13, "exception":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 84
    .end local v13    # "exception":Ljava/lang/Exception;
    .restart local v7    # "count":I
    .restart local v9    # "detailArray":Lorg/json/JSONArray;
    .restart local v11    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    .restart local v21    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    .restart local v23    # "sceneObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 85
    .local v10, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v12, "detailObject":Lorg/json/JSONObject;
    const-string v26, "linenum"

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v26, "title"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v26, "type"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v26, "timetaskstamp"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v27

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v28

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getTime(III)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v26, "mac"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v26, "action"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_4

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v26

    const/16 v27, 0xe

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 93
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-class v27, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 94
    .local v5, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    const-string v26, "controlFilename"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :goto_5
    const-string v26, "groupString"

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, "recordIdx":Ljava/lang/String;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 103
    .local v16, "recordArray":Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v19, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    const-string v26, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 105
    const-class v26, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "id in("

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 117
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_5

    .line 131
    const-string v26, "records"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto/16 :goto_4

    .line 96
    .end local v7    # "count":I
    .end local v16    # "recordArray":Lorg/json/JSONArray;
    .end local v17    # "recordIdx":Ljava/lang/String;
    .end local v19    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    .restart local v6    # "count":I
    :cond_4
    const-string v26, "controlFilename"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 117
    .restart local v16    # "recordArray":Lorg/json/JSONArray;
    .restart local v17    # "recordIdx":Ljava/lang/String;
    .restart local v19    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 118
    .local v18, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "begin"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "end"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 121
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v20, "recordObject":Lorg/json/JSONObject;
    const-string v27, "buttonname"

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v27

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 124
    const-string v27, "buttonUname"

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    :goto_7
    const-string v27, "pressTime"

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    .line 126
    :cond_6
    const-string v27, "buttonUname"

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getControlId()I

    move-result v28

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->getButtonUname(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 145
    .end local v6    # "count":I
    .end local v9    # "detailArray":Lorg/json/JSONArray;
    .end local v10    # "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .end local v11    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    .end local v12    # "detailObject":Lorg/json/JSONObject;
    .end local v16    # "recordArray":Lorg/json/JSONArray;
    .end local v17    # "recordIdx":Ljava/lang/String;
    .end local v18    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    .end local v19    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    .end local v20    # "recordObject":Lorg/json/JSONObject;
    .end local v21    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    .end local v23    # "sceneObject":Lorg/json/JSONObject;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v13

    .line 146
    .restart local v13    # "exception":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 153
    .end local v13    # "exception":Ljava/lang/Exception;
    .restart local v14    # "jObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v24

    goto/16 :goto_3
.end method
