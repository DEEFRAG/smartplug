.class public interface abstract Lorg/apache/mina/core/session/IoSession;
.super Ljava/lang/Object;
.source "IoSession.java"


# virtual methods
.method public abstract close()Lorg/apache/mina/core/future/CloseFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract close(Z)Lorg/apache/mina/core/future/CloseFuture;
.end method

.method public abstract containsAttribute(Ljava/lang/Object;)Z
.end method

.method public abstract getAttachment()Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getAttributeKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBothIdleCount()I
.end method

.method public abstract getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;
.end method

.method public abstract getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
.end method

.method public abstract getCreationTime()J
.end method

.method public abstract getCurrentWriteMessage()Ljava/lang/Object;
.end method

.method public abstract getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;
.end method

.method public abstract getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
.end method

.method public abstract getHandler()Lorg/apache/mina/core/service/IoHandler;
.end method

.method public abstract getId()J
.end method

.method public abstract getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I
.end method

.method public abstract getLastBothIdleTime()J
.end method

.method public abstract getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J
.end method

.method public abstract getLastIoTime()J
.end method

.method public abstract getLastReadTime()J
.end method

.method public abstract getLastReaderIdleTime()J
.end method

.method public abstract getLastWriteTime()J
.end method

.method public abstract getLastWriterIdleTime()J
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getReadBytes()J
.end method

.method public abstract getReadBytesThroughput()D
.end method

.method public abstract getReadMessages()J
.end method

.method public abstract getReadMessagesThroughput()D
.end method

.method public abstract getReaderIdleCount()I
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getScheduledWriteBytes()J
.end method

.method public abstract getScheduledWriteMessages()I
.end method

.method public abstract getService()Lorg/apache/mina/core/service/IoService;
.end method

.method public abstract getServiceAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
.end method

.method public abstract getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;
.end method

.method public abstract getWriterIdleCount()I
.end method

.method public abstract getWrittenBytes()J
.end method

.method public abstract getWrittenBytesThroughput()D
.end method

.method public abstract getWrittenMessages()J
.end method

.method public abstract getWrittenMessagesThroughput()D
.end method

.method public abstract isBothIdle()Z
.end method

.method public abstract isClosing()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z
.end method

.method public abstract isReadSuspended()Z
.end method

.method public abstract isReaderIdle()Z
.end method

.method public abstract isWriteSuspended()Z
.end method

.method public abstract isWriterIdle()Z
.end method

.method public abstract read()Lorg/apache/mina/core/future/ReadFuture;
.end method

.method public abstract removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract resumeRead()V
.end method

.method public abstract resumeWrite()V
.end method

.method public abstract setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
.end method

.method public abstract suspendRead()V
.end method

.method public abstract suspendWrite()V
.end method

.method public abstract updateThroughput(JZ)V
.end method

.method public abstract write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
.end method

.method public abstract write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;
.end method
