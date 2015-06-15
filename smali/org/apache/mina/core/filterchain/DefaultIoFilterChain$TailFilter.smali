.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "DefaultIoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TailFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;

    .prologue
    .line 638
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 697
    .local v0, "s":Lorg/apache/mina/core/session/AbstractIoSession;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lorg/apache/mina/core/service/IoHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {v0, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    .line 703
    :cond_0
    return-void

    .line 699
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {v0, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_1
    throw v1
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 740
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 741
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 734
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 735
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 708
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 709
    .local v0, "s":Lorg/apache/mina/core/session/AbstractIoSession;
    instance-of v1, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_2

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadMessages(J)V

    .line 716
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lorg/apache/mina/core/service/IoHandler;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {v0, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    .line 722
    :cond_1
    return-void

    :cond_2
    move-object v1, p3

    .line 711
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadMessages(J)V

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 719
    invoke-virtual {v0, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/apache/mina/core/service/IoHandler;->messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 663
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 665
    .local v0, "s":Lorg/apache/mina/core/session/AbstractIoSession;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 668
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 671
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 675
    :try_start_3
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    .line 684
    :cond_0
    return-void

    .line 677
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_1
    throw v1

    .line 673
    :catchall_1
    move-exception v1

    .line 675
    :try_start_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_2
    throw v1

    .line 677
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_3
    throw v1

    .line 670
    :catchall_3
    move-exception v1

    .line 671
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 675
    :try_start_6
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_4
    throw v1

    .line 677
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_5
    throw v1

    .line 673
    :catchall_5
    move-exception v1

    .line 675
    :try_start_7
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_6
    throw v1

    .line 677
    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_7
    throw v1

    .line 667
    :catchall_7
    move-exception v1

    .line 668
    :try_start_8
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 671
    :try_start_9
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 675
    :try_start_a
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_8
    throw v1

    .line 677
    :catchall_8
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_9
    throw v1

    .line 673
    :catchall_9
    move-exception v1

    .line 675
    :try_start_b
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_a
    throw v1

    .line 677
    :catchall_a
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_b
    throw v1

    .line 670
    :catchall_b
    move-exception v1

    .line 671
    :try_start_c
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 675
    :try_start_d
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_c
    throw v1

    .line 677
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_d
    throw v1

    .line 673
    :catchall_d
    move-exception v1

    .line 675
    :try_start_e
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 677
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_e
    throw v1

    .line 677
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 678
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_f
    throw v1
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    sget-object v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    .line 648
    .local v0, "future":Lorg/apache/mina/core/future/ConnectFuture;
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 652
    :cond_0
    return-void

    .line 646
    .end local v0    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    .line 648
    .restart local v0    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    if-eqz v0, :cond_1

    .line 649
    invoke-interface {v0, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 651
    :cond_1
    throw v1
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 689
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 690
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 658
    return-void
.end method
