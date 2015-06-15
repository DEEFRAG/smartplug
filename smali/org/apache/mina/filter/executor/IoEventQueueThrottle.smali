.class public Lorg/apache/mina/filter/executor/IoEventQueueThrottle;
.super Ljava/lang/Object;
.source "IoEventQueueThrottle.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

.field private final lock:Ljava/lang/Object;

.field private volatile threshold:I

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;-><init>()V

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "threshold"    # I

    .prologue
    .line 51
    new-instance v0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V
    .locals 2
    .param p1, "eventSizeEstimator"    # Lorg/apache/mina/filter/executor/IoEventSizeEstimator;
    .param p2, "threshold"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventSizeEstimator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->setThreshold(I)V

    .line 61
    return-void
.end method

.method private estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 4
    .param p1, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->getEventSizeEstimator()Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/filter/executor/IoEventSizeEstimator;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result v0

    .line 109
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "a negative value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    return v0
.end method

.method private logState()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->getThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected block()V
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-lt v0, v2, :cond_1

    .line 130
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 133
    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    throw v0

    .line 139
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unblocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 144
    :cond_2
    return-void
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEventSizeEstimator()Lorg/apache/mina/filter/executor/IoEventSizeEstimator;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    return v0
.end method

.method public offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result v1

    .line 88
    .local v1, "eventSize":I
    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 89
    .local v0, "currentCounter":I
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->logState()V

    .line 91
    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-lt v0, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->block()V

    .line 94
    :cond_0
    return-void
.end method

.method public polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 97
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result v1

    .line 98
    .local v1, "eventSize":I
    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 100
    .local v0, "currentCounter":I
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->logState()V

    .line 102
    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-ge v0, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->unblock()V

    .line 105
    :cond_0
    return-void
.end method

.method public setThreshold(I)V
    .locals 3
    .param p1, "threshold"    # I

    .prologue
    .line 76
    if-gtz p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    .line 80
    return-void
.end method

.method protected unblock()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 151
    :cond_0
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
