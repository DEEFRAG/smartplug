.class public interface abstract Lorg/apache/mina/core/future/ReadFuture;
.super Ljava/lang/Object;
.source "ReadFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# virtual methods
.method public abstract addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation
.end method

.method public abstract await()Lorg/apache/mina/core/future/ReadFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getMessage()Ljava/lang/Object;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isRead()Z
.end method

.method public abstract removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation
.end method

.method public abstract setClosed()V
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method

.method public abstract setRead(Ljava/lang/Object;)V
.end method
