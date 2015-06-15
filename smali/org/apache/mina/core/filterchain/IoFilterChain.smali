.class public interface abstract Lorg/apache/mina/core/filterchain/IoFilterChain;
.super Ljava/lang/Object;
.source "IoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    }
.end annotation


# virtual methods
.method public abstract addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
.end method

.method public abstract fireExceptionCaught(Ljava/lang/Throwable;)V
.end method

.method public abstract fireFilterClose()V
.end method

.method public abstract fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract fireMessageReceived(Ljava/lang/Object;)V
.end method

.method public abstract fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract fireSessionClosed()V
.end method

.method public abstract fireSessionCreated()V
.end method

.method public abstract fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
.end method

.method public abstract fireSessionOpened()V
.end method

.method public abstract get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllReversed()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
.end method

.method public abstract getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
.end method

.method public abstract getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;"
        }
    .end annotation
.end method

.method public abstract getNextFilter(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
.end method

.method public abstract getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
.end method

.method public abstract getSession()Lorg/apache/mina/core/session/IoSession;
.end method

.method public abstract remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
.end method

.method public abstract remove(Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
.end method

.method public abstract replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method
