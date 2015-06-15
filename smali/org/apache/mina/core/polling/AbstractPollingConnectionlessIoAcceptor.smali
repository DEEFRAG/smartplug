.class public abstract Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "AbstractPollingConnectionlessIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;,
        Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;,
        Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor",
            "<TS;TH;>.Acceptor;"
        }
    .end annotation
.end field

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TH;>;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 1
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 127
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    const/4 v2, 0x1

    .line 133
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 73
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 75
    new-instance v1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    .line 78
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 81
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    .line 85
    sget-object v1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 87
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->init()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez v1, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez v2, :cond_1

    .line 145
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    :cond_1
    :goto_1
    throw v1

    .line 140
    :catch_2
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Ljava/util/Iterator;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # Ljava/util/Iterator;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processReadySessions(Ljava/util/Iterator;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushSessions(J)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->unregisterHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$502(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$902(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;)Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    return-object p1
.end method

.method private flush(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 11
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 539
    invoke-virtual {p0, p1, v8}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 541
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    .line 542
    .local v5, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x1

    add-int v3, v9, v10

    .line 546
    .local v3, "maxWrittenBytes":I
    const/4 v6, 0x0

    .line 550
    .local v6, "writtenBytes":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    .line 552
    .local v4, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-nez v4, :cond_1

    .line 553
    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 554
    if-nez v4, :cond_0

    .line 593
    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 596
    :goto_1
    return v7

    .line 557
    :cond_0
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 560
    :cond_1
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 562
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v9

    if-nez v9, :cond_2

    .line 564
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 565
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 566
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catchall_0
    move-exception v7

    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    throw v7

    .line 570
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    .line 572
    .local v1, "destination":Ljava/net/SocketAddress;
    if-nez v1, :cond_3

    .line 573
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 576
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->send(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v2

    .line 578
    .local v2, "localWrittenBytes":I
    if-eqz v2, :cond_4

    if-lt v6, v3, :cond_5

    .line 580
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    move v7, v8

    goto :goto_1

    .line 583
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v9}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 586
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 587
    add-int/2addr v6, v2

    .line 588
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 589
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private flushSessions(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .prologue
    .line 515
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 517
    .local v2, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v2, :cond_1

    .line 535
    return-void

    .line 523
    :cond_1
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    .line 526
    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v1

    .line 527
    .local v1, "flushedAll":Z
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    invoke-direct {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v1    # "flushedAll":Z
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 6
    .param p1, "address"    # Ljava/net/SocketAddress;

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    move-object v4, p1

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 98
    .local v1, "inetAddress":Ljava/net/InetAddress;
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "address":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 100
    .local v2, "port":I
    if-nez v1, :cond_0

    .line 101
    const-string v3, "null"

    .line 119
    :goto_0
    return-object v3

    .line 104
    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "result":Ljava/lang/String;
    instance-of v4, v1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 110
    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 113
    .local v0, "bytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xc

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xd

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xe

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xf

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    goto :goto_0

    .line 115
    .end local v0    # "bytes":[B
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 9
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    const/4 v8, 0x0

    .line 285
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    if-nez v0, :cond_0

    .line 288
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown local address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 292
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v4

    .line 294
    .local v4, "sessionRecycler":Lorg/apache/mina/core/session/IoSessionRecycler;
    monitor-enter v4

    .line 295
    :try_start_0
    invoke-interface {v4, p2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->recycle(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 297
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    if-eqz v2, :cond_1

    .line 298
    monitor-exit v4

    move-object v3, v2

    .line 316
    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    :goto_0
    return-object v3

    .line 302
    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, v6, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v1

    .line 303
    .local v1, "newSession":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/apache/mina/core/session/IoSessionRecycler;->put(Lorg/apache/mina/core/session/IoSession;)V

    .line 304
    move-object v2, v1

    .line 305
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p0, v2, v8, v8}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 310
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 311
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v3, v2

    .line 316
    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 305
    .end local v1    # "newSession":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 312
    .restart local v1    # "newSession":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .restart local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v5

    .line 313
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private notifyIdleSessions(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .prologue
    .line 678
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 679
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    .line 680
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 684
    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TH;>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "handles":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 475
    .local v0, "h":Ljava/lang/Object;, "TH;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 478
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isReadable(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 479
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->readHandle(Ljava/lang/Object;)V

    .line 482
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isWritable(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/session/IoSession;

    .line 484
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    check-cast v2, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 487
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 488
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 491
    .end local v0    # "h":Ljava/lang/Object;, "TH;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private readHandle(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v4

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 497
    .local v1, "readBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->receive(Ljava/lang/Object;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object v2

    .line 499
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    .line 503
    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 505
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 506
    .local v0, "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 507
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 509
    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 511
    .end local v0    # "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 9

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 603
    .local v5, "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v5, :cond_2

    .line 640
    const/4 v7, 0x0

    :cond_1
    :goto_1
    return v7

    .line 607
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v4, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TH;>;"
    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v3

    .line 611
    .local v3, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/SocketAddress;

    .line 612
    .local v6, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    .line 613
    .local v1, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 622
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 627
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 629
    .restart local v1    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 630
    :catch_1
    move-exception v0

    .line 631
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    :cond_3
    :try_start_3
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 618
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 619
    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 621
    invoke-interface {v4}, Ljava/util/Map;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 626
    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 627
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 629
    .restart local v1    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 630
    :catch_2
    move-exception v0

    .line 631
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    goto/16 :goto_1

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 626
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 627
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 629
    .restart local v1    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_5
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 630
    :catch_3
    move-exception v0

    .line 631
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    throw v7
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    .line 394
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startupAcceptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 376
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 377
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 382
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    .line 384
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method private unregisterHandles()I
    .locals 8

    .prologue
    .line 644
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    const/4 v3, 0x0

    .line 647
    .local v3, "nHandles":I
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 648
    .local v4, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v4, :cond_0

    .line 673
    return v3

    .line 653
    :cond_0
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    .line 654
    .local v5, "socketAddress":Ljava/net/SocketAddress;
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-direct {p0, v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 656
    .local v1, "handle":Ljava/lang/Object;, "TH;"
    if-eqz v1, :cond_1

    .line 661
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V

    .line 662
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    add-int/lit8 v3, v3, 0x1

    .line 667
    goto :goto_1

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    add-int/lit8 v3, v3, 0x1

    .line 667
    goto :goto_1

    .line 666
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    add-int/lit8 v3, v3, 0x1

    throw v6

    .line 670
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    .end local v5    # "socketAddress":Ljava/net/SocketAddress;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v3, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v3, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 194
    .local v3, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    .line 205
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 208
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 217
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 219
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    throw v4

    .line 213
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 226
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v2, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v0    # "handle":Ljava/lang/Object;, "TH;"
    :cond_1
    return-object v2
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->unbind()V

    .line 178
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    .line 179
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    .line 180
    return-void
.end method

.method public final getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-object v0
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isReadable(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method protected abstract isWritable(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method protected abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;TH;",
            "Ljava/net/SocketAddress;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already disposed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    if-nez p1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t create a session from a unbound service."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 272
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 275
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 277
    .end local v0    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v3, "Failed to create a session."

    invoke-direct {v1, v3, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract receive(Ljava/lang/Object;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")",
            "Ljava/net/SocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TH;>;"
        }
    .end annotation
.end method

.method protected abstract send(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "Ljava/net/SocketAddress;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
    .locals 3
    .param p1, "sessionRecycler"    # Lorg/apache/mina/core/session/IoSessionRecycler;

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 330
    :cond_0
    if-nez p1, :cond_1

    .line 331
    :try_start_1
    sget-object p1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 334
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 335
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    return-void
.end method

.method protected final unbind0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 242
    .local v0, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    .line 244
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    .line 246
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 248
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 251
    :cond_0
    return-void
.end method

.method protected abstract wakeup()V
.end method
