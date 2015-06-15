.class public interface abstract Lorg/apache/mina/transport/socket/DatagramAcceptor;
.super Ljava/lang/Object;
.source "DatagramAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoAcceptor;


# virtual methods
.method public abstract getDefaultLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
.end method

.method public abstract setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
.end method
