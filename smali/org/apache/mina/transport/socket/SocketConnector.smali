.class public interface abstract Lorg/apache/mina/transport/socket/SocketConnector;
.super Ljava/lang/Object;
.source "SocketConnector.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoConnector;


# virtual methods
.method public abstract getDefaultRemoteAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
.end method

.method public abstract setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
.end method
