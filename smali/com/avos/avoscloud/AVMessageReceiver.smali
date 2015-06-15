.class public abstract Lcom/avos/avoscloud/AVMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/avos/avoscloud/Session;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "msgDataString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 120
    .local v2, "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    :try_start_0
    const-class v4, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVMessage;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/avos/avoscloud/Session;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "removeAfterRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 97
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "watchingIdString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 103
    .local v2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 105
    :try_start_0
    const-class v4, Ljava/util/List;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_1
    return-object v2

    .line 97
    .end local v2    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "watchingIdString":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 106
    .restart local v2    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "watchingIdString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
.end method

.method public abstract onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_APPLICATION_ID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "com.avoscloud.session.action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 19
    .local v9, "statusCode":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "selfId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "data":Ljava/lang/String;
    invoke-static {v6}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v7

    .line 23
    .local v7, "session":Lcom/avos/avoscloud/SessionManager;
    packed-switch v9, :pswitch_data_0

    .line 93
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "selfId":Ljava/lang/String;
    .end local v7    # "session":Lcom/avos/avoscloud/SessionManager;
    .end local v9    # "statusCode":I
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v6    # "selfId":Ljava/lang/String;
    .restart local v7    # "session":Lcom/avos/avoscloud/SessionManager;
    .restart local v9    # "statusCode":I
    :pswitch_0
    :try_start_0
    const-string v10, "AV_SESSION_INTENT_SELFID_KEY"

    const/4 v11, 0x0

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 28
    .local v5, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 29
    iget-object v10, v7, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {p0, p1, v7}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v5    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 89
    const-string v10, "on Message Receiver"

    invoke-static {v10, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v10, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->clear()V

    .line 35
    iget-object v10, v7, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 36
    invoke-virtual {p0, p1, v7}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p0, p1, v7}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-direct {p0, p1, v7, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v4

    .line 43
    .local v4, "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {p0, p1, v7, v4}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 48
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_4
    invoke-direct {p0, p1, v7, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v4

    .line 49
    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {p0, p1, v7, v4}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 54
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_5
    invoke-direct {p0, p1, v7, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v4

    .line 55
    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {p0, p1, v7, v4}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 60
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_6
    const/4 v10, 0x1

    invoke-direct {p0, p1, v7, v0, v10}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 61
    .restart local v5    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {p0, p1, v7, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto :goto_0

    .line 66
    .end local v5    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    const/4 v10, 0x1

    invoke-direct {p0, p1, v7, v0, v10}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 67
    .restart local v5    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {p0, p1, v7, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto :goto_0

    .line 72
    .end local v5    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 75
    .local v2, "error":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v7, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v2    # "error":Ljava/lang/Throwable;
    :pswitch_9
    const-class v10, Ljava/util/List;

    invoke-static {v0, v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    .local v8, "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    if-eqz v10, :cond_0

    .line 80
    sget-object v10, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/OnlinePeerQueryListener;

    .line 81
    .local v3, "l":Lcom/avos/avoscloud/OnlinePeerQueryListener;
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v3, v8}, Lcom/avos/avoscloud/OnlinePeerQueryListener;->onResults(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x4e20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public abstract onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
