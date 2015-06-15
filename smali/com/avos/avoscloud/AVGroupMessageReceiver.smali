.class public abstract Lcom/avos/avoscloud/AVGroupMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVGroupMessageReceiver.java"

# interfaces
.implements Lcom/avos/avoscloud/GroupListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p3, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupGeneString"    # Ljava/lang/String;
    .param p3, "group"    # Lcom/avos/avoscloud/Group;
    .param p4, "messageId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "msgDataString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 98
    .local v2, "msgData":Lcom/avos/avoscloud/AVMessage;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :try_start_0
    const-class v4, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVMessage;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p3, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V
.end method

.method public abstract onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
.end method

.method public abstract onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
.end method

.method public abstract onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
.end method

.method public abstract onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    sget-object v18, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v18, :cond_0

    sget-object v18, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "AV_APPLICATION_ID"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "com.avoscloud.group.action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 23
    .local v8, "groupGeneString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 24
    .local v17, "statusCode":I
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 25
    const-class v18, Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 26
    .local v7, "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "sessionId"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 27
    .local v16, "sessionId":Ljava/lang/String;
    const-string v18, "groupId"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 28
    .local v9, "groupId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v15

    .line 29
    .local v15, "session":Lcom/avos/avoscloud/SessionManager;
    invoke-virtual {v15, v9}, Lcom/avos/avoscloud/SessionManager;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVGroup;

    .line 30
    .local v6, "group":Lcom/avos/avoscloud/AVGroup;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "data":Ljava/lang/String;
    packed-switch v17, :pswitch_data_0

    .line 89
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "group":Lcom/avos/avoscloud/AVGroup;
    .end local v7    # "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "groupGeneString":Ljava/lang/String;
    .end local v9    # "groupId":Ljava/lang/String;
    .end local v15    # "session":Lcom/avos/avoscloud/SessionManager;
    .end local v16    # "sessionId":Ljava/lang/String;
    .end local v17    # "statusCode":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 35
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v6    # "group":Lcom/avos/avoscloud/AVGroup;
    .restart local v7    # "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "groupGeneString":Ljava/lang/String;
    .restart local v9    # "groupId":Ljava/lang/String;
    .restart local v15    # "session":Lcom/avos/avoscloud/SessionManager;
    .restart local v16    # "sessionId":Ljava/lang/String;
    .restart local v17    # "statusCode":I
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 82
    const-string v18, "on Group Message Receiver"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 38
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v13

    .line 46
    .local v13, "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 49
    .end local v13    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v13

    .line 51
    .restart local v13    # "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 54
    .end local v13    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_6
    move-object v12, v4

    .line 55
    .local v12, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v12}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v13

    .line 56
    .restart local v13    # "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 59
    .end local v12    # "messageId":Ljava/lang/String;
    .end local v13    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto :goto_0

    .line 62
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;

    move-result-object v14

    .line 63
    .local v14, "rejectionInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v14, :cond_1

    const/16 v18, 0x0

    :goto_1
    check-cast v18, Ljava/lang/String;

    check-cast v18, Ljava/lang/String;

    if-nez v14, :cond_2

    const/16 v19, 0x0

    :goto_2
    check-cast v19, Ljava/util/List;

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_1
    const-string v18, "groupOperation"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    :cond_2
    const-string v19, "GROUP_PARAM_FROMPEERID"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_2

    .line 72
    .end local v14    # "rejectionInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_9
    const-class v18, Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 73
    .local v10, "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v10}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0

    .line 76
    .end local v10    # "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    const-class v18, Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 77
    .local v11, "leftPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v11}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public abstract onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
