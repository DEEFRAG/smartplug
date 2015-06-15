.class public Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;
.super Lcom/baidu/frontia/api/FrontiaPushMessageReceiver;
.source "MyPushMessageReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/baidu/frontia/api/FrontiaPushMessageReceiver;-><init>()V

    return-void
.end method

.method private saveBaiduInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v1, "baiduinfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "channelId"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method private updateContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 297
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "channelId"    # Ljava/lang/String;
    .param p6, "requestId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBind errorCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    const-string v3, " requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "responseString":Ljava/lang/String;
    const-string v2, "----"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "~~~~----"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "---"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "baiduinfo"

    const-string v13, "userId"

    invoke-static {p1, v12, v13}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "----"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "baiduinfo"

    const-string v13, "channelId"

    invoke-static {p1, v12, v13}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "---"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "baiduinfo"

    const-string v13, "isBaiduUploaded"

    invoke-static {p1, v12, v13}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, p1, v0, v1}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->saveBaiduInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "baiduinfo"

    const-string v3, "isBaiduUploaded"

    invoke-static {p1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v2, ":"

    const-string v3, "-"

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save mac is ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveBaiduPush:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "_"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "_android"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "msg":Ljava/lang/String;
    move-object/from16 v6, p4

    .line 91
    .local v6, "fUserId":Ljava/lang/String;
    move-object/from16 v7, p5

    .line 92
    .local v7, "fChannelId":Ljava/lang/String;
    move-object v4, p1

    .line 95
    .local v4, "fContext":Landroid/content/Context;
    :try_start_0
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v2, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;-><init>(Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v3, 0x0

    .line 95
    invoke-direct {v9, v2, v3}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    .line 104
    .local v9, "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v4    # "fContext":Landroid/content/Context;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "fUserId":Ljava/lang/String;
    .end local v7    # "fChannelId":Ljava/lang/String;
    .end local v9    # "minaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .end local v10    # "phoneMac":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 115
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->setBind(Landroid/content/Context;Z)V

    .line 119
    :cond_1
    return-void

    .line 106
    .restart local v4    # "fContext":Landroid/content/Context;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "fUserId":Ljava/lang/String;
    .restart local v7    # "fChannelId":Ljava/lang/String;
    .restart local v10    # "phoneMac":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 107
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p5, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p3, "sucessTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "failTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDelTags errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, " sucessTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    const-string v2, " requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "responseString":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p4, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onListTags errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "responseString":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "customContentString"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Passthrough message message=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 135
    const-string v6, "\" customContentString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "messageString":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "customJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .local v1, "customJson":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 144
    .local v4, "myvalue":Ljava/lang/String;
    :try_start_1
    const-string v5, "mykey"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const-string v5, "mykey"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v4    # "myvalue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void

    .line 147
    .restart local v0    # "customJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v4    # "myvalue":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v0    # "customJson":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "customContentString"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notice click title=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" description=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 173
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" customContent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "notifyString":Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "customJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .local v1, "customJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 182
    .local v3, "myvalue":Ljava/lang/String;
    :try_start_1
    const-string v5, "mykey"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    const-string v5, "mykey"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v3    # "myvalue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    return-void

    .line 185
    .restart local v0    # "customJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v3    # "myvalue":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v0    # "customJson":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p5, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "sucessTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "failTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetTags errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string v2, " sucessTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string v2, " requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "responseString":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onUnbind(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUnbind errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string v2, " requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "responseString":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->setBind(Landroid/content/Context;Z)V

    .line 291
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->updateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    return-void
.end method
