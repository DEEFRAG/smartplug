.class Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "AbstractPollingIoAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 417
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V
    .locals 0

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V

    return-void
.end method

.method private processHandles(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TH;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    .local p1, "handles":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    const/4 v4, 0x0

    .line 514
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 520
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v1

    .line 522
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-eqz v1, :cond_0

    .line 526
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    invoke-static {v2, v1, v4, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 529
    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 531
    .end local v0    # "handle":Ljava/lang/Object;, "TH;"
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    sget-boolean v5, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 421
    :cond_0
    const/4 v3, 0x0

    .line 424
    .local v3, "nHandles":I
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 426
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->select()I

    move-result v4

    .line 437
    .local v4, "selected":I
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerHandles()I
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I

    move-result v5

    add-int/2addr v3, v5

    .line 442
    if-nez v3, :cond_7

    .line 443
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 445
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 446
    sget-boolean v5, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    .end local v4    # "selected":I
    :catch_0
    move-exception v0

    .line 481
    :cond_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 482
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    const/4 v6, 0x0

    # setter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    invoke-static {v5, v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z

    .line 484
    :try_start_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 485
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 489
    :cond_2
    :try_start_2
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    :try_start_3
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 491
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 493
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 501
    :cond_4
    :goto_1
    return-void

    .line 450
    .restart local v4    # "selected":I
    :cond_5
    :try_start_4
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 451
    sget-boolean v5, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 469
    .end local v4    # "selected":I
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 473
    const-wide/16 v5, 0x3e8

    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 474
    :catch_2
    move-exception v2

    .line 475
    .local v2, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 455
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    .restart local v4    # "selected":I
    :cond_6
    :try_start_6
    sget-boolean v5, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 458
    :cond_7
    if-lez v4, :cond_8

    .line 461
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->processHandles(Ljava/util/Iterator;)V

    .line 465
    :cond_8
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unregisterHandles()I
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    :try_end_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v5

    sub-int/2addr v3, v5

    goto/16 :goto_0

    .line 493
    .end local v4    # "selected":I
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 494
    :catch_3
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 497
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v5

    .line 488
    :catchall_2
    move-exception v5

    .line 489
    :try_start_a
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 490
    :try_start_b
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 491
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 493
    :cond_9
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 497
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    :goto_2
    throw v5

    .line 493
    :catchall_3
    move-exception v6

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 494
    :catch_4
    move-exception v1

    .line 495
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 497
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v5

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v5
.end method
