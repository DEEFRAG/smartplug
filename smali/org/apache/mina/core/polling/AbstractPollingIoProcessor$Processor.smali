.class Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1050
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .prologue
    .line 1050
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;

    .prologue
    .line 1050
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 1052
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    sget-boolean v17, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1054
    :cond_0
    const/4 v10, 0x0

    .line 1055
    .local v10, "nSessions":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    # setter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J
    invoke-static/range {v17 .. v19}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    .line 1063
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1064
    .local v13, "t0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v19}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->select(J)I

    move-result v11

    .line 1065
    .local v11, "selected":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1066
    .local v15, "t1":J
    sub-long v6, v15, v13

    .line 1068
    .local v6, "delta":J
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_5

    const-wide/16 v17, 0x64

    cmp-long v17, v6, v17

    if-gez v17, :cond_5

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isBrokenConnection()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1072
    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v17

    const-string v18, "Broken connection"

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1155
    .end local v6    # "delta":J
    .end local v11    # "selected":I
    .end local v13    # "t0":J
    .end local v15    # "t1":J
    :catch_0
    move-exception v3

    .line 1170
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1171
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->doDispose()V

    .line 1174
    :cond_3
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    .line 1180
    :goto_1
    return-void

    .line 1080
    .restart local v6    # "delta":J
    .restart local v11    # "selected":I
    .restart local v13    # "t0":J
    .restart local v15    # "t1":J
    :cond_4
    :try_start_3
    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Create a new selector. Selected is 0, delta = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v15, v13

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->registerNewSelector()V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1158
    .end local v6    # "delta":J
    .end local v11    # "selected":I
    .end local v13    # "t0":J
    .end local v15    # "t1":J
    :catch_1
    move-exception v12

    .line 1159
    .local v12, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 1162
    const-wide/16 v17, 0x3e8

    :try_start_4
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1163
    :catch_2
    move-exception v8

    .line 1164
    .local v8, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1103
    .end local v8    # "e1":Ljava/lang/InterruptedException;
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v6    # "delta":J
    .restart local v11    # "selected":I
    .restart local v13    # "t0":J
    .restart local v15    # "t1":J
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->handleNewSessions()I
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v17

    add-int v10, v10, v17

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficMask()V
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 1109
    if-lez v11, :cond_6

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process()V
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 1115
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1116
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(J)V
    invoke-static {v0, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeSessions()I
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v17

    sub-int v10, v10, v17

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->notifyIdleSessions(J)V
    invoke-static {v0, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 1126
    if-nez v10, :cond_a

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isSelectorEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1131
    sget-boolean v17, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1135
    :cond_7
    sget-boolean v17, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1137
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 1139
    sget-boolean v17, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1143
    :cond_9
    sget-boolean v17, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_a

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1148
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isDisposing()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v18, v0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/mina/core/session/AbstractIoSession;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    invoke-static {v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    goto :goto_2

    .line 1153
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V
    :try_end_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1174
    .end local v4    # "currentTime":J
    .end local v6    # "delta":J
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    .end local v11    # "selected":I
    .end local v13    # "t0":J
    .end local v15    # "t1":J
    :catchall_0
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v17
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1175
    :catch_3
    move-exception v12

    .line 1176
    .restart local v12    # "t":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;
    invoke-static/range {v17 .. v17}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;
    invoke-static/range {v18 .. v18}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    throw v17
.end method
