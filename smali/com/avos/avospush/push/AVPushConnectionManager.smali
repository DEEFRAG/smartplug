.class public Lcom/avos/avospush/push/AVPushConnectionManager;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/push/AVPushConnectionManager$AVDefaultSessionListener;,
        Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;,
        Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AVPushConnectionManager"

.field public static final PUSH_INTENT_KEY:Ljava/lang/String; = "com.avoscloud.push"

.field private static final PUSH_MESSAGE_DEPOT:Ljava/lang/String; = "com.avos.push.message"

.field private static final THREE_MINUTES:J = 0x2bf20L

.field private static instance:Lcom/avos/avospush/push/AVPushConnectionManager;

.field private static final peerIdEnabledSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field private volatile lastPongTimestamps:J

.field private pingAlarmIntent:Landroid/content/Intent;

.field private pingAlarmPendingIntent:Landroid/app/PendingIntent;

.field pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

.field private final pushRouter:Lcom/avos/avospush/push/AVPushRouter;

.field private final pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

.field private final pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->random:Ljava/util/Random;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->instance:Lcom/avos/avospush/push/AVPushConnectionManager;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pushServiceAppManager"    # Lcom/avos/avospush/push/AVPushServiceAppManager;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "installationId"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->lastPongTimestamps:J

    .line 90
    new-instance v0, Lcom/avos/avospush/push/AVPushConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/avos/avospush/push/AVPushConnectionManager$1;-><init>(Lcom/avos/avospush/push/AVPushConnectionManager;)V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    .line 99
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 102
    new-instance v0, Lcom/avos/avospush/push/AVPushRouter;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouterListener:Lcom/avos/avospush/push/AVPushRouterListener;

    invoke-direct {v0, p1, p4, v1}, Lcom/avos/avospush/push/AVPushRouter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avospush/push/AVPushRouterListener;)V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    .line 104
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    const-string v1, "com.avos.push.message"

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 106
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->initAlarmReciever()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avospush/push/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avospush/push/AVPushConnectionManager;)Lcom/avos/avospush/push/AVPushRouter;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushConnectionManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avospush/push/AVPushConnectionManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/avos/avospush/push/AVPushConnectionManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushConnectionManager;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->lastPongTimestamps:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/avos/avospush/push/AVPushConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushConnectionManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendPing()V

    return-void
.end method

.method private buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 476
    .local v0, "updateIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 477
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_0
    const-string v1, "com.avoscloud.push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v1, "com.avos.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "com.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "com.parse.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v1, "com.avos.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "com.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v1, "com.parse.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    return-object v0
.end method

