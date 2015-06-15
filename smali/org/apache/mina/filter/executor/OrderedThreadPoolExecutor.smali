.class public Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "OrderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;,
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;,
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_THREAD_POOL_SIZE:I = 0x0

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1e

.field private static final DEFAULT_MAX_THREAD_POOL:I = 0x10

.field private static final EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

.field static LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private completedTaskCount:J

.field private final eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile shutdown:Z

.field private final waitingSessions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    .line 67
    new-instance v0, Lorg/apache/mina/core/session/DummySession;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 94
    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 96
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 108
    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 110
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .prologue
    .line 122
    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 124
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 140
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 174
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 175
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 194
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, p0

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 70
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "tasksQueue"

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    .line 73
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 197
    if-gez p1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corePoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    if-ge p2, p1, :cond_2

    .line 202
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximumPoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 207
    invoke-super {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 210
    if-nez p7, :cond_3

    .line 211
    sget-object v1, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_3
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 156
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$914(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method private addWorker()V
    .locals 5

    .prologue
    .line 257
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 259
    monitor-exit v3

    .line 277
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    .line 264
    .local v1, "worker":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 267
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    if-le v2, v4, :cond_1

    .line 274
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iput v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    .line 276
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v1    # "worker":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 284
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 288
    :cond_1
    monitor-exit v1

    .line 290
    :cond_2
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 514
    instance-of v0, p1, Lorg/apache/mina/core/session/IoEvent;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must be an IoEvent or its subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    return-void
.end method

.method private getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 222
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 224
    .local v1, "queue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .end local v1    # "queue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    .line 226
    .restart local v1    # "queue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 229
    .local v0, "oldQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    if-eqz v0, :cond_0

    .line 230
    move-object v1, v0

    .line 234
    .end local v0    # "oldQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    :cond_0
    return-object v1
.end method

.method private print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 7
    .param p2, "event"    # Lorg/apache/mina/core/session/IoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/apache/mina/core/session/IoEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Adding event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, "first":Z
    const-string v4, "\nQueue : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 434
    .local v0, "elem":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 435
    const/4 v1, 0x0

    .line 440
    :goto_1
    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .end local v0    # "elem":Ljava/lang/Runnable;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    .restart local v0    # "elem":Ljava/lang/Runnable;
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 442
    .end local v0    # "elem":Ljava/lang/Runnable;
    :cond_1
    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    sget-object v4, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 511
    return-void
.end method

.method private removeWorker()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 295
    monitor-exit v1

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 338
    .local v0, "deadline":J
    iget-object v5, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v5

    .line 339
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 341
    .local v2, "waitTime":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 347
    .end local v2    # "waitTime":J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v4

    return v4

    .line 345
    .restart local v2    # "waitTime":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 347
    .end local v2    # "waitTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 451
    iget-boolean v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v6, :cond_0

    .line 452
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    move-object v0, p1

    .line 458
    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 461
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    .line 464
    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v4

    .line 465
    .local v4, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v5

    .line 472
    .local v5, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v6, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v1

    .line 474
    .local v1, "offerEvent":Z
    if-eqz v1, :cond_5

    .line 476
    monitor-enter v5

    .line 478
    :try_start_0
    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 480
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 481
    const/4 v6, 0x0

    # setter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z
    invoke-static {v4, v6}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    .line 482
    const/4 v2, 0x1

    .line 487
    .local v2, "offerSession":Z
    :goto_0
    sget-object v6, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    invoke-direct {p0, v5, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V

    .line 490
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_1
    if-eqz v2, :cond_2

    .line 499
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 502
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorkerIfNecessary()V

    .line 504
    if-eqz v1, :cond_3

    .line 505
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v6, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 507
    :cond_3
    return-void

    .line 484
    .end local v2    # "offerSession":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "offerSession":Z
    goto :goto_0

    .line 490
    .end local v2    # "offerSession":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 492
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "offerSession":Z
    goto :goto_1
.end method

.method public getActiveCount()I
    .locals 3

    .prologue
    .line 524
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompletedTaskCount()J
    .locals 8

    .prologue
    .line 534
    iget-object v5, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v5

    .line 535
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    .line 536
    .local v0, "answer":J
    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    .line 537
    .local v3, "w":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J
    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_0

    .line 540
    .end local v3    # "w":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    :cond_0
    monitor-exit v5

    return-wide v0

    .line 541
    .end local v0    # "answer":J
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 659
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTerminating()Z
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prestartAllCoreThreads()I
    .locals 5

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "answer":I
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v3

    .line 587
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    sub-int v1, v2, v4

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 588
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 589
    add-int/lit8 v0, v0, 0x1

    .line 587
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 591
    :cond_0
    monitor-exit v3

    .line 592
    return v0

    .line 591
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prestartCoreThread()Z
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 602
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 603
    const/4 v0, 0x1

    monitor-exit v1

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public purge()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    move-object v0, p1

    .line 632
    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 633
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 634
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v5, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v2, v5}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 635
    .local v3, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v4

    .line 637
    .local v4, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    if-nez v3, :cond_1

    .line 638
    const/4 v1, 0x0

    .line 651
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    monitor-enter v4

    .line 644
    :try_start_0
    invoke-interface {v4, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 645
    .local v1, "removed":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v5

    invoke-interface {v5, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    goto :goto_0

    .line 645
    .end local v1    # "removed":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setCorePoolSize(I)V
    .locals 4
    .param p1, "corePoolSize"    # I

    .prologue
    .line 667
    if-gez p1, :cond_0

    .line 668
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corePoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 671
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 675
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 676
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    sub-int v0, v1, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 677
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 676
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 680
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 681
    monitor-exit v2

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumPoolSize(I)V
    .locals 4
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 314
    if-lez p1, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximumPoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 320
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 321
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int v0, v1, p1

    .line 322
    .local v0, "difference":I
    :goto_0
    if-lez v0, :cond_2

    .line 323
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 324
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 326
    :cond_2
    monitor-exit v2

    .line 327
    return-void

    .line 326
    .end local v0    # "difference":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 250
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 378
    iget-boolean v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    .line 384
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 385
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 386
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown()V

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IoSession;

    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    if-eqz v3, :cond_2

    .line 402
    sget-object v6, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    if-ne v3, v6, :cond_0

    .line 403
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v3, v6}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 410
    .local v4, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v7

    monitor-enter v7

    .line 412
    :try_start_0
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 413
    .local v5, "task":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v8

    move-object v0, v5

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    move-object v6, v0

    invoke-interface {v8, p0, v6}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 414
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 417
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->clear()V

    .line 418
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    :cond_2
    return-object v1
.end method
