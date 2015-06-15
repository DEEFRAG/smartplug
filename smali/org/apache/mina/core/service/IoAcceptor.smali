.class public interface abstract Lorg/apache/mina/core/service/IoAcceptor;
.super Ljava/lang/Object;
.source "IoAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoService;


# virtual methods
.method public abstract bind()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract bind(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract bind([Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getDefaultLocalAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getLocalAddresses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCloseOnDeactivation()Z
.end method

.method public abstract newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
.end method

.method public abstract setCloseOnDeactivation(Z)V
.end method

.method public abstract setDefaultLocalAddress(Ljava/net/SocketAddress;)V
.end method

.method public abstract setDefaultLocalAddresses(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
.end method

.method public abstract setDefaultLocalAddresses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbind()V
.end method

.method public abstract unbind(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbind(Ljava/net/SocketAddress;)V
.end method

.method public varargs abstract unbind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
.end method