.method private declared-synchronized createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "installationId"    # Ljava/lang/String;
    .param p3, "pushServer"    # Ljava/lang/String;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    :cond_0
    new-instance v1, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;-><init>(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    .line 182
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, p1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->setAppId(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, p2}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->setInstallationId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "AVPushConnectionManager"

    const-string v2, "About to connect to server."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 192
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 194
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Create socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string v0, "action"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 397
    iget-object v4, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 400
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 401
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 404
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, "Notification"

    goto :goto_1
.end method

.method private getChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v0, "_channel"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v2, ""

    .line 547
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 548
    .local v1, "object":Lorg/json/JSONObject;
    const-string v3, "_expiration_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 554
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 558
    :goto_1
    return-object v0

    .line 557
    :cond_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 558
    .local v0, "date":Ljava/util/Date;
    goto :goto_1

    .line 549
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/push/AVPushConnectionManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pushServiceAppManager"    # Lcom/avos/avospush/push/AVPushServiceAppManager;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "installationId"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v1, Lcom/avos/avospush/push/AVPushConnectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->instance:Lcom/avos/avospush/push/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avos/avospush/push/AVPushConnectionManager;-><init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->instance:Lcom/avos/avospush/push/AVPushConnectionManager;

    .line 116
    :cond_0
    sget-object v0, Lcom/avos/avospush/push/AVPushConnectionManager;->instance:Lcom/avos/avospush/push/AVPushConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 537
    const-class v3, Ljava/util/HashMap;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 538
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-object v2

    .line 540
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "action":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, "sound"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 376
    const-string v5, "alert"

    invoke-direct {p0, p1, v5}, Lcom/avos/avospush/push/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 391
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 380
    .restart local v2    # "text":Ljava/lang/String;
    :cond_0
    const-class v5, Ljava/util/HashMap;

    invoke-static {p1, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 381
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v2, v4

    goto :goto_0

    .line 383
    :cond_2
    const-string v5, "data"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 384
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v2, v4

    .line 385
    goto :goto_0

    .line 387
    :cond_4
    const-string v5, "message"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 389
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 391
    goto :goto_0
.end method

.method private getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 435
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 424
    .restart local v2    # "title":Ljava/lang/String;
    :cond_0
    const-class v4, Ljava/util/HashMap;

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 425
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 427
    :cond_2
    const-string v4, "data"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 428
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 431
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 432
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 433
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 435
    :cond_5
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initAlarmReciever()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const-wide/32 v4, 0x2bf20

    const/4 v1, 0x0

    .line 592
    new-instance v2, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    invoke-direct {v2, p0}, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;-><init>(Lcom/avos/avospush/push/AVPushConnectionManager;)V

    iput-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    .line 593
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    .line 594
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-static {v2, v1, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 597
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-class v7, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 599
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 600
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 602
    return-void
.end method

.method private processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 563
    :try_start_0
    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "channel":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v4, v1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 565
    :cond_0
    move-object v1, p1

    .line 568
    :cond_1
    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 569
    .local v3, "expiration":Ljava/util/Date;
    if-eqz v3, :cond_3

    .line 570
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 571
    const-string v4, "AVPushConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message expired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/util/Date;
    :cond_2
    :goto_0
    return-void

    .line 576
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "expiration":Ljava/util/Date;
    :cond_3
    iget-object v4, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v4, p3}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 577
    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 579
    invoke-direct {p0, v1, p2, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AVPushConnectionManager"

    const-string v5, "Process notification failed."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 581
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "expiration":Ljava/util/Date;
    :cond_4
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avospush/push/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 492
    .local v0, "updateIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "AVPushConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    const-string v1, "AVPushConnectionManager"

    const-string v2, "sent broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 441
    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v9, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Do default callback found, did you forget to invoke setDefaultPushCallback?"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 446
    :cond_0
    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 447
    .local v3, "lastIndex":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 451
    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v9}, Lcom/avos/avospush/push/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 452
    .local v7, "resultIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-direct {v1, v9, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-static {v9, v10, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 455
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "sound":Ljava/lang/String;
    new-instance v9, Lcom/avos/avospush/notification/NotificationCompat$Builder;

    iget-object v10, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v10}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getNotificationIcon()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setSmallIcon(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setDefaults(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushConnectionManager;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v4

    .line 462
    .local v4, "mBuilder":Lcom/avos/avospush/notification/NotificationCompat$Builder;
    iget-object v9, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 464
    .local v5, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 465
    .local v6, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 468
    :cond_1
    sget-object v9, Lcom/avos/avospush/push/AVPushConnectionManager;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 472
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "mBuilder":Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .end local v5    # "manager":Landroid/app/NotificationManager;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "resultIntent":Landroid/content/Intent;
    .end local v8    # "sound":Ljava/lang/String;
    :goto_0
    return-void

    .line 470
    :cond_2
    const-string v9, "AVPushConnectionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class name is invalid, which must contain \'.\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized sendPing()V
    .locals 5

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lorg/java_websocket/framing/FramedataImpl1;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 616
    .local v0, "frame":Lorg/java_websocket/framing/FramedataImpl1;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 617
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, v0}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->sendFrame(Lorg/java_websocket/framing/Framedata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v0    # "frame":Lorg/java_websocket/framing/FramedataImpl1;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 618
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->lastPongTimestamps:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x41107ac000000000L    # 270000.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 621
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 5
    .param p0, "selfId"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/Serializable;
    .param p3, "status"    # I

    .prologue
    .line 503
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v1, "sessionIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, "extra":Landroid/os/Bundle;
    if-nez p2, :cond_3

    .line 513
    .end local p2    # "data":Ljava/io/Serializable;
    :cond_0
    :goto_0
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    const-string v2, "AVPushConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    const-string v2, "AVPushConnectionManager"

    const-string v3, "sent broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    return-void

    .line 508
    .restart local p2    # "data":Ljava/io/Serializable;
    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 509
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/io/Serializable;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .restart local p2    # "data":Ljava/io/Serializable;
    :cond_4
    instance-of v2, p2, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 511
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cleanupSocketConnection()V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->close()V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Close socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 174
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public forceTriggerReconnection()V
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 627
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer()V

    .line 628
    return-void
.end method

.method public getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;
    .locals 7
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    :try_start_0
    sget-object v5, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 139
    .local v1, "newAdded":Z
    :goto_0
    const/4 v2, 0x0

    .line 140
    .local v2, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v1, :cond_2

    .line 141
    new-instance v2, Lcom/avos/avoscloud/AVSession;

    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    new-instance v5, Lcom/avos/avospush/push/AVPushConnectionManager$AVDefaultSessionListener;

    invoke-direct {v5}, Lcom/avos/avospush/push/AVPushConnectionManager$AVDefaultSessionListener;-><init>()V

    invoke-direct {v2, p1, v5}, Lcom/avos/avoscloud/AVSession;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/SessionListener;)V

    .line 142
    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    sget-object v5, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v5

    iget-object v6, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v6}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v5, v3}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerAdded(Z)V

    .line 150
    .end local v1    # "newAdded":Z
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :goto_2
    return-object v2

    :cond_0
    move v1, v4

    .line 138
    goto :goto_0

    .restart local v1    # "newAdded":Z
    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_1
    move v3, v4

    .line 143
    goto :goto_1

    .line 146
    :cond_2
    sget-object v3, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    check-cast v2, Lcom/avos/avoscloud/AVSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    goto :goto_2

    .line 149
    .end local v1    # "newAdded":Z
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public hookPingReceiver()V
    .locals 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-class v3, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    :cond_0
    return-void
.end method

.method public declared-synchronized initConnection()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "push connection is open"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pushRouter:Lcom/avos/avospush/push/AVPushRouter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avospush/push/AVPushRouter;->retryGetPushServer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lcom/avos/avospush/push/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    .line 156
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerRemoved()V

    .line 159
    :cond_0
    return-void
.end method

.method public sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->socketClient:Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/push/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 165
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/avos/avospush/push/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
