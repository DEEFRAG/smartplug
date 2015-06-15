.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;,
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final WRITE_SPIN_COUNT:I = 0x100

.field private static final threadIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor",
            "<TS;>.Processor;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field protected wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/mina/core/service/IoProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lorg/apache/mina/core/future/DefaultIoFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->handleNewSessions()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficMask()V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeSessions()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->notifyIdleSessions(J)V

    return-void
.end method

.method private addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v4, 0x0

    .line 510
    .local v4, "registered":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->init(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 511
    const/4 v4, 0x1

    .line 514
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/service/IoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v0

    .line 515
    .local v0, "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 520
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v3

    .line 521
    .local v3, "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    invoke-virtual {v3, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0    # "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .end local v3    # "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    :goto_0
    return v4

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 526
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    const/4 v4, 0x0

    .line 531
    goto :goto_0

    .line 527
    :catch_1
    move-exception v2

    .line 528
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    const/4 v4, 0x0

    .line 531
    goto :goto_0

    .line 530
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const/4 v4, 0x0

    throw v5
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 10
    .param p0, "barray"    # [B

    .prologue
    const/16 v9, 0x9

    .line 727
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v3, v8, [C

    .line 728
    .local v3, "c":[C
    const/4 v6, 0x0

    .line 730
    .local v6, "pos":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v7, v6

    .end local v6    # "pos":I
    .local v7, "pos":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-byte v1, v0, v4

    .line 731
    .local v1, "b":B
    and-int/lit16 v8, v1, 0xff

    shr-int/lit8 v2, v8, 0x4

    .line 732
    .local v2, "bb":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    if-le v2, v9, :cond_0

    add-int/lit8 v8, v2, 0x37

    :goto_1
    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 733
    and-int/lit8 v2, v1, 0xf

    .line 734
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    if-le v2, v9, :cond_1

    add-int/lit8 v8, v2, 0x37

    :goto_2
    int-to-char v8, v8

    aput-char v8, v3, v6

    .line 735
    const/16 v8, 0x3c

    if-le v7, v8, :cond_2

    move v6, v7

    .line 740
    .end local v1    # "b":B
    .end local v2    # "bb":I
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :goto_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([C)V

    return-object v8

    .line 732
    .restart local v1    # "b":B
    .restart local v2    # "bb":I
    :cond_0
    add-int/lit8 v8, v2, 0x30

    goto :goto_1

    .line 734
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    :cond_1
    add-int/lit8 v8, v2, 0x30

    goto :goto_2

    .line 730
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "b":B
    .end local v2    # "bb":I
    :cond_3
    move v6, v7

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_3
.end method

.method private clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v8

    .line 596
    .local v8, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v2, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v8, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    .local v7, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v7, :cond_2

    .line 599
    invoke-interface {v7}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v5

    .line 601
    .local v5, "message":Ljava/lang/Object;
    instance-of v9, v5, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v9, :cond_1

    move-object v0, v5

    .line 602
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 606
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 607
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 608
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-interface {v8, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 619
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 611
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v7}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 614
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v5    # "message":Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 625
    new-instance v1, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v1, v2}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 627
    .local v1, "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/write/WriteRequest;

    .line 628
    .local v6, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-virtual {p1, v6}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 629
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 632
    .end local v6    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 633
    .restart local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 635
    .end local v1    # "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 974
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 975
    .local v0, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v0, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 976
    return-void
.end method

.method private flush(J)V
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    .line 755
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 762
    .local v3, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    .line 771
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v4

    .line 773
    .local v4, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v5, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v4}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 802
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 776
    :pswitch_0
    :try_start_0
    invoke-direct {p0, v3, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v2

    .line 778
    .local v2, "flushedAll":Z
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v5

    if-nez v5, :cond_2

    .line 780
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v2    # "flushedAll":Z
    :cond_2
    :goto_1
    :pswitch_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 784
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 785
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 798
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    goto :goto_0

    .line 773
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 14
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 811
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    .line 814
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v3

    .line 816
    .local v3, "hasFragmentation":Z
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v12

    .line 821
    .local v12, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    add-int v10, v0, v1

    .line 823
    .local v10, "maxWrittenBytes":I
    const/4 v13, 0x0

    .line 824
    .local v13, "writtenBytes":I
    const/4 v2, 0x0

    .line 828
    .local v2, "req":Lorg/apache/mina/core/write/WriteRequest;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 832
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    .line 834
    if-nez v2, :cond_3

    .line 835
    invoke-interface {v12, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    .line 837
    if-nez v2, :cond_2

    .line 900
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 844
    :cond_3
    const/4 v9, 0x0

    .line 845
    .local v9, "localWrittenBytes":I
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v11

    .line 847
    .local v11, "message":Ljava/lang/Object;
    instance-of v0, v11, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_4

    .line 848
    sub-int v4, v10, v13

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v9

    .line 851
    if-lez v9, :cond_7

    check-cast v11, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v11    # "message":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 853
    add-int/2addr v13, v9

    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 855
    const/4 v0, 0x0

    goto :goto_0

    .line 857
    .restart local v11    # "message":Ljava/lang/Object;
    :cond_4
    instance-of v0, v11, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v0, :cond_5

    .line 858
    sub-int v4, v10, v13

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v9

    .line 866
    if-lez v9, :cond_7

    check-cast v11, Lorg/apache/mina/core/file/FileRegion;

    .end local v11    # "message":Ljava/lang/Object;
    invoke-interface {v11}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 867
    add-int/2addr v13, v9

    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 869
    const/4 v0, 0x0

    goto :goto_0

    .line 872
    .restart local v11    # "message":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t know how to handle message of type \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v9    # "localWrittenBytes":I
    .end local v11    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 891
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6

    .line 892
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 895
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v8

    .line 896
    .local v8, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v8, v7}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 897
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 876
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .restart local v9    # "localWrittenBytes":I
    :cond_7
    if-nez v9, :cond_8

    .line 878
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 879
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 882
    :cond_8
    add-int/2addr v13, v9

    .line 884
    if-lt v13, v10, :cond_9

    .line 886
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 889
    :cond_9
    if-lt v13, v10, :cond_1

    goto/16 :goto_1
.end method

.method private handleNewSessions()I
    .locals 3

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v0, 0x0

    .line 487
    .local v0, "addedSessions":I
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_1

    .line 488
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    add-int/lit8 v0, v0, 0x1

    .line 487
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 494
    :cond_1
    return v0
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    .local v2, "threadId":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_0

    .line 155
    const/4 v1, 0x1

    .line 162
    .local v1, "newThreadId":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    .end local v1    # "newThreadId":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .restart local v1    # "newThreadId":I
    goto :goto_0
.end method

.method private notifyIdleSessions(J)V
    .locals 4
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 746
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    .line 747
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 749
    :cond_0
    return-void
.end method

.method private process()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 640
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 641
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 643
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_0
    return-void
.end method

.method private process(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 655
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_1
    return-void
.end method

.method private read(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    .line 665
    .local v2, "config":Lorg/apache/mina/core/session/IoSessionConfig;
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    .line 666
    .local v1, "bufferSize":I
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 668
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v5

    .line 671
    .local v5, "hasFragmentation":Z
    const/4 v6, 0x0

    .line 675
    .local v6, "readBytes":I
    if-eqz v5, :cond_4

    .line 677
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v7

    .local v7, "ret":I
    if-lez v7, :cond_1

    .line 678
    add-int/2addr v6, v7

    .line 680
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 692
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 695
    if-lez v6, :cond_2

    .line 696
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 697
    .local v4, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 698
    const/4 v0, 0x0

    .line 700
    if-eqz v5, :cond_2

    .line 701
    shl-int/lit8 v8, v6, 0x1

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 702
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseReadBufferSize()V

    .line 709
    .end local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_2
    :goto_1
    if-gez v7, :cond_3

    .line 710
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    .end local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local v7    # "ret":I
    :cond_3
    :goto_2
    return-void

    .line 685
    .restart local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 687
    .restart local v7    # "ret":I
    if-lez v7, :cond_1

    .line 688
    move v6, v7

    goto :goto_0

    .line 692
    .end local v7    # "ret":I
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 712
    :catch_0
    move-exception v3

    .line 713
    .local v3, "e":Ljava/lang/Throwable;
    instance-of v8, v3, Ljava/io/IOException;

    if-eqz v8, :cond_6

    .line 714
    instance-of v8, v3, Ljava/net/PortUnreachableException;

    if-eqz v8, :cond_5

    const-class v8, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    check-cast v2, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .end local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 717
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 721
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 722
    .restart local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 703
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local v7    # "ret":I
    :cond_7
    :try_start_4
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v8

    if-ne v6, v8, :cond_2

    .line 704
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBufferSize()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 580
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    const/4 v3, 0x1

    .line 586
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    move v2, v3

    .line 589
    :goto_0
    return v2

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 584
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 589
    const/4 v2, 0x0

    goto :goto_0

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    throw v3
.end method

.method private removeSessions()I
    .locals 5

    .prologue
    .line 538
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v0, 0x0

    .line 540
    .local v0, "removedSessions":I
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 544
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 569
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 540
    :cond_0
    :goto_1
    :pswitch_1
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 562
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    .end local v2    # "state":Lorg/apache/mina/core/session/SessionState;
    :cond_1
    return v0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_0
    return-void
.end method

.method private scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private startupProcessor()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v2, 0x0

    .line 442
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .line 444
    .local v0, "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .end local v0    # "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    invoke-direct {v0, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V

    .line 447
    .restart local v0    # "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 455
    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    .prologue
    .line 982
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v0

    .line 984
    .local v0, "queueSize":I
    :goto_0
    if-lez v0, :cond_0

    .line 985
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 987
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v1, :cond_1

    .line 1021
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_0
    return-void

    .line 992
    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 994
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1012
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 996
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1019
    :goto_1
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 1020
    goto :goto_0

    .line 1008
    :pswitch_2
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 6
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 906
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v3, 0x0

    .line 908
    .local v3, "localWrittenBytes":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 911
    if-eqz p3, :cond_3

    .line 912
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 918
    .local v2, "length":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 927
    .end local v2    # "length":I
    :cond_0
    :goto_1
    invoke-virtual {p1, v3, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 929
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p3, :cond_2

    if-eqz v3, :cond_2

    .line 931
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 932
    .local v4, "pos":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 934
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 937
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 940
    .end local v4    # "pos":I
    :cond_2
    return v3

    .line 914
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .restart local v2    # "length":I
    goto :goto_0

    .line 919
    :catch_0
    move-exception v1

    .line 922
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_1
.end method

.method private writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 9
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const-wide/16 v7, 0x0

    .line 946
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/file/FileRegion;

    .line 948
    .local v2, "region":Lorg/apache/mina/core/file/FileRegion;
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    .line 951
    if-eqz p3, :cond_2

    .line 952
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v3

    int-to-long v5, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .line 957
    .local v0, "length":I
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result v1

    .line 958
    .local v1, "localWrittenBytes":I
    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    .line 963
    .end local v0    # "length":I
    :goto_1
    invoke-virtual {p1, v1, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 965
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 966
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 969
    :cond_1
    return v1

    .line 954
    .end local v1    # "localWrittenBytes":I
    :cond_2
    const-wide/32 v3, 0x7fffffff

    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .restart local v0    # "length":I
    goto :goto_0

    .line 960
    .end local v0    # "length":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "localWrittenBytes":I
    goto :goto_1
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 395
    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v2, 0x1

    .line 183
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    .line 189
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 193
    iput-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract doDispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 419
    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/session/SessionState;"
        }
    .end annotation
.end method

.method protected abstract init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isBrokenConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method protected abstract isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isSelectorEmpty()Z
.end method

.method protected abstract isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract registerNewSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 402
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 403
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
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

.method protected abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
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

.method protected abstract transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/file/FileRegion;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1029
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1042
    :goto_3
    return-void

    :cond_0
    move v4, v3

    .line 1029
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1032
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_1
    move v2, v3

    .line 1036
    goto :goto_2

    .line 1038
    :catch_1
    move-exception v0

    .line 1039
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1040
    .restart local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficMask(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 435
    return-void
.end method

.method protected abstract wakeup()V
.end method

.method protected abstract write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
