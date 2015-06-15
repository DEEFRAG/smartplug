.class public abstract Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.super Ljava/lang/Object;
.source "AbstractProxyLogicHandler.java"

# interfaces
.implements Lorg/apache/mina/proxy/ProxyLogicHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private handshakeComplete:Z

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private writeRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 73
    iput-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 74
    return-void
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method protected closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 193
    if-eqz p2, :cond_0

    .line 194
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 201
    return-void

    .line 197
    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    invoke-direct {v1, p1, p2}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushPendingWriteRequests()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " flushPendingWriteRequests()"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    .local v0, "scheduledWrite":Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    if-eqz v0, :cond_1

    .line 163
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Flushing buffered write request: {}"

    # getter for: Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->data:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v2

    # getter for: Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$100(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    # getter for: Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->data:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/mina/proxy/filter/ProxyFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    .end local v0    # "scheduledWrite":Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    .restart local v0    # "scheduledWrite":Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method protected getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    return-object v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    monitor-exit p0

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setHandshakeComplete()V
    .locals 4

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    .line 136
    .local v1, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/mina/proxy/ProxyConnector;->fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    .line 140
    sget-object v2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  handshake completed"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 144
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->flushPendingSessionEvents()V

    .line 145
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->flushPendingWriteRequests()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_0
    return-void

    .line 133
    .end local v1    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 146
    .restart local v1    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to flush pending write requests"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 106
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    invoke-direct {v0, p2}, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 108
    .local v0, "writeBuffer":Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;
    sget-object v2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "   session write: {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v1, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 111
    .local v1, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    new-instance v4, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v4, v0, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    .line 114
    return-object v1
.end method
