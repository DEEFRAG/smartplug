.class public Lcom/avos/avoscloud/AVSession;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVSession$SignatureTask;,
        Lcom/avos/avoscloud/AVSession$AVInternalGroup;,
        Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;,
        Lcom/avos/avoscloud/AVSession$WebSocketListener;
    }
.end annotation


# static fields
.field private static final MAX_DIRECT_MESSAGE_LENGTH:I = 0x1388

.field private static final SESSION_MESSASGE_DEPOT:Ljava/lang/String; = "com.avos.push.session.message."

.field private static final TAG:Ljava/lang/String;

.field private static timer:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private allPeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field private final lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

.field private final messageManager:Lcom/avos/avoscloud/MessageManager;

.field private messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final onlinePeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

.field private final selfId:Ljava/lang/String;

.field private final sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionListener:Lcom/avos/avoscloud/SessionListener;

.field private final sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sf:Ljava/util/concurrent/ScheduledFuture;

.field private signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

.field private timeout:I

.field private final websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVSession;->TAG:Ljava/lang/String;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVSession;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/SessionListener;)V
    .locals 7
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "sessionListener"    # Lcom/avos/avoscloud/SessionListener;

    .prologue
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/avos/avoscloud/AVSession;->timeout:I

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Lcom/avos/avoscloud/MessageManager;

    invoke-direct {v0}, Lcom/avos/avoscloud/MessageManager;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    .line 87
    new-instance v0, Lcom/avos/avoscloud/AVSession$WebSocketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/AVSession$WebSocketListener;-><init>(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVSession$1;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    .line 90
    sget-object v0, Lcom/avos/avoscloud/AVSession;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/avos/avoscloud/AVSession$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVSession$1;-><init>(Lcom/avos/avoscloud/AVSession;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sf:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.avos.push.session.message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/avos/avoscloud/AVSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/PendingMessageCache;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/avos/avoscloud/AVSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avospush/session/StaleMessageDepot;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/avos/avoscloud/AVSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget v0, p0, Lcom/avos/avoscloud/AVSession;->timeout:I

    return v0
.end method

.method static synthetic access$1700(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/MessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageManager:Lcom/avos/avoscloud/MessageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVSession;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/AVSession;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/AVSession;)Lcom/avos/avoscloud/SignatureFactory;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method private genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lcom/avos/avospush/session/SessionAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionAckPacket;-><init>()V

    .line 108
    .local v0, "sap":Lcom/avos/avospush/session/SessionAckPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setAppId(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionAckPacket;->setMessageId(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-object v0
.end method

.method private genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 2
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not open."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v1, p0, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->unbindSession(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const/4 v1, 0x0

    const-string v2, "close"

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVSession;->genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 194
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 195
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 197
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sf:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 3

    .prologue
    .line 690
    new-instance v0, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 691
    .local v0, "group":Lcom/avos/avoscloud/AVSession$AVInternalGroup;
    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getGroup()Lcom/avos/avoscloud/Group;

    move-result-object v2

    .line 684
    :goto_0
    return-object v2

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Group;

    goto :goto_0

    .line 682
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVSession$AVInternalGroup;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p0}, Lcom/avos/avoscloud/AVSession$AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 683
    .local v1, "group":Lcom/avos/avoscloud/Group;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Group;

    .line 684
    .local v0, "elderObject":Lcom/avos/avoscloud/Group;
    if-nez v0, :cond_2

    .end local v1    # "group":Lcom/avos/avoscloud/Group;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "group":Lcom/avos/avoscloud/Group;
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "onlineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

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
    .line 129
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;)V

    .line 130
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 6
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
    .line 135
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Session is already opened."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v2, p0, v1}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 141
    :cond_0
    :try_start_1
    new-instance v2, Lcom/avos/avoscloud/PendingMessageCache;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    .line 142
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 144
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 145
    new-instance v0, Lcom/avos/avoscloud/AVSession$2;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$2;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V

    .line 174
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .locals 2
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
    .line 394
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "query"

    invoke-direct {p0, p1, v1}, Lcom/avos/avoscloud/AVSession;->genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 396
    .local v0, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 397
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v6

    const-string v7, "Null id in session id list."

    invoke-static {v6, v7}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 228
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Session is not open."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v6, p0, v2}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    new-instance v5, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v5}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 233
    .local v5, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v6, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v5, v6}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 234
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 235
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    .line 236
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v6, p0, p1}, Lcom/avos/avoscloud/SessionListener;->onMessageFailure(Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 237
    throw v5

    .line 241
    .end local v5    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v4, "receivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 245
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getRandomMessageId()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "messageId":Ljava/lang/String;
    new-instance v1, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v1}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 247
    .local v1, "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 248
    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 251
    invoke-virtual {v1, v4}, Lcom/avos/avospush/session/DirectMessagePacket;->setToPeerIds(Ljava/util/Collection;)V

    .line 252
    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/DirectMessagePacket;->setId(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v0, v6

    .line 254
    .local v0, "commandLength":I
    const/16 v6, 0x1388

    if-le v0, v6, :cond_3

    .line 255
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Message exceeds message length maximum limit"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    :cond_3
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 258
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/avos/avoscloud/AVSession;->storeMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
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

    .prologue
    .line 213
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVSession;->sendMessage(Ljava/lang/String;Ljava/util/List;Z)V

    .line 214
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

    .prologue
    .line 218
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 219
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 0
    .param p1, "timeoutSecs"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/avos/avoscloud/AVSession;->timeout:I

    .line 209
    return-void
.end method

.method public setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0
    .param p1, "signatureFactory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 81
    return-void
.end method

.method protected storeMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 271
    .local v0, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iput-object p1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    .line 272
    iput-object p2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 273
    iput-object p3, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    .line 274
    iput-object p4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msgId:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avoscloud/PendingMessageCache$Message;)V

    .line 276
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;-><init>(Lcom/avos/avoscloud/AVSession;Z)V

    iget v3, p0, Lcom/avos/avoscloud/AVSession;->timeout:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 279
    return-void
.end method

.method public declared-synchronized unwatchPeers(Ljava/util/List;)V
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
    .line 336
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    const-string v3, "Null id in session id list."

    invoke-static {p1, v3}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    new-instance v2, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v2}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 344
    .local v2, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v3, Lcom/avos/avoscloud/SessionPausedException$Actions;->UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 345
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 347
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v2    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v3, p0, v0}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 350
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 353
    const-string v3, "remove"

    invoke-direct {p0, p1, v3}, Lcom/avos/avoscloud/AVSession;->genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    .line 355
    .local v1, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized watchPeers(Ljava/util/List;)Z
    .locals 9
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
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 330
    :goto_0
    monitor-exit p0

    return v3

    .line 288
    :cond_0
    :try_start_1
    const-string v3, "Null id in session id list."

    invoke-static {p1, v3}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    new-instance v2, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v2}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 292
    .local v2, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v3, Lcom/avos/avoscloud/SessionPausedException$Actions;->WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 293
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 294
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v2    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/SessionListener;

    invoke-interface {v3, p0, v1}, Lcom/avos/avoscloud/SessionListener;->onError(Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    .line 330
    goto :goto_0

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/avos/avoscloud/AVSession$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$3;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V

    .line 325
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v6, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v6, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Void;

    const/4 v8, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v5

    .line 327
    goto :goto_0

    .line 283
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
