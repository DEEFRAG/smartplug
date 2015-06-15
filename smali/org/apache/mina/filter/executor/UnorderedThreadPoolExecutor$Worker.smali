.class Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "UnorderedThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private volatile completedTaskCount:J

.field final synthetic this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    .prologue
    .line 403
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    return-wide v0
.end method

.method private fetchTask()Ljava/lang/Runnable;
    .locals 11

    .prologue
    .line 450
    const/4 v6, 0x0

    .line 451
    .local v6, "task":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 452
    .local v1, "currentTime":J
    iget-object v9, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    add-long v3, v1, v9

    .line 455
    .local v3, "deadline":J
    :goto_0
    sub-long v7, v3, v1

    .line 456
    .local v7, "waitTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    .line 473
    :cond_0
    :goto_1
    return-object v6

    .line 461
    :cond_1
    :try_start_0
    iget-object v9, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-virtual {v9}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v7, v8, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-nez v6, :cond_0

    .line 465
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_1

    .line 464
    :catchall_0
    move-exception v9

    if-nez v6, :cond_2

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_2
    throw v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    :catch_0
    move-exception v5

    .line 470
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 477
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    # invokes: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    invoke-static {v2, v3, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 478
    const/4 v1, 0x0

    .line 480
    .local v1, "ran":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 481
    const/4 v1, 0x1

    .line 482
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    const/4 v3, 0x0

    # invokes: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    invoke-static {v2, p1, v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 483
    iget-wide v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_0

    .line 486
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # invokes: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    invoke-static {v2, p1, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 488
    :cond_0
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 413
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->fetchTask()Ljava/lang/Runnable;

    move-result-object v1

    .line 415
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 417
    if-nez v1, :cond_2

    .line 418
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I
    invoke-static {v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I

    move-result v4

    if-le v2, v4, :cond_1

    .line 421
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 422
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 442
    :try_start_2
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-wide v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    # += operator for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J
    invoke-static {v2, v4, v5}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$714(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 444
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 445
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 447
    return-void

    .line 424
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 427
    :cond_2
    :try_start_4
    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;
    invoke-static {}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$500()Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 432
    if-eqz v1, :cond_3

    .line 433
    :try_start_5
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    move-object v0, v1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 434
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 437
    :cond_3
    :try_start_6
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 441
    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 442
    :try_start_7
    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-wide v5, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    # += operator for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J
    invoke-static {v4, v5, v6}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$714(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 444
    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 445
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2

    .line 424
    .restart local v1    # "task":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 437
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 445
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method
