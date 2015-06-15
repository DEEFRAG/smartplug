.class public interface abstract Lorg/apache/mina/core/future/ConnectFuture;
.super Ljava/lang/Object;
.source "ConnectFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# virtual methods
.method public abstract addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public abstract await()Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;
.end method

.method public abstract cancel()V
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getSession()Lorg/apache/mina/core/session/IoSession;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method

.method public abstract setSession(Lorg/apache/mina/core/session/IoSession;)V
.end method
