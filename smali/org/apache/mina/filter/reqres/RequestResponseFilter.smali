.class public Lorg/apache/mina/filter/reqres/RequestResponseFilter;
.super Lorg/apache/mina/filter/util/WriteRequestFilter;
.source "RequestResponseFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/reqres/RequestResponseFilter$2;,
        Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

.field private final RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

.field private final UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

.field private final responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

.field private final timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/ResponseInspector;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "responseInspector"    # Lorg/apache/mina/filter/reqres/ResponseInspector;
    .param p2, "timeoutScheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/mina/filter/util/WriteRequestFilter;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "responseInspector"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    .line 51
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    .line 52
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unrespondedRequestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "responseInspector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutScheduler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/filter/reqres/ResponseInspector;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    .line 72
    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "responseInspectorFactory"    # Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;
    .param p2, "timeoutScheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/mina/filter/util/WriteRequestFilter;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "responseInspector"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    .line 51
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    .line 52
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unrespondedRequestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "responseInspectorFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutScheduler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    .line 85
    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/reqres/RequestResponseFilter;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/reqres/RequestResponseFilter;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected createRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method protected createUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method protected destroyRequestStore(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    return-void
.end method

.method protected destroyUnrespondedRequestStore(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "unrespondedRequestStore":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    return-void
.end method

.method protected doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;
    .locals 12
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    .line 188
    .local v6, "message":Ljava/lang/Object;
    instance-of v1, v6, Lorg/apache/mina/filter/reqres/Request;

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-object v5

    :cond_0
    move-object v3, v6

    .line 192
    check-cast v3, Lorg/apache/mina/filter/reqres/Request;

    .line 193
    .local v3, "request":Lorg/apache/mina/filter/reqres/Request;
    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request can not be reused."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v9

    .line 198
    .local v9, "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    const/4 v7, 0x0

    .line 199
    .local v7, "oldValue":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v8

    .line 200
    .local v8, "requestId":Ljava/lang/Object;
    monitor-enter v9

    .line 201
    :try_start_0
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 202
    if-nez v7, :cond_2

    .line 203
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v7, :cond_3

    .line 207
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate request ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v7    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 212
    .restart local v7    # "oldValue":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;)V

    .line 214
    .local v0, "timeoutTask":Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutMillis()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v10

    .line 217
    .local v10, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {v3, v0}, Lorg/apache/mina/filter/reqres/Request;->setTimeoutTask(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v3, v10}, Lorg/apache/mina/filter/reqres/Request;->setTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 221
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v11

    .line 222
    .local v11, "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    monitor-enter v11

    .line 223
    :try_start_2
    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getMessage()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 224
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 11
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v8, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v8}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/reqres/ResponseInspector;

    .line 121
    .local v4, "responseInspector":Lorg/apache/mina/filter/reqres/ResponseInspector;
    invoke-interface {v4, p3}, Lorg/apache/mina/filter/reqres/ResponseInspector;->getRequestId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "requestId":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 124
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-interface {v4, p3}, Lorg/apache/mina/filter/reqres/ResponseInspector;->getResponseType(Ljava/lang/Object;)Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v6

    .line 130
    .local v6, "type":Lorg/apache/mina/filter/reqres/ResponseType;
    if-nez v6, :cond_2

    .line 131
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#getResponseType() may not return null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v8}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 136
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v2

    .line 139
    .local v2, "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    sget-object v8, Lorg/apache/mina/filter/reqres/RequestResponseFilter$2;->$SwitchMap$org$apache$mina$filter$reqres$ResponseType:[I

    invoke-virtual {v6}, Lorg/apache/mina/filter/reqres/ResponseType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 152
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 142
    :pswitch_0
    monitor-enter v2

    .line 143
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/reqres/Request;

    .line 144
    .local v0, "request":Lorg/apache/mina/filter/reqres/Request;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_1
    if-nez v0, :cond_3

    .line 158
    sget-object v8, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    sget-object v8, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown request ID \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for the response message. Timed out already?: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "request":Lorg/apache/mina/filter/reqres/Request;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 147
    :pswitch_1
    monitor-enter v2

    .line 148
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/reqres/Request;

    .line 149
    .restart local v0    # "request":Lorg/apache/mina/filter/reqres/Request;
    monitor-exit v2

    goto :goto_1

    .end local v0    # "request":Lorg/apache/mina/filter/reqres/Request;
    :catchall_1
    move-exception v8

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 166
    .restart local v0    # "request":Lorg/apache/mina/filter/reqres/Request;
    :cond_3
    sget-object v8, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

    if-eq v6, v8, :cond_4

    .line 167
    invoke-virtual {v0}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    .line 168
    .local v5, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v5, :cond_4

    .line 169
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 170
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v7

    .line 171
    .local v7, "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    monitor-enter v7

    .line 172
    :try_start_3
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 178
    .end local v5    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v7    # "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    :cond_4
    new-instance v3, Lorg/apache/mina/filter/reqres/Response;

    invoke-direct {v3, v0, p3, v6}, Lorg/apache/mina/filter/reqres/Response;-><init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Object;Lorg/apache/mina/filter/reqres/ResponseType;)V

    .line 179
    .local v3, "response":Lorg/apache/mina/filter/reqres/Response;
    invoke-virtual {v0, v3}, Lorg/apache/mina/filter/reqres/Request;->signal(Lorg/apache/mina/filter/reqres/Response;)V

    .line 180
    invoke-interface {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    .end local v3    # "response":Lorg/apache/mina/filter/reqres/Response;
    .restart local v5    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .restart local v7    # "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    :catchall_2
    move-exception v8

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 108
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->destroyUnrespondedRequestStore(Ljava/util/Set;)V

    .line 109
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->destroyRequestStore(Ljava/util/Map;)V

    .line 111
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 97
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    iget-object v2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    invoke-interface {v2}, Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;->getResponseInspector()Lorg/apache/mina/filter/reqres/ResponseInspector;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->createRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->createUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v3

    .line 236
    .local v3, "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    monitor-enter v3

    .line 237
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v4, "unrespondedRequestsCopy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/reqres/Request;>;"
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 240
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/reqres/Request;

    .line 244
    .local v1, "r":Lorg/apache/mina/filter/reqres/Request;
    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutTask()Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 240
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/mina/filter/reqres/Request;
    .end local v4    # "unrespondedRequestsCopy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/reqres/Request;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 250
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v4    # "unrespondedRequestsCopy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/reqres/Request;>;"
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v2

    .line 251
    .local v2, "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    monitor-enter v2

    .line 252
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 253
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 257
    return-void

    .line 253
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
