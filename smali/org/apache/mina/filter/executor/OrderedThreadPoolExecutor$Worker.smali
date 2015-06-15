.class Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "OrderedThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private volatile completedTaskCount:J

.field final synthetic this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    .prologue
    .line 684
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J

    return-wide v0
.end method

.method private fetchSession()Lorg/apache/mina/core/session/IoSession;
    .locals 11

    .prologue
    .line 730
    const/4 v6, 0x0

    .line 731
    .local v6, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 732
    .local v1, "currentTime":J
    iget-object v9, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    add-long v3, v1, v9

    .line 735
    .local v3, "deadline":J
    :goto_0
    sub-long v7, v3, v1

    .line 736
    .local v7, "waitTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    .line 753
    :cond_0
    :goto_1
    return-object v6

    .line 741
    :cond_1
    :try_start_0
    iget-object v9, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v9}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v7, v8, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    if-nez v6, :cond_0

    .line 745
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_1

    .line 744
    :catchall_0
    move-exception v9

    if-nez v6, :cond_2

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_2
    throw v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 748
    :catch_0
    move-exception v5

    .line 750
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 777
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    # invokes: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    invoke-static {v2, v3, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 778
    const/4 v1, 0x0

    .line 780
    .local v1, "ran":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 781
    const/4 v1, 0x1

    .line 782
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    const/4 v3, 0x0

    # invokes: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    invoke-static {v2, p1, v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 783
    iget-wide v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_0

    .line 786
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # invokes: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    invoke-static {v2, p1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 788
    :cond_0
    throw v0
.end method

.method private runTasks(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)V
    .locals 5
    .param p1, "sessionTasksQueue"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .prologue
    .line 759
    :goto_0
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;
    invoke-static {p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v1

    .line 761
    .local v1, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter v1

    .line 762
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 764
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 765
    const/4 v2, 0x1

    # setter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z
    invoke-static {p1, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    .line 766
    monitor-exit v1

    .line 774
    return-void

    .line 768
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v2, v0

    check-cast v2, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v3, v4, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 772
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 768
    .end local v0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 694
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->fetchSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 696
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 698
    if-nez v0, :cond_2

    .line 699
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-virtual {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 702
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 703
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 722
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 723
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    iget-wide v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J

    # += operator for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J
    invoke-static {v1, v3, v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$914(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J

    .line 724
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 727
    return-void

    .line 705
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 708
    :cond_2
    :try_start_4
    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;
    invoke-static {}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$700()Lorg/apache/mina/core/session/IoSession;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 713
    if-eqz v0, :cond_3

    .line 714
    :try_start_5
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # invokes: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    invoke-static {v1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->runTasks(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 717
    :cond_3
    :try_start_6
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 721
    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 722
    :try_start_7
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 723
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    iget-wide v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:J

    # += operator for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J
    invoke-static {v3, v4, v5}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$914(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J

    .line 724
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 705
    .restart local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 717
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    # getter for: Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 725
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_4
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method
