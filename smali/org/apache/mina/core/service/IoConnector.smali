.class public interface abstract Lorg/apache/mina/core/service/IoConnector;
.super Ljava/lang/Object;
.source "IoConnector.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoService;


# virtual methods
.method public abstract connect()Lorg/apache/mina/core/future/ConnectFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public abstract connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public abstract getConnectTimeout()I
.end method

.method public abstract getConnectTimeoutMillis()J
.end method

.method public abstract getDefaultRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setConnectTimeoutMillis(J)V
.end method

.method public abstract setDefaultRemoteAddress(Ljava/net/SocketAddress;)V
.end method
