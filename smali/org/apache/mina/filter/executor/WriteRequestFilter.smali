.class public Lorg/apache/mina/filter/executor/WriteRequestFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "WriteRequestFilter.java"


# instance fields
.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter;-><init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 2
    .param p1, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "queueHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/executor/WriteRequestFilter;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/WriteRequestFilter;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, v2, p2, p3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 99
    .local v0, "e":Lorg/apache/mina/core/session/IoEvent;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 101
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    .line 102
    .local v1, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    if-nez v1, :cond_1

    .line 114
    .end local v1    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v1    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 108
    new-instance v2, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;-><init>(Lorg/apache/mina/filter/executor/WriteRequestFilter;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-interface {v1, v2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method
