.class public Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;
.super Ljava/lang/Object;
.source "UploadOrDownInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downLinkage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    .line 223
    .local v3, "db":Lnet/tsz/afinal/FinalDb;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downMsg ======="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "res"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, "string":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 318
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "string":Ljava/lang/String;
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, "jObject":Lorg/json/JSONObject;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "method"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 232
    .local v13, "method":Ljava/lang/String;
    const-string v17, "downLinkage"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 233
    new-instance v2, Lorg/json/JSONObject;

    .line 234
    const-string v17, "datalist"

    .line 233
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 234
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 233
    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "datalistJson":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    .line 236
    const-string v17, "linkages"

    .line 235
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 236
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 235
    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 237
    .local v10, "linkagelistJson":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    .line 238
    const-string v17, "linkageDetails"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 237
    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 239
    .local v9, "linkageDetailListJson":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-eqz v17, :cond_2

    .line 240
    const-class v17, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 242
    :cond_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 243
    const-class v17, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 245
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_4

    .line 277
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 279
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 278
    check-cast v14, Lorg/json/JSONObject;

    .line 280
    .local v14, "nObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    .line 281
    .local v8, "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    const-string v17, "body1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody1(Ljava/lang/String;)V

    .line 282
    const-string v17, "body2"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody2(Ljava/lang/String;)V

    .line 283
    const-string v17, "body3"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setBody3(Ljava/lang/String;)V

    .line 284
    const-string v17, "hum1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 285
    const-string v18, "hum"

    .line 284
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum1(Ljava/lang/String;)V

    .line 286
    const-string v17, "hum2"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 287
    const-string v18, "hum"

    .line 286
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setHum2(Ljava/lang/String;)V

    .line 288
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 289
    const-string v17, "isPoint"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setIsPoint(Ljava/lang/String;)V

    .line 290
    const-string v17, "sceneId"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 291
    const-string v17, "lum1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum1(Ljava/lang/String;)V

    .line 292
    const-string v17, "lum2"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum2(Ljava/lang/String;)V

    .line 293
    const-string v17, "lum3"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLum3(Ljava/lang/String;)V

    .line 294
    const-string v17, "mac"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 295
    const-string v17, "pwd"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 296
    const-string v17, "repart"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 298
    const-string v17, "temp1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "temp"

    .line 297
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp1(Ljava/lang/String;)V

    .line 300
    const-string v17, "temp2"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "temp"

    .line 299
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp2(Ljava/lang/String;)V

    .line 302
    const-string v17, "temp3"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "temp"

    .line 301
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp3(Ljava/lang/String;)V

    .line 304
    const-string v17, "temp4"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "temp"

    .line 303
    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTemp4(Ljava/lang/String;)V

    .line 305
    const-string v17, "timer1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 306
    const-string v17, "timer2"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 308
    const-string v17, "timer4"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 309
    const-string v17, "timer5"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 310
    const-string v17, "timer6"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 311
    const-string v17, "timer7"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, v8}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 246
    .end local v8    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    .end local v14    # "nObject":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 247
    .restart local v14    # "nObject":Lorg/json/JSONObject;
    new-instance v11, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    .line 248
    .local v11, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    const-string v17, "addtime"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 249
    const-string v17, "hasBody"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasBody(Ljava/lang/String;)V

    .line 250
    const-string v17, "hasHum"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasHum(Ljava/lang/String;)V

    .line 251
    const-string v17, "hasTemp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTemp(Ljava/lang/String;)V

    .line 252
    const-string v17, "hasLum"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasLum(Ljava/lang/String;)V

    .line 253
    const-string v17, "hasTimer"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 254
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 255
    const-string v17, "linkageNum"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 256
    const-string v17, "sceneId"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 257
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\"isDo\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 258
    const-string v17, "isDo"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setIsDo(Ljava/lang/String;)V

    .line 262
    :goto_3
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\"needPush\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 263
    const-string v17, "needPush"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "pushState":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "uuuuuuuuuuu====pushState"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    if-eqz v15, :cond_5

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 266
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 267
    .local v12, "m":Landroid/os/Message;
    const/16 v17, 0x2b67

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 268
    iput-object v14, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    sget-object v17, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    .end local v12    # "m":Landroid/os/Message;
    :cond_5
    const-string v17, "needPush"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setNeedPush(Ljava/lang/String;)V

    .line 275
    .end local v15    # "pushState":Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v11}, Lnet/tsz/afinal/FinalDb;->saveWithId(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 260
    :cond_6
    const-string v17, "isDo"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setIsDo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 315
    .end local v2    # "datalistJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "linkageDetailListJson":Lorg/json/JSONArray;
    .end local v10    # "linkagelistJson":Lorg/json/JSONArray;
    .end local v11    # "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .end local v13    # "method":Ljava/lang/String;
    .end local v14    # "nObject":Lorg/json/JSONObject;
    .end local v16    # "string":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 316
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 273
    .end local v4    # "exception":Ljava/lang/Exception;
    .restart local v2    # "datalistJson":Lorg/json/JSONObject;
    .restart local v5    # "i":I
    .restart local v6    # "jObject":Lorg/json/JSONObject;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "linkageDetailListJson":Lorg/json/JSONArray;
    .restart local v10    # "linkagelistJson":Lorg/json/JSONArray;
    .restart local v11    # "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .restart local v13    # "method":Ljava/lang/String;
    .restart local v14    # "nObject":Lorg/json/JSONObject;
    .restart local v16    # "string":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v17, "n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setNeedPush(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static downloadDeivce(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minaHandler"    # Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 393
    .local v1, "db":Lnet/tsz/afinal/FinalDb;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "downMsg ======="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v8, "jsonObject":Lorg/json/JSONObject;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "res"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, "string":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 468
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "string":Ljava/lang/String;
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    .local v6, "jObject":Lorg/json/JSONObject;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "method"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, "method":Ljava/lang/String;
    const-string v13, "downDevice"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 403
    new-instance v7, Lorg/json/JSONArray;

    const-string v13, "datalist"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 404
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-eqz v13, :cond_2

    .line 405
    const-class v13, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v13}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 407
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 408
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 409
    .local v10, "nObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;-><init>()V

    .line 411
    .local v2, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceMac"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setMac(Ljava/lang/String;)V

    .line 412
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceName"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setName(Ljava/lang/String;)V

    .line 413
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\"devicePwd\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "devicePwd"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "devicePwd"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "null"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 414
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "devicePwd"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 418
    :goto_2
    const-string v13, "new"

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 419
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 420
    const-string v13, ""

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 425
    const-string v13, "off"

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setShortCutExists(Ljava/lang/String;)V

    .line 427
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceMac"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00:15"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 428
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    .line 432
    :goto_3
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\"deviceType\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceType"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceType"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "null"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 433
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deviceType"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V

    .line 435
    :cond_3
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 436
    .local v11, "phoneMac":Ljava/lang/String;
    const-string v13, ":"

    const-string v14, "-"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 450
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 451
    .local v3, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v3, :cond_4

    .line 452
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->saveDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 407
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 416
    .end local v3    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v11    # "phoneMac":Ljava/lang/String;
    :cond_5
    const-string v13, "nopassword"

    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 465
    .end local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v5    # "i":I
    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "method":Ljava/lang/String;
    .end local v10    # "nObject":Lorg/json/JSONObject;
    .end local v12    # "string":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 466
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 430
    .end local v4    # "exception":Ljava/lang/Exception;
    .restart local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v5    # "i":I
    .restart local v6    # "jObject":Lorg/json/JSONObject;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "method":Ljava/lang/String;
    .restart local v10    # "nObject":Lorg/json/JSONObject;
    .restart local v12    # "string":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x2

    :try_start_1
    invoke-virtual {v2, v13}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setVersion(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static downloadShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 471
    .local v1, "db":Lnet/tsz/afinal/FinalDb;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "downMsg ======="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    .local v8, "jsonObject":Lorg/json/JSONObject;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "res"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "string":Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 537
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 478
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "string":Ljava/lang/String;
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 479
    .local v6, "jObject":Lorg/json/JSONObject;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "method"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, "method":Ljava/lang/String;
    const-string v14, "downShortcutDevice"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 481
    new-instance v7, Lorg/json/JSONArray;

    const-string v14, "datalist"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 482
    .local v7, "jsonArray":Lorg/json/JSONArray;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "short jsonArray.length()==="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-eqz v14, :cond_2

    .line 484
    const-class v14, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v1, v14}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 486
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 487
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 488
    .local v11, "nObject":Lorg/json/JSONObject;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deviceMac"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "mac":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 490
    .local v3, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v3, :cond_3

    .line 486
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 507
    :cond_3
    new-instance v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 509
    .local v2, "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deviceMac"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 510
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deviceName"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 511
    const-string v14, "device"

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 512
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 513
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 514
    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 515
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 516
    const v14, 0x7f0201c9

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 522
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deviceName"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 524
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deviceMac"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v12

    .line 525
    .local v12, "scm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v12, :cond_4

    .line 526
    const-string v14, "on"

    invoke-virtual {v12, v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setShortCutExists(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setName(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 529
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 531
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 534
    .end local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v3    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v5    # "i":I
    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "mac":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "nObject":Lorg/json/JSONObject;
    .end local v12    # "scm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v13    # "string":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 535
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 517
    .end local v4    # "exception":Ljava/lang/Exception;
    .restart local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v3    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v5    # "i":I
    .restart local v6    # "jObject":Lorg/json/JSONObject;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "mac":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "nObject":Lorg/json/JSONObject;
    .restart local v13    # "string":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 518
    const v14, 0x7f0201c6

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_3

    .line 520
    :cond_6
    const v14, 0x7f0201c7

    invoke-virtual {v2, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static sendDownDeviceMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 540
    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "userid":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 543
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "method"

    const-string v5, "downDevice"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v2, "userInfo":Lorg/json/JSONObject;
    const-string v4, "userid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v4, "data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v2    # "userInfo":Lorg/json/JSONObject;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updatata======"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 552
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendDownLinkageMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 570
    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "userid":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 573
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "method"

    const-string v5, "downLinkage"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 575
    .local v2, "userInfo":Lorg/json/JSONObject;
    const-string v4, "userid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v4, "sceneid"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v4, "data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v2    # "userInfo":Lorg/json/JSONObject;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updatata======"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 583
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendDownShortcutMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 555
    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "userid":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 558
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "method"

    const-string v5, "downShortcutDevice"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 560
    .local v2, "userInfo":Lorg/json/JSONObject;
    const-string v4, "userid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v4, "data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v2    # "userInfo":Lorg/json/JSONObject;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updatata======"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 566
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 567
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 30
    :try_start_0
    const-string v14, "userinfo"

    const-string v15, "userid"

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 31
    .local v13, "userid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    .line 32
    .local v4, "db":Lnet/tsz/afinal/FinalDb;
    const-class v14, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v4, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 33
    .local v12, "linkages":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageModel;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 107
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "userid"

    invoke-virtual {v8, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v14, "data"

    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v6, "jObject":Lorg/json/JSONObject;
    const-string v14, "method"

    const-string v15, "uploadLinkage"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v14, "data"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "updatata======"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v14, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 123
    .end local v4    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "linkages":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageModel;>;"
    .end local v13    # "userid":Ljava/lang/String;
    :goto_1
    return-void

    .line 34
    .restart local v4    # "db":Lnet/tsz/afinal/FinalDb;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v12    # "linkages":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageModel;>;"
    .restart local v13    # "userid":Ljava/lang/String;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 35
    .local v11, "linkage":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v3, "cmObject":Lorg/json/JSONObject;
    const-string v15, "linkageNum"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v15, "addtime"

    .line 38
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getAddtime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 37
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v15, "hasTimer"

    .line 40
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTimer()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 39
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v15, "hasTemp"

    .line 42
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasTemp()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 41
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v15, "hasHum"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasHum()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v15, "hasLum"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasLum()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v15, "hasBody"

    .line 46
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getHasBody()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 45
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v15, "isDo"

    .line 48
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getIsDo()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 47
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v15, "needPush"

    .line 50
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 49
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v1, "cJsonArray":Lorg/json/JSONArray;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "linkageId=\'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 54
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 56
    .local v10, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 57
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 58
    .local v9, "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v2, "cJsonObject":Lorg/json/JSONObject;
    const-string v15, "mac"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v15, "pwd"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v15, "temp1"

    .line 62
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_temp"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 61
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v15, "temp2"

    .line 64
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_temp"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 63
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v15, "temp3"

    .line 66
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_temp"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 65
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v15, "temp4"

    .line 68
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_temp"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v15, "hum1"

    .line 70
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_hum"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 69
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v15, "hum2"

    .line 72
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v16

    const-string v17, "up_hum"

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 71
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v15, "lum1"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v15, "lum2"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v15, "lum3"

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum3()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v15, "body1"

    .line 77
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 76
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v15, "body2"

    .line 79
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 78
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v15, "body3"

    .line 81
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 80
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v15, "repart"

    .line 83
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getRepart()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 82
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v15, "timer1"

    .line 85
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v15, "timer2"

    .line 87
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 86
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v15, "timer3"

    .line 89
    const-string v16, ""

    .line 88
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v15, "timer4"

    .line 91
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 90
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v15, "timer5"

    .line 93
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v15, "timer6"

    .line 95
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v15, "timer7"

    .line 97
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 96
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v15, "isPoint"

    .line 99
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getIsPoint()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    .end local v2    # "cJsonObject":Lorg/json/JSONObject;
    .end local v9    # "ldm":Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    :cond_1
    const-string v15, "details"

    invoke-virtual {v3, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v15, "sceneid"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getSceneId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 120
    .end local v1    # "cJsonArray":Lorg/json/JSONArray;
    .end local v3    # "cmObject":Lorg/json/JSONObject;
    .end local v4    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v11    # "linkage":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .end local v12    # "linkages":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageModel;>;"
    .end local v13    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 121
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static uploadDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 321
    const-string v9, "userinfo"

    const-string v10, "userid"

    invoke-static {p0, v9, v10}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "userid":Ljava/lang/String;
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 323
    .local v1, "db":Lnet/tsz/afinal/FinalDb;
    const-class v9, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v9}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 324
    .local v3, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 325
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 338
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 340
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "userId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v9, "deviceInfo"

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v5, "jObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "method"

    const-string v10, "uploadDevice"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v9, "data"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "updatata======"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 355
    return-void

    .line 325
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 326
    .local v2, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 328
    .local v0, "cmObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "deviceMac"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v10, "deviceName"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v10, "deviceType"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v10, "devicePwd"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 335
    :goto_3
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 342
    .end local v0    # "cmObject":Lorg/json/JSONObject;
    .end local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 343
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 350
    .end local v4    # "exception":Ljava/lang/Exception;
    .restart local v5    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 332
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "cmObject":Lorg/json/JSONObject;
    .restart local v2    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :catch_2
    move-exception v10

    goto :goto_3
.end method

.method public static uploadShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mr"    # Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;

    .prologue
    .line 357
    const-string v8, "userinfo"

    const-string v9, "userid"

    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, "userid":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 359
    .local v2, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "======deviceModels.size========="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 361
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 372
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "userId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v8, "deviceInfo"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JsonObject========="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 383
    .local v4, "jObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "method"

    const-string v9, "uploadShortcutDevice"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v8, "data"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updatata======"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 390
    return-void

    .line 361
    .end local v4    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 362
    .local v1, "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "======deviceModel.getDeviceMa========="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 365
    .local v0, "cmObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "deviceMac"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v9, "deviceName"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 369
    :goto_3
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 376
    .end local v0    # "cmObject":Lorg/json/JSONObject;
    .end local v1    # "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 377
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 385
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v4    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    goto :goto_2

    .line 367
    .end local v4    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "cmObject":Lorg/json/JSONObject;
    .restart local v1    # "deviceModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :catch_2
    move-exception v9

    goto :goto_3
.end method
