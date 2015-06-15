.class public interface abstract Lorg/apache/mina/core/future/WriteFuture;
.super Ljava/lang/Object;
.source "WriteFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# virtual methods
.method public abstract addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation
.end method

.method public abstract await()Lorg/apache/mina/core/future/WriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract isWritten()Z
.end method

.method public abstract removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method

.method public abstract setWritten()V
.end method
