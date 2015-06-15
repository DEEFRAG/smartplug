.class public Lcom/avos/avoscloud/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final INSTALLATION_SAVED:Ljava/lang/String; = "INSTALLATION_SAVED"

.field private static final LOGTAG:Ljava/lang/String;

.field private static beforePushManagerConnecting:Ljava/lang/Runnable;

.field private static connecting:Ljava/lang/Object;

.field private static volatile isStarted:Z

.field static pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private static sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;


# instance fields
.field connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVPushServiceAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/avos/avospush/push/AVPushConnectionManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/PushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PushService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/avos/avoscloud/PushService;->initConnectionManager()V

    return-void
.end method

.method private initConnectionManager()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->initConnection()V

    .line 485
    return-void
.end method

.method protected static isSessionOpen(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sessionSelfId"    # Ljava/lang/String;

    .prologue
    .line 570
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 571
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v1, p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 572
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->isOpen()Z

    move-result v1

    .line 576
    .end local v0    # "session":Lcom/avos/avoscloud/AVSession;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V
    .locals 0
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->close()V

    .line 269
    return-void
.end method

.method private processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v1, Ljava/util/List;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 275
    .local v0, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V

    .line 277
    return-void
.end method

.method private processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 526
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 527
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 528
    .local v1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/avos/avoscloud/AVSession;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 529
    return-void
.end method

.method private processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V
    .locals 0
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVSession;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 288
    return-void
.end method

.method private processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "timeout":I
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->setMessageTimeout(I)V

    .line 284
    return-void
.end method

.method private processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 538
    const-class v1, Ljava/util/List;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 539
    .local v0, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->unwatchPeers(Ljava/util/List;)V

    .line 540
    return-void
.end method

.method private processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 532
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 533
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 534
    .local v1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z

    .line 535
    return-void
.end method

.method static declared-synchronized sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2
    .param p0, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 478
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    monitor-exit v1

    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public static setNotificationIcon(I)V
    .locals 1
    .param p0, "icon"    # I

    .prologue
    .line 422
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->setNotificationIcon(I)V

    .line 423
    return-void
.end method

.method protected static setSignatureFactory(Ljava/lang/String;Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 3
    .param p0, "peerId"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 504
    sget-boolean v1, Lcom/avos/avoscloud/PushService;->isStarted:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 505
    new-instance v1, Lcom/avos/avoscloud/PushService$7;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/PushService$7;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/SignatureFactory;)V

    sput-object v1, Lcom/avos/avoscloud/PushService;->beforePushManagerConnecting:Ljava/lang/Runnable;

    .line 515
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v1, p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 518
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSession;->setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    goto :goto_0
.end method

.method private static declared-synchronized startService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 354
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    move-object v0, p0

    .line 355
    .local v0, "finalContext":Landroid/content/Context;
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/avos/avoscloud/PushService$4;

    invoke-direct {v3, v0, p1}, Lcom/avos/avoscloud/PushService$4;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit v2

    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 326
    :cond_0
    if-nez p0, :cond_1

    .line 327
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "No network available now"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 344
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <service android:name=\"com.avos.avoscloud.PushService\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p2}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    move-object v0, p1

    .line 385
    .local v0, "finalChannel":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/PushService$5;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/PushService$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 404
    :goto_0
    if-eqz p2, :cond_0

    .line 405
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit v2

    return-void

    .line 400
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    const-string v3, "channels"

    invoke-virtual {v1, v3, v0}, Lcom/avos/avoscloud/AVInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->saveEventually()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    .end local v0    # "finalChannel":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized triggerReconnect()V
    .locals 2

    .prologue
    .line 488
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->forceTriggerReconnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit v1

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized unbindSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "peerId"    # Ljava/lang/String;

    .prologue
    .line 492
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :cond_0
    monitor-exit v1

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 451
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    if-nez p1, :cond_0

    .line 475
    :goto_0
    monitor-exit v2

    return-void

    .line 454
    :cond_0
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v1, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->removeDefaultPushCallback(Ljava/lang/String;)V

    .line 455
    move-object v0, p1

    .line 456
    .local v0, "finalChannel":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/PushService$6;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/PushService$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    .end local v0    # "finalChannel":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 472
    .restart local v0    # "finalChannel":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    const-string v3, "channels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 473
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->saveEventually()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On bind"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Create"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 88
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Init push mananger"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/push/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    .line 94
    sget-object v0, Lcom/avos/avoscloud/PushService;->beforePushManagerConnecting:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/avos/avoscloud/PushService;->beforePushManagerConnecting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/PushService;->beforePushManagerConnecting:Ljava/lang/Runnable;

    .line 103
    :cond_0
    :goto_0
    new-instance v0, Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$1;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVConnectivityReceiver;-><init>(Lcom/avos/avospush/push/AVConnectivityListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    new-instance v0, Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$2;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVShutdownReceiver;-><init>(Lcom/avos/avospush/push/AVShutdownListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 130
    return-void

    .line 100
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->hookPingReceiver()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 295
    sget-object v1, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v2, "On Destroy"

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-eqz v1, :cond_0

    .line 297
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushConnectionManager;->stop()V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v1, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v1, p0, Lcom/avos/avoscloud/PushService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 302
    const/4 v1, 0x0

    sput-boolean v1, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 305
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 308
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 309
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.avoscloud.session.action"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 138
    sget-object v11, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v12, "On Session command"

    invoke-static {v11, v12}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "sessionSelfId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_OPERATION_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, "operation":I
    const/4 v0, 0x0

    .line 143
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 144
    .local v4, "msg":Lcom/avos/avoscloud/AVMessage;
    const/16 v11, 0x2710

    if-eq v5, v11, :cond_4

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    if-eqz v8, :cond_5

    .line 150
    sget-object v11, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v11, v8}, Lcom/avos/avospush/push/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v6

    .line 151
    .local v6, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v6, :cond_0

    .line 152
    packed-switch v5, :pswitch_data_0

    .line 181
    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    .end local v5    # "operation":I
    .end local v6    # "session":Lcom/avos/avoscloud/AVSession;
    .end local v8    # "sessionSelfId":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.avoscloud.group.action"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_GROUP_INTENT_GROUP_ID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "groupId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_GROUP_INTENT_SESSIONID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_GROUP_INTENT_OPERATION_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 187
    .restart local v5    # "operation":I
    if-eqz v7, :cond_6

    .line 188
    sget-object v11, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-virtual {v11, v7}, Lcom/avos/avospush/push/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v6

    .line 189
    .restart local v6    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v6, :cond_2

    .line 190
    invoke-virtual {v6, v2}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    .line 191
    .local v1, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "targetPeerIdsString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 194
    .local v9, "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 195
    const-class v11, Ljava/util/List;

    invoke-static {v10, v11}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/List;

    .line 197
    .restart local v9    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVMessage;

    .line 199
    .local v3, "message":Lcom/avos/avoscloud/AVMessage;
    packed-switch v5, :pswitch_data_1

    .line 223
    .end local v1    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    .end local v5    # "operation":I
    .end local v6    # "session":Lcom/avos/avoscloud/AVSession;
    .end local v7    # "sessionId":Ljava/lang/String;
    .end local v9    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "targetPeerIdsString":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 224
    iget-object v11, p0, Lcom/avos/avoscloud/PushService;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/avos/avoscloud/PushService$3;

    invoke-direct {v12, p0}, Lcom/avos/avoscloud/PushService$3;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 264
    :cond_3
    const/4 v11, 0x3

    return v11

    .line 147
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    .restart local v5    # "operation":I
    .restart local v8    # "sessionSelfId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    check-cast v4, Lcom/avos/avoscloud/AVMessage;

    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    goto/16 :goto_0

    .line 154
    .restart local v6    # "session":Lcom/avos/avoscloud/AVSession;
    :pswitch_0
    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PushService;->processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :pswitch_1
    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PushService;->processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :pswitch_2
    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PushService;->processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :pswitch_3
    invoke-direct {p0, v6, v4}, Lcom/avos/avoscloud/PushService;->processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_1

    .line 166
    :pswitch_4
    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PushService;->processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/avos/avoscloud/PushService;->processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V

    goto/16 :goto_1

    .line 172
    :pswitch_6
    invoke-direct {p0, v6, v0}, Lcom/avos/avoscloud/PushService;->processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    .end local v6    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_5
    const-string v11, "Session with null selfId is forbidden"

    invoke-static {v11}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    .end local v8    # "sessionSelfId":Ljava/lang/String;
    .restart local v1    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .restart local v2    # "groupId":Ljava/lang/String;
    .restart local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    .restart local v6    # "session":Lcom/avos/avoscloud/AVSession;
    .restart local v7    # "sessionId":Ljava/lang/String;
    .restart local v9    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "targetPeerIdsString":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->join()V

    goto :goto_2

    .line 204
    :pswitch_8
    invoke-virtual {v1, v9}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->inviteMember(Ljava/util/List;)V

    goto :goto_2

    .line 207
    :pswitch_9
    invoke-virtual {v1, v9}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->kickMember(Ljava/util/List;)V

    goto :goto_2

    .line 210
    :pswitch_a
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->quit()V

    goto :goto_2

    .line 213
    :pswitch_b
    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_2

    .line 218
    .end local v1    # "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    .end local v3    # "message":Lcom/avos/avoscloud/AVMessage;
    .end local v6    # "session":Lcom/avos/avoscloud/AVSession;
    .end local v9    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "targetPeerIdsString":Ljava/lang/String;
    :cond_6
    const-string v11, "Session with null selfId is forbidden"

    invoke-static {v11}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x271a
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 8
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    const-string v3, "try to restart service on task Removed"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 553
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .local v1, "restartServiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 559
    .local v2, "restartServicePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 561
    .local v0, "alarmService":Landroid/app/AlarmManager;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 564
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 565
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 567
    :cond_1
    return-void
.end method
