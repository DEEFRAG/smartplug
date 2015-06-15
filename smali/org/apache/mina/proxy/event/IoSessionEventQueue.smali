.class public Lorg/apache/mina/proxy/event/IoSessionEventQueue;
.super Ljava/lang/Object;
.source "IoSessionEventQueue.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private sessionEventsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/proxy/event/IoSessionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    .line 52
    iput-object p1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 53
    return-void
.end method

.method private discardSessionQueueEvents()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 62
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v2, "Event queue CLEARED"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/mina/proxy/event/IoSessionEvent;

    .prologue
    .line 130
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v2, "Enqueuing event: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/mina/proxy/event/IoSessionEvent;

    .prologue
    .line 78
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v1, "??? >> Enqueue {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    .line 106
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isAuthenticationFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/ProxyConnector;->cancelConnectFuture()V

    .line 92
    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    .line 93
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    if-ne v0, v1, :cond_4

    .line 100
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 103
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    goto :goto_0
.end method

.method public flushPendingSessionEvents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v2, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 117
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/event/IoSessionEvent;

    .local v0, "evt":Lorg/apache/mina/proxy/event/IoSessionEvent;
    if-eqz v0, :cond_0

    .line 118
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v3, " Flushing buffered event: {}"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 121
    .end local v0    # "evt":Lorg/apache/mina/proxy/event/IoSessionEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "evt":Lorg/apache/mina/proxy/event/IoSessionEvent;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    return-void
.end method
