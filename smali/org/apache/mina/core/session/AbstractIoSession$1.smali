.class final Lorg/apache/mina/core/session/AbstractIoSession$1;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/AbstractIoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener",
        "<",
        "Lorg/apache/mina/core/future/CloseFuture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V
    .locals 5
    .param p1, "future"    # Lorg/apache/mina/core/future/CloseFuture;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 83
    invoke-interface {p1}, Lorg/apache/mina/core/future/CloseFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 84
    .local v0, "session":Lorg/apache/mina/core/session/AbstractIoSession;
    # getter for: Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->access$000(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    # getter for: Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->access$100(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 86
    # setter for: Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D
    invoke-static {v0, v2, v3}, Lorg/apache/mina/core/session/AbstractIoSession;->access$202(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 87
    # setter for: Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D
    invoke-static {v0, v2, v3}, Lorg/apache/mina/core/session/AbstractIoSession;->access$302(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 88
    # setter for: Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D
    invoke-static {v0, v2, v3}, Lorg/apache/mina/core/session/AbstractIoSession;->access$402(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 89
    # setter for: Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D
    invoke-static {v0, v2, v3}, Lorg/apache/mina/core/session/AbstractIoSession;->access$502(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 90
    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 81
    check-cast p1, Lorg/apache/mina/core/future/CloseFuture;

    .end local p1    # "x0":Lorg/apache/mina/core/future/IoFuture;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$1;->operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V

    return-void
.end method
