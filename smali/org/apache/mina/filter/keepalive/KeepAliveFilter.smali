.class public Lorg/apache/mina/filter/keepalive/KeepAliveFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "KeepAliveFilter.java"


# instance fields
.field private final IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private final WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

.field private volatile forwardEvent:Z

.field private final interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

.field private final messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

.field private volatile requestInterval:I

.field private volatile requestTimeout:I

.field private volatile requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;)V
    .locals 2
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    .prologue
    .line 165
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 180
    sget-object v3, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p3, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .prologue
    .line 208
    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V
    .locals 3
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p3, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .param p4, "keepAliveRequestInterval"    # I
    .param p5, "keepAliveRequestTimeout"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 142
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "waitingForResponse"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    .line 144
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreReaderIdleOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interestedIdleStatus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    if-nez p3, :cond_2

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    .line 229
    iput-object p2, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    .line 230
    iput-object p3, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 232
    invoke-virtual {p0, p4}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestInterval(I)V

    .line 233
    invoke-virtual {p0, p5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestTimeout(I)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .prologue
    .line 194
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 195
    return-void
.end method

.method private handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 394
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    .line 395
    .local v0, "handler":Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-ne v0, v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method private isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 403
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 404
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 405
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method private resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 410
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriterIdleTime(I)V

    .line 411
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 413
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method


# virtual methods
.method public getInterestedIdleStatus()Lorg/apache/mina/core/session/IdleStatus;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    return-object v0
.end method

.method public getMessageFactory()Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    return v0
.end method

.method public getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-object v0
.end method

.method public isForwardEvent()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v1, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v1, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "pongMessage":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 335
    .end local v0    # "pongMessage":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v1, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 343
    :cond_2
    return-void

    .line 339
    :catchall_0
    move-exception v1

    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "message":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 352
    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 312
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 313
    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 319
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
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
    .line 302
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once. Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v1, :cond_4

    .line 358
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getRequest(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    .local v0, "pingMessage":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 367
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-eq v1, v2, :cond_2

    .line 368
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->markStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 369
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne v1, v2, :cond_0

    .line 370
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v0    # "pingMessage":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    if-eqz v1, :cond_1

    .line 388
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 390
    :cond_1
    return-void

    .line 373
    .restart local v0    # "pingMessage":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 377
    .end local v0    # "pingMessage":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 379
    :cond_4
    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v1, :cond_0

    .line 380
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public setForwardEvent(Z)V
    .locals 0
    .param p1, "forwardEvent"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    .line 297
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3
    .param p1, "keepAliveRequestInterval"    # I

    .prologue
    .line 256
    if-gtz p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestInterval must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    .line 262
    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 3
    .param p1, "keepAliveRequestTimeout"    # I

    .prologue
    .line 269
    if-gtz p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestTimeout must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    .line 275
    return-void
.end method

.method public setRequestTimeoutHandler(Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 2
    .param p1, "timeoutHandler"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 249
    return-void
.end method
