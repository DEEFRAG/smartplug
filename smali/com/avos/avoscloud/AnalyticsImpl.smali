.class public Lcom/avos/avoscloud/AnalyticsImpl;
.super Ljava/lang/Object;
.source "AnalyticsImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AnalyticsImpl$6;,
        Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;
    }
.end annotation


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "avoscloud-analysis"

.field private static final REQUEST_END_SEND:I = 0x13353d2

.field private static final REQUEST_FOR_SEND:I = 0x1241192

.field private static final REQUEST_INTERVAL_SEND:I = 0x12968c2

.field private static final SESSION_KEY:Ljava/lang/String; = "currentSession"

.field private static final TAG:Ljava/lang/String;

.field static analysisReportEnableFlag:Z = false

.field protected static enableDebugLog:Z = false

.field private static final firstBootTag:Ljava/lang/String; = "firstBoot"

.field static instance:Lcom/avos/avoscloud/AnalyticsImpl;

.field private static messageCountThreshold:I

.field private static sessionThreshold:J

.field private static final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AnalyticsSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appChannel:Ljava/lang/String;

.field private final archiveThread:Ljava/lang/Thread;

.field private autoLocation:Z

.field private final batchInterval:J

.field private currentSessionId:Ljava/lang/String;

.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

.field private final intervalCache:Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;

.field private listener:Lcom/avos/avoscloud/AVOnlineConfigureListener;

.field private final messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

.field private pauseTimeStamp:J

.field private reportHandler:Landroid/os/Handler;

.field private final reportRequestDispatcher:Landroid/os/Handler;

.field private volatile updateOnlineConfigTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    .line 94
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/avos/avoscloud/AnalyticsImpl;->sessionThreshold:J

    .line 97
    const/16 v0, 0x1e

    sput v0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCountThreshold:I

    .line 99
    const-class v0, Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->whiteList:Ljava/util/List;

    .line 130
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->analysisReportEnableFlag:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "AVOS Cloud"

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->appChannel:Ljava/lang/String;

    .line 36
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->batchInterval:J

    .line 45
    new-instance v0, Lcom/avos/avoscloud/AnalyticsImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/AnalyticsImpl$1;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportRequestDispatcher:Landroid/os/Handler;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    iput-object v2, p0, Lcom/avos/avoscloud/AnalyticsImpl;->handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    .line 101
    iput-object v2, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    .line 102
    iput-object v2, p0, Lcom/avos/avoscloud/AnalyticsImpl;->listener:Lcom/avos/avoscloud/AVOnlineConfigureListener;

    .line 105
    iput-object v2, p0, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfigTimer:Ljava/util/Timer;

    .line 109
    new-instance v0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;

    invoke-direct {v0}, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->intervalCache:Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;

    .line 111
    new-instance v0, Lcom/avos/avoscloud/AnalyticsImpl$2;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl$2;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->archiveThread:Ljava/lang/Thread;

    .line 134
    new-instance v0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->archiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AnalyticsImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AnalyticsImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsImpl;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AnalyticsImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportRequestDispatcher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AnalyticsImpl;)Lcom/avos/avoscloud/AnalyticsOnlineConfig;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    return-object v0
.end method

