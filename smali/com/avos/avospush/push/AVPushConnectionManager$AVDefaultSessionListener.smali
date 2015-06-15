.class public Lcom/avos/avospush/push/AVPushConnectionManager$AVDefaultSessionListener;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/push/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVDefaultSessionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 715
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 718
    :cond_1
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.session.action"

    const/16 v2, 0x4e28

    invoke-static {v0, v1, p2, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 720
    return-void
.end method

.method public onMessage(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .param p2, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 668
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e23

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 673
    return-void
.end method

.method public onMessageFailure(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .param p2, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 686
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e25

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 691
    return-void
.end method

.method public onMessageSent(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .param p2, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 677
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e24

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 682
    return-void
.end method

.method public onSessionOpen(Lcom/avos/avoscloud/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;

    .prologue
    .line 643
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x4e20

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 648
    return-void
.end method

.method public onSessionPaused(Lcom/avos/avoscloud/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;

    .prologue
    .line 652
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x4e21

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 654
    return-void
.end method

.method public onSessionResumed(Lcom/avos/avoscloud/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;

    .prologue
    .line 658
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x4e22

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 660
    return-void
.end method

.method public onStatusOffline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e27

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 711
    return-void
.end method

.method public onStatusOnline(Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Lcom/avos/avoscloud/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e26

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 701
    return-void
.end method
