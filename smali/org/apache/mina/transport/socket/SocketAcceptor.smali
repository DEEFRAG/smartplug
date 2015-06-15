.class public interface abstract Lorg/apache/mina/transport/socket/SocketAcceptor;
.super Ljava/lang/Object;
.source "SocketAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoAcceptor;


# virtual methods
.method public abstract getBacklog()I
.end method

.method public abstract getDefaultLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract setBacklog(I)V
.end method

.method public abstract setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract setReuseAddress(Z)V
.end method
