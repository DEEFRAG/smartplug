.class public interface abstract Lorg/apache/mina/core/write/WriteRequest;
.super Ljava/lang/Object;
.source "WriteRequest.java"


# virtual methods
.method public abstract getDestination()Ljava/net/SocketAddress;
.end method

.method public abstract getFuture()Lorg/apache/mina/core/future/WriteFuture;
.end method

.method public abstract getMessage()Ljava/lang/Object;
.end method

.method public abstract getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;
.end method

.method public abstract isEncoded()Z
.end method
