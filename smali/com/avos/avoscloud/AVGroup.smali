.class public Lcom/avos/avoscloud/AVGroup;
.super Ljava/lang/Object;
.source "AVGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;


# instance fields
.field roomId:Ljava/lang/String;

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/SessionManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "selfId"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVGroup;->session:Lcom/avos/avoscloud/SessionManager;

    .line 22
    return-void
.end method

.method protected static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;
    .locals 1
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "selfId"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/avos/avoscloud/AVGroup;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "exceptionIntent":Landroid/content/Intent;
    const-string v2, "com.avoscloud.group.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v1, "extra":Landroid/os/Bundle;
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "AV_GROUP_INTENT_STATUS_KEY"

    const/16 v3, 0x7538

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v2, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private validatePeerIds(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "peersId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    const-string v2, "empty peersId Exception in group"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 105
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "empty peersId Exception in group"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 116
    :goto_0
    return v1

    .line 109
    :cond_1
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    .line 151
    .local v0, "query":Lcom/avos/avoscloud/AVHistoryMessageQuery;
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->setGroupId(Ljava/lang/String;)V

    .line 152
    return-object v0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 82
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method public join()V
    .locals 4

    .prologue
    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .local v1, "roomIdInList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.group.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v2, "AV_GROUP_INTENT_SESSIONID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string v2, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_0
    const-string v2, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v3, 0x271a

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method public kickMember(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 70
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVGroup;->sendMessage(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isTransient"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v0, p1, p2}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVGroup;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 52
    return-void
.end method
