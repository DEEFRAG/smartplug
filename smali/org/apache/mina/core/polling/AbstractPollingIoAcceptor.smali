.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "AbstractPollingIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;,
        Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
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


# instance fields
.field private acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor",
            "<TS;TH;>.Acceptor;>;"
        }
    .end annotation
.end field

.field protected backlog:I

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/SocketAddress;",
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

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

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

.field protected reuseAddress:Z

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
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v1, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 117
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
            "<TS;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v1, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 137
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
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 175
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
            "<TS;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v2, 0x1

    .line 199
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 71
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 77
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    .line 79
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    .line 84
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 90
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 98
    const/16 v1, 0x32

    iput v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 201
    if-nez p3, :cond_0

    .line 202
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "processor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 206
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->init()V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v1, :cond_1

    .line 222
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v2, :cond_2

    .line 222
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    :cond_2
    :goto_1
    throw v1

    .line 217
    :catch_2
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 224
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
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 154
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "x2"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "x3"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unregisterHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method private registerHandles()I
    .locals 9

    .prologue
    .line 547
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 549
    .local v2, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v2, :cond_2

    .line 550
    const/4 v7, 0x0

    .line 588
    :cond_1
    :goto_1
    return v7

    .line 556
    :cond_2
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 557
    .local v6, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;TH;>;"
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v5

    .line 561
    .local v5, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 562
    .local v0, "a":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    .line 563
    .local v3, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 573
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 579
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 581
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 582
    :catch_1
    move-exception v1

    .line 583
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 568
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_3
    :try_start_3
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 571
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 572
    invoke-interface {v6}, Ljava/util/Map;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 578
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 579
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 581
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_4
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 582
    :catch_2
    move-exception v1

    .line 583
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    goto/16 :goto_1

    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 579
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 581
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_5
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 582
    :catch_3
    move-exception v1

    .line 583
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    throw v7
.end method

.method private startupAcceptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    const/4 v2, 0x0

    .line 372
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 374
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    .line 380
    .local v0, "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    if-nez v0, :cond_1

    .line 381
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 382
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    .end local v0    # "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    invoke-direct {v0, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V

    .line 384
    .restart local v0    # "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method private unregisterHandles()I
    .locals 7

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    const/4 v1, 0x0

    .line 603
    .local v1, "cancelledHandles":I
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 604
    .local v3, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v3, :cond_0

    .line 629
    return v1

    .line 609
    :cond_0
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 610
    .local v0, "a":Ljava/net/SocketAddress;
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 612
    .local v4, "handle":Ljava/lang/Object;, "TH;"
    if-eqz v4, :cond_1

    .line 617
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 623
    goto :goto_1

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 623
    goto :goto_1

    .line 622
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    add-int/lit8 v1, v1, 0x1

    throw v6

    .line 626
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/lang/Object;, "TH;"
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;TH;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

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
    .line 316
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v3, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v3, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 321
    .local v3, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 331
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 334
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 343
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 345
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    throw v4

    .line 339
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 352
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 354
    .local v2, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

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

    .line 355
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
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
    .line 302
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unbind()V

    .line 304
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 305
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 306
    return-void
.end method

.method public getBacklog()I
    .locals 1

    .prologue
    .line 644
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    return v0
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 665
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    return v0
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

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 637
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

.method protected abstract select()I
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

.method public setBacklog(I)V
    .locals 3
    .param p1, "backlog"    # I

    .prologue
    .line 651
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 657
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 658
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 672
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 678
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 679
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
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
    .line 398
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 401
    .local v0, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 403
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 405
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 406
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 409
    :cond_0
    return-void
.end method

.method protected abstract wakeup()V
.end method
