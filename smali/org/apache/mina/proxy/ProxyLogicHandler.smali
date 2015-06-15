.class public interface abstract Lorg/apache/mina/proxy/ProxyLogicHandler;
.super Ljava/lang/Object;
.source "ProxyLogicHandler.java"


# virtual methods
.method public abstract doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method public abstract enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
.end method

.method public abstract isHandshakeComplete()Z
.end method

.method public abstract messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method
