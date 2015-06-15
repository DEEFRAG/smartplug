.class Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "AbstractPollingConnectionlessIoAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V
    .locals 0

    .prologue
    .line 407
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.Acceptor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;

    .prologue
    .line 407
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.Acceptor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.Acceptor;"
    const/4 v9, 0x1

    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, "nHandles":I
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    # setter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J
    invoke-static {v6, v7, v8}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$302(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)J

    .line 413
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 415
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->select(J)I

    move-result v5

    .line 419
    .local v5, "selected":I
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerHandles()I
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    add-int/2addr v4, v6

    .line 421
    if-nez v4, :cond_3

    .line 423
    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 425
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    const/4 v7, 0x0

    # setter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$902(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;)Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    .end local v5    # "selected":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 459
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    const/4 v7, 0x0

    # setter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z
    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$502(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Z)Z

    .line 461
    :try_start_3
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 465
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)V

    .line 468
    :cond_1
    :goto_2
    return-void

    .line 432
    .restart local v5    # "selected":I
    :cond_2
    :try_start_4
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 436
    :cond_3
    if-lez v5, :cond_4

    .line 437
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    move-result-object v7

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processReadySessions(Ljava/util/Iterator;)V
    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Ljava/util/Iterator;)V

    .line 440
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 441
    .local v1, "currentTime":J
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushSessions(J)V
    invoke-static {v6, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V

    .line 442
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->unregisterHandles()I
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 444
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->notifyIdleSessions(J)V
    invoke-static {v6, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V

    goto/16 :goto_0

    .line 445
    .end local v1    # "currentTime":J
    .end local v5    # "selected":I
    :catch_0
    move-exception v0

    .line 447
    .local v0, "cse":Ljava/nio/channels/ClosedSelectorException;
    goto :goto_1

    .line 432
    .end local v0    # "cse":Ljava/nio/channels/ClosedSelectorException;
    .restart local v5    # "selected":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;
    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    throw v6
    :try_end_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 448
    .end local v5    # "selected":I
    :catch_1
    move-exception v3

    .line 449
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 452
    const-wide/16 v6, 0x3e8

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 453
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 462
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 463
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 465
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)V

    throw v6
.end method
