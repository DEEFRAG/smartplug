.class public Lcom/avos/avoscloud/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# static fields
.field static cachedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field static final peerQueryListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field static final signatureFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SignatureFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allPeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onlinePeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field signatureFactory:Lcom/avos/avoscloud/SignatureFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "selfId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "onlinePeersIdString":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AV_SESSION_PREFERENCE_PEERIDS_KEY"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "watchingPeerIds":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    .line 44
    if-eqz v1, :cond_1

    .line 45
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/SignatureFactory;

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;
    .locals 2
    .param p0, "selfId"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lcom/avos/avoscloud/SessionManager;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/SessionManager;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "sm":Lcom/avos/avoscloud/SessionManager;
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0    # "sm":Lcom/avos/avoscloud/SessionManager;
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/SessionManager;

    return-object v1
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, "exceptionIntent":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v1, "extra":Landroid/os/Bundle;
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 357
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    const/16 v3, 0x4e28

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 362
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method private validateNullablePeerIds(Ljava/util/List;)Z
    .locals 2
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
    .line 367
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 371
    const/4 v1, 0x0

    goto :goto_0
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

    .line 378
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    const-string v2, "empty peersId Exception"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 380
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "empty peersId Exception"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 391
    :goto_0
    return v1

    .line 384
    :cond_1
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    const/4 v1, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 387
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    return-void
.end method

.method public getAllPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "allPeersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    return-object v0
.end method

.method public getOnlinePeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "onlineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->isSessionOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "selfId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 12
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
    .line 71
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validateNullablePeerIds(Ljava/util/List;)Z

    move-result v6

    .line 72
    .local v6, "peersIdValidation":Z
    if-nez v6, :cond_0

    .line 128
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 77
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 80
    new-instance v0, Ljava/lang/Exception;

    const-string v8, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "too many peers to watch.Maximum is 100"

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "PARAM_SESSION_PEERIDS"

    invoke-interface {v5, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v9

    const-string v10, "open"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "packetString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 99
    .local v3, "packetLength":I
    :try_start_0
    const-string v8, "utf-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v3, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open packet lenght is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 106
    :cond_2
    const/16 v8, 0x1388

    if-le v3, v8, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v1, "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 111
    .local v7, "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 114
    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    goto/16 :goto_0

    .line 100
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Your peerId is too long for session."

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v9, Lcom/avos/avoscloud/PushService;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v2, "i":Landroid/content/Intent;
    const-string v8, "com.avoscloud.session.action"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v8, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v8, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v9, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v8, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v9, 0x2714

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/avos/avoscloud/OnlinePeerQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v1

    .line 190
    .local v1, "peersIdValidation":Z
    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string v2, "msg is empty"

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "can\'t send empty msg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/SessionManager;->sendMessage(Ljava/lang/String;Ljava/util/List;Z)V

    .line 159
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p3, "isTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 174
    return-void
.end method

.method protected setAllPeers(Ljava/util/List;)V
    .locals 1
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
    .line 319
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 321
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 323
    :cond_0
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 3
    .param p1, "timeoutSecs"    # I

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    return-void
.end method

.method public setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 1
    .param p1, "signatureFactory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/PushService;->setSignatureFactory(Ljava/lang/String;Lcom/avos/avoscloud/SignatureFactory;)V

    .line 344
    :cond_0
    return-void
.end method

.method public unwatchPeers(Ljava/util/List;)V
    .locals 4
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
    .line 274
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v1

    .line 275
    .local v1, "peersIdValidation":Z
    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v3, 0x2712

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 284
    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public watchPeers(Ljava/util/List;)Z
    .locals 13
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
    .line 213
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v6

    .line 214
    .local v6, "peersIdValidation":Z
    if-nez v6, :cond_0

    .line 215
    const/4 v10, 0x0

    .line 268
    :goto_0
    return v10

    .line 217
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 218
    .local v9, "tempPeersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-interface {v9, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    .line 221
    new-instance v0, Ljava/lang/Exception;

    const-string v10, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "too many peers to watch.Maximum is 100"

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 225
    const/4 v10, 0x0

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 229
    .local v7, "sig":Lcom/avos/avoscloud/Signature;
    const-string v10, "PARAM_SESSION_PEERIDS"

    invoke-interface {v5, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v11

    const-string v12, "add"

    invoke-static {v10, v11, v12, v7}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "packetString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 239
    .local v3, "packetLength":I
    :try_start_0
    const-string v10, "utf-8"

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v3, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 245
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "watch packet lenght is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 247
    :cond_2
    const/16 v10, 0x1388

    if-le v3, v10, :cond_5

    .line 249
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 250
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v1, "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v8, "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-interface {p1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {p1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 240
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_1

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 257
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v10, "Your peerId is too long for session."

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 259
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v11, Lcom/avos/avoscloud/PushService;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v2, "i":Landroid/content/Intent;
    const-string v10, "com.avoscloud.session.action"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v10, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v10, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v11, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v10, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v11, 0x2711

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
