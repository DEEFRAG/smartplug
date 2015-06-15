.class public interface abstract Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
.super Ljava/lang/Object;
.source "IoFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/IoFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NextFilter"
.end annotation


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
.end method

.method public abstract filterClose(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
.end method

.method public abstract messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
.end method

.method public abstract sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
.end method
