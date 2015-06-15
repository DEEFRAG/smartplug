.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "AbstractPollingIoConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;,
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;,
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoConnector;"
    }
.end annotation


# instance fields
.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<TT;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<TT;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<TT;TH;>.Connector;>;"
        }
    .end annotation
.end field

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile selectable:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TT;>;>;"
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v1, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "processorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TT;>;>;"
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v1, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "createdProcessor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    .line 68
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    .line 72
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 77
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    if-nez p3, :cond_0

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "processor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 175
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->init()V

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v1, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v2, :cond_2

    .line 187
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 190
    :cond_2
    :goto_1
    throw v1

    .line 182
    :catch_2
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 2
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 128
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return v0
.end method

.method static synthetic access$402(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->registerNew()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p1, "x1"    # Ljava/util/Iterator;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processConnections(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p1, "x1"    # Ljava/util/Iterator;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processTimedOutSessions(Ljava/util/Iterator;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelKeys()I

    move-result v0

    return v0
.end method

.method private cancelKeys()I
    .locals 5

    .prologue
    .line 392
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    const/4 v2, 0x0

    .line 395
    .local v2, "nHandles":I
    :goto_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .line 397
    .local v3, "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    if-nez v3, :cond_1

    .line 412
    if-lez v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 416
    :cond_0
    return v2

    .line 401
    :cond_1
    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v1

    .line 404
    .local v1, "handle":Ljava/lang/Object;, "TH;"
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    .line 409
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    .line 409
    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    add-int/lit8 v2, v2, 0x1

    throw v4
.end method

.method private processConnections(Ljava/util/Iterator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TH;>;)I"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p1, "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    const/4 v3, 0x0

    .line 427
    .local v3, "nHandles":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 428
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 429
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 431
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v0

    .line 433
    .local v0, "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    if-eqz v0, :cond_0

    .line 437
    const/4 v5, 0x0

    .line 439
    .local v5, "success":Z
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->finishConnect(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, v6, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v4

    .line 441
    .local v4, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->getSessionInitializer()Lorg/apache/mina/core/session/IoSessionInitializer;

    move-result-object v6

    invoke-virtual {p0, v4, v0, v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 443
    invoke-virtual {v4}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    add-int/lit8 v3, v3, 0x1

    .line 446
    .end local v4    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    :cond_1
    const/4 v5, 0x1

    .line 450
    if-nez v5, :cond_0

    .line 452
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    if-nez v5, :cond_0

    .line 452
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_2

    .line 452
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v7, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    throw v6

    .line 456
    .end local v0    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    .end local v5    # "success":Z
    :cond_3
    return v3
.end method

.method private processTimedOutSessions(Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TH;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p1, "handles":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 462
    .local v1, "currentTime":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 464
    .local v3, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v0

    .line 466
    .local v0, "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    if-eqz v0, :cond_0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_0

    .line 467
    new-instance v4, Ljava/net/ConnectException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V

    .line 469
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    .end local v0    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_1
    return-void
.end method

.method private registerNew()I
    .locals 6

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    const/4 v3, 0x0

    .line 370
    .local v3, "nHandles":I
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .line 371
    .local v4, "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    if-nez v4, :cond_0

    .line 388
    return v3

    .line 375
    :cond_0
    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 377
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    :try_start_0
    invoke-virtual {p0, v2, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V

    .line 382
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 383
    :catch_1
    move-exception v1

    .line 384
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startupWorker()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    const/4 v2, 0x0

    .line 351
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 353
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    .line 358
    .local v0, "connector":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    if-nez v0, :cond_1

    .line 359
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    .end local v0    # "connector":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    invoke-direct {v0, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V

    .line 361
    .restart local v0    # "connector":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->executeWorker(Ljava/lang/Runnable;)V

    .line 365
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract allHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TH;>;"
        }
    .end annotation
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

.method protected abstract connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/net/SocketAddress;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    const/4 v2, 0x0

    .line 316
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    const/4 v5, 0x0

    .line 318
    .local v5, "success":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v2, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    new-instance v1, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 321
    .local v1, "future":Lorg/apache/mina/core/future/ConnectFuture;
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, v6, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v4

    .line 322
    .local v4, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    invoke-virtual {p0, v4, v1, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 324
    invoke-virtual {v4}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    const/4 v5, 0x1

    .line 333
    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    .line 335
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    .end local v1    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    .end local v4    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    :cond_0
    :goto_0
    return-object v1

    .line 336
    .restart local v1    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    .restart local v2    # "handle":Ljava/lang/Object;, "TH;"
    .restart local v4    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    .end local v4    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TT;"
    :cond_1
    const/4 v5, 0x1

    .line 333
    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 335
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 342
    :cond_2
    :goto_1
    new-instance v3, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    invoke-direct {v3, p0, v2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/lang/Object;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 343
    .local v3, "request":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v6, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    .line 345
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    move-object v1, v3

    .line 347
    goto :goto_0

    .line 336
    .end local v3    # "request":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    :catch_1
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    :catch_2
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 333
    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    .line 335
    :try_start_4
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 336
    :catch_3
    move-exception v0

    .line 337
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    .line 335
    :try_start_5
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 338
    :cond_3
    :goto_2
    throw v6

    .line 336
    :catch_4
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    .line 304
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 305
    return-void
.end method

.method protected abstract finishConnect(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<TT;TH;>.ConnectionRequest;"
        }
    .end annotation
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
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

.method protected abstract newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TT;>;TH;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<TT;TH;>.ConnectionRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(I)I
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

.method protected abstract wakeup()V
.end method
