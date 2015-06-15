.class public interface abstract Lorg/apache/mina/core/future/CloseFuture;
.super Ljava/lang/Object;
.source "CloseFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# virtual methods
.method public abstract addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation
.end method

.method public abstract await()Lorg/apache/mina/core/future/CloseFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation
.end method

.method public abstract setClosed()V
.end method
