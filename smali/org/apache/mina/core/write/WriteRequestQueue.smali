.class public interface abstract Lorg/apache/mina/core/write/WriteRequestQueue;
.super Ljava/lang/Object;
.source "WriteRequestQueue.java"


# virtual methods
.method public abstract clear(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract dispose(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
.end method

.method public abstract offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
.end method

.method public abstract size()I
.end method
