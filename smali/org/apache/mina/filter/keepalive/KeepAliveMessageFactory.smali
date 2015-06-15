.class public interface abstract Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
.super Ljava/lang/Object;
.source "KeepAliveMessageFactory.java"


# virtual methods
.method public abstract getRequest(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;
.end method

.method public abstract getResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
.end method

.method public abstract isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
.end method