.method private batchRecording(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->exceedAndResetMessageCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->sendInstantRecordingRequest()V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->sendIntervalRecordingRequest(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private createSession()Lcom/avos/avoscloud/AnalyticsSession;
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcom/avos/avoscloud/AnalyticsSession;

    invoke-direct {v0}, Lcom/avos/avoscloud/AnalyticsSession;-><init>()V

    .line 278
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->beginSession()V

    .line 279
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    return-object v0
.end method

.method private currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    .line 223
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 224
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 232
    :goto_0
    return-object v1

    .line 227
    :cond_0
    if-nez p1, :cond_1

    .line 228
    const/4 v1, 0x0

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->createSession()Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    move-object v1, v0

    .line 232
    goto :goto_0
.end method

.method private dumpJsonMap(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    sget-object v5, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AnalyticsSession;

    .line 429
    .local v4, "session":Lcom/avos/avoscloud/AnalyticsSession;
    iget-object v5, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/avos/avoscloud/AnalyticsSession;->jsonMap(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 431
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 432
    :try_start_0
    invoke-static {v3}, Lcom/avos/avoscloud/JSONHelper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v5, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 440
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "session":Lcom/avos/avoscloud/AnalyticsSession;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/avos/avoscloud/AnalyticsImpl;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->instance:Lcom/avos/avoscloud/AnalyticsImpl;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-direct {v0}, Lcom/avos/avoscloud/AnalyticsImpl;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->instance:Lcom/avos/avoscloud/AnalyticsImpl;

    .line 142
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->instance:Lcom/avos/avoscloud/AnalyticsImpl;

    return-object v0
.end method

.method private getSessionTimeoutThreshold()J
    .locals 2

    .prologue
    .line 400
    sget-wide v0, Lcom/avos/avoscloud/AnalyticsImpl;->sessionThreshold:J

    return-wide v0
.end method

.method private inDebug(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 474
    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 476
    .local v0, "debug":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 477
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in debug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v0    # "debug":Z
    :cond_1
    return v0
.end method

.method public static sendAnalysisRequest(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "eventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 652
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->analysisReportEnableFlag:Z

    if-eqz v0, :cond_1

    .line 653
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 654
    const-string v0, "send stats immediatately"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 656
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "stats/collect"

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_1
    return-void
.end method

.method private sendIntervalRecordingRequest(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 530
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x12968c2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 531
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportRequestDispatcher:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->getSendInterval()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 532
    return-void
.end method

.method static sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsSession;

    goto :goto_0
.end method


# virtual methods
.method public addActivity(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ms"    # J

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/AnalyticsSession;->addActivity(Ljava/lang/String;J)V

    .line 363
    return-void
.end method

.method protected archiveCurrentSession(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 515
    .local v0, "currentSession":Lcom/avos/avoscloud/AnalyticsSession;
    const-string v3, "avoscloud-analysis"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 516
    .local v1, "p":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 517
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "sessionString":Ljava/lang/String;
    const-string v3, "currentSession"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    sget-boolean v3, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v3, :cond_0

    .line 521
    sget-object v3, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to archive current session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v2    # "sessionString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public beginActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AnalyticsSession;->beginActivity(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 368
    return-void
.end method

.method public beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v1

    .line 381
    .local v1, "session":Lcom/avos/avoscloud/AnalyticsSession;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/avos/avoscloud/AnalyticsSession;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 382
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 383
    return-object v0
.end method

.method public beginEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    .line 377
    return-void
.end method

.method public beginFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AnalyticsSession;->beginFragment(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 373
    return-void
.end method

.method public beginSession()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 332
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->createSession()Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 337
    return-void
.end method

.method public clearSessions()V
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public debugDump(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    sget-boolean v3, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-nez v3, :cond_1

    .line 471
    :cond_0
    return-void

    .line 467
    :cond_1
    sget-object v3, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AnalyticsSession;

    .line 468
    .local v2, "session":Lcom/avos/avoscloud/AnalyticsSession;
    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/avos/avoscloud/AnalyticsSession;->jsonMap(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    .line 469
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableCrashReport(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    .line 184
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->handler:Lcom/avos/avoscloud/AVUncaughtExceptionHandler;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVUncaughtExceptionHandler;->enableCrashHanlder(Z)V

    .line 190
    :cond_1
    return-void
.end method

.method public endActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AnalyticsSession;->endActivity(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 420
    return-void
.end method

.method public endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AnalyticsSession;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 389
    return-void
.end method

.method public endFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AnalyticsSession;->endFragment(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    .line 425
    return-void
.end method

.method public endSession(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 341
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->endSession()V

    .line 345
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->isEnableDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->dumpJsonMap(Landroid/content/Context;)V

    .line 348
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->incMessageCount()I

    goto :goto_0
.end method

.method public exceedAndResetMessageCount()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->getMessageCount()I

    move-result v1

    sget v2, Lcom/avos/avoscloud/AnalyticsImpl;->messageCountThreshold:I

    if-lt v1, v2, :cond_1

    .line 254
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->getMessageCount()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 258
    :cond_1
    return v0
.end method

.method protected flushLastSession(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    const-string v5, "avoscloud-analysis"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "currentSession"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "lastSessionString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->archiveCurrentSession(Landroid/content/Context;)V

    .line 291
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-class v5, Lcom/avos/avoscloud/AnalyticsSession;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 293
    const-class v5, Lcom/avos/avoscloud/AnalyticsSession;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AnalyticsSession;

    .line 294
    .local v1, "lastSession":Lcom/avos/avoscloud/AnalyticsSession;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "lastSessionId":Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v5

    if-nez v5, :cond_2

    .line 298
    :goto_0
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsSession;->endSession()V

    .line 299
    iget-object v5, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    invoke-virtual {v1, p1, v5, v9}, Lcom/avos/avoscloud/AnalyticsSession;->jsonMap(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v4

    .line 300
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 301
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "jsonString":Ljava/lang/String;
    sget-boolean v5, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v5, :cond_0

    .line 303
    const-string v5, "send last session stored"

    invoke-static {v5}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    .line 306
    :cond_0
    new-instance v5, Lcom/avos/avoscloud/AnalyticsImpl$3;

    invoke-direct {v5, p0}, Lcom/avos/avoscloud/AnalyticsImpl$3;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;)V

    invoke-static {v0, v8, v9, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->sendAnalysisRequest(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 328
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "lastSession":Lcom/avos/avoscloud/AnalyticsSession;
    .end local v2    # "lastSessionId":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    return-void

    .line 295
    .restart local v1    # "lastSession":Lcom/avos/avoscloud/AnalyticsSession;
    .restart local v2    # "lastSessionId":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v1

    goto :goto_0

    .line 326
    .end local v1    # "lastSession":Lcom/avos/avoscloud/AnalyticsSession;
    .end local v2    # "lastSessionId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/AnalyticsImpl;->sendArchivedRequests(Z)V

    goto :goto_1
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->appChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 642
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->getConfigParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 646
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getReportPolicy(Landroid/content/Context;)Lcom/avos/avoscloud/ReportPolicy;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->getReportPolicy()Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v0

    .line 195
    .local v0, "value":Lcom/avos/avoscloud/ReportPolicy;
    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->whiteList:Ljava/util/List;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    .line 204
    .end local v0    # "value":Lcom/avos/avoscloud/ReportPolicy;
    :cond_0
    :goto_0
    return-object v0

    .line 198
    .restart local v0    # "value":Lcom/avos/avoscloud/ReportPolicy;
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->REALTIME:Lcom/avos/avoscloud/ReportPolicy;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->inDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->BATCH:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0

    .line 201
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->SENDWIFIONLY:Lcom/avos/avoscloud/ReportPolicy;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->inDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->BATCH:Lcom/avos/avoscloud/ReportPolicy;

    goto :goto_0
.end method

.method public getSendInterval()J
    .locals 3

    .prologue
    .line 158
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->getReportPolicy(Landroid/content/Context;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v0

    .line 159
    .local v0, "currentPolicy":Lcom/avos/avoscloud/ReportPolicy;
    sget-object v1, Lcom/avos/avoscloud/ReportPolicy;->SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->intervalCache:Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->getTimeInterval()J

    move-result-wide v1

    .line 162
    :goto_0
    return-wide v1

    :cond_0
    const-wide/32 v1, 0x1d4c0

    goto :goto_0
.end method

.method public incMessageCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public isAutoLocation()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->autoLocation:Z

    return v0
.end method

.method public isEnableDebugLog()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    return v0
.end method

.method public isEnableStats()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->isEnableStats()Z

    move-result v0

    return v0
.end method

.method public notifyOnlineConfigListener(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->listener:Lcom/avos/avoscloud/AVOnlineConfigureListener;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->listener:Lcom/avos/avoscloud/AVOnlineConfigureListener;

    invoke-interface {v1, p1}, Lcom/avos/avoscloud/AVOnlineConfigureListener;->onDataReceived(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Notify online data received failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pauseSession()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->currentSessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->sessionByName(Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 354
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsSession;->pauseSession()V

    .line 358
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getCurrentTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->pauseTimeStamp:J

    goto :goto_0
.end method

.method public postRecording(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 486
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report policy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->getReportPolicy()Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->isEnableStats()Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    :goto_0
    :pswitch_0
    return-void

    .line 492
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl$6;->$SwitchMap$com$avos$avoscloud$ReportPolicy:[I

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->getReportPolicy(Landroid/content/Context;)Lcom/avos/avoscloud/ReportPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/ReportPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 505
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->batchRecording(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Post record failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->sendIntervalRecordingRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 498
    :pswitch_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->sendInstantRecordingRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized report(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clear"    # Z

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->saveSessionsToServer(Landroid/content/Context;)V

    .line 447
    sget-object v2, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AnalyticsSession;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AnalyticsSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AnalyticsSession;->isSessionFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AnalyticsSession;>;>;"
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v3, "Send statstics report failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 454
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AnalyticsSession;>;>;"
    :cond_2
    if-eqz p2, :cond_1

    .line 455
    :try_start_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->clearSessions()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 445
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AnalyticsSession;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reportFirstBoot(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 622
    const-string v5, "AVOSCloud-SDK"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 624
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v5, "firstBoot"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 625
    .local v1, "firstBoot":Z
    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->sendInstantRecordingRequest()V

    .line 627
    invoke-direct {p0, v7}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v5

    iget-object v6, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    invoke-virtual {v5, p1, v6}, Lcom/avos/avoscloud/AnalyticsSession;->firstBootMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 628
    .local v2, "firstBootMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 629
    sget-boolean v5, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v5, :cond_0

    .line 630
    const-string v5, "report data on first boot"

    invoke-static {v5}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 632
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "jsonString":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v3, v7, v8, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->sendAnalysisRequest(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 635
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "firstBoot"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "firstBootMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method protected resetMessageCount()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 263
    return-void
.end method

.method protected resetMessageCount(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->messageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 267
    return-void
.end method

.method public saveSessionsToServer(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->sendArchivedRequests(Z)V

    .line 550
    sget-object v5, Lcom/avos/avoscloud/AnalyticsImpl;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AnalyticsSession;

    .line 551
    .local v4, "session":Lcom/avos/avoscloud/AnalyticsSession;
    iget-object v5, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lcom/avos/avoscloud/AnalyticsSession;->jsonMap(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 552
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 553
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "jsonString":Ljava/lang/String;
    sget-boolean v5, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v5, :cond_1

    .line 555
    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    .line 560
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->archiveCurrentSession(Landroid/content/Context;)V

    .line 561
    invoke-virtual {v4}, Lcom/avos/avoscloud/AnalyticsSession;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/avos/avoscloud/AnalyticsSession;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->resetMessageCount(I)V

    .line 562
    const/4 v5, 0x1

    const/4 v6, 0x1

    new-instance v7, Lcom/avos/avoscloud/AnalyticsImpl$4;

    invoke-direct {v7, p0}, Lcom/avos/avoscloud/AnalyticsImpl$4;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;)V

    invoke-static {v2, v5, v6, v7}, Lcom/avos/avoscloud/AnalyticsImpl;->sendAnalysisRequest(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "session":Lcom/avos/avoscloud/AnalyticsSession;
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v6, "saveSessionsToServer failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method protected declared-synchronized sendArchivedRequests(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/avos/avoscloud/AnalyticsImpl;->analysisReportEnableFlag:Z

    if-eqz v0, :cond_0

    .line 667
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_0
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sendInstantRecordingRequest()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->reportRequestDispatcher:Landroid/os/Handler;

    const v1, 0x1241192

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    return-void
.end method

.method public setAVOnlineConfigureListener(Lcom/avos/avoscloud/AVOnlineConfigureListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/avos/avoscloud/AVOnlineConfigureListener;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 592
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->listener:Lcom/avos/avoscloud/AVOnlineConfigureListener;

    .line 593
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfigTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfigTimer:Ljava/util/Timer;

    .line 595
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfigTimer:Ljava/util/Timer;

    new-instance v1, Lcom/avos/avoscloud/AnalyticsImpl$5;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl$5;-><init>(Lcom/avos/avoscloud/AnalyticsImpl;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 606
    :cond_0
    return-void
.end method

.method protected declared-synchronized setAnalyticsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/avos/avoscloud/AnalyticsImpl;->analysisReportEnableFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->appChannel:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setAutoLocation(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->autoLocation:Z

    .line 147
    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "extensionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->customInfo:Ljava/util/Map;

    .line 393
    return-void
.end method

.method public setEnableDebugLog(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 176
    sput-boolean p1, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    .line 177
    return-void
.end method

.method protected setReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Lcom/avos/avoscloud/ReportPolicy;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->setReportPolicy(Lcom/avos/avoscloud/ReportPolicy;)V

    .line 209
    return-void
.end method

.method public setSessionContinueMillis(J)V
    .locals 0
    .param p1, "ms"    # J

    .prologue
    .line 236
    sput-wide p1, Lcom/avos/avoscloud/AnalyticsImpl;->sessionThreshold:J

    .line 237
    return-void
.end method

.method public setSessionDuration(J)V
    .locals 2
    .param p1, "ms"    # J

    .prologue
    .line 240
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v0

    .line 241
    .local v0, "session":Lcom/avos/avoscloud/AnalyticsSession;
    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AnalyticsSession;->setSessionDuration(J)V

    .line 242
    return-void
.end method

.method public shouldRegardAsNewSession()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 404
    invoke-direct {p0, v8}, Lcom/avos/avoscloud/AnalyticsImpl;->currentSession(Z)Lcom/avos/avoscloud/AnalyticsSession;

    move-result-object v4

    .line 405
    .local v4, "session":Lcom/avos/avoscloud/AnalyticsSession;
    if-nez v4, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v7

    .line 408
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->getCurrentTimestamp()J

    move-result-wide v0

    .line 409
    .local v0, "current":J
    iget-wide v5, p0, Lcom/avos/avoscloud/AnalyticsImpl;->pauseTimeStamp:J

    .line 410
    .local v5, "start":J
    sub-long v2, v0, v5

    .line 411
    .local v2, "delta":J
    invoke-direct {p0}, Lcom/avos/avoscloud/AnalyticsImpl;->getSessionTimeoutThreshold()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-lez v9, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gtz v9, :cond_0

    :cond_2
    move v7, v8

    .line 414
    goto :goto_0
.end method

.method public updateOnlineConfig(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    if-eqz v1, :cond_1

    .line 611
    sget-boolean v1, Lcom/avos/avoscloud/AnalyticsImpl;->enableDebugLog:Z

    if-eqz v1, :cond_0

    .line 612
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v2, "try to update statistics config from online data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsImpl;->onlineConfig:Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->update(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/avos/avoscloud/AnalyticsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Update online config failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
