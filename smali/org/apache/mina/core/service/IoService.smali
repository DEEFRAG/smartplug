.class public interface abstract Lorg/apache/mina/core/service/IoService;
.super Ljava/lang/Object;
.source "IoService.java"


# virtual methods
.method public abstract addListener(Lorg/apache/mina/core/service/IoServiceListener;)V
.end method

.method public abstract broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract dispose(Z)V
.end method

.method public abstract getActivationTime()J
.end method

.method public abstract getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.end method

.method public abstract getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
.end method

.method public abstract getHandler()Lorg/apache/mina/core/service/IoHandler;
.end method

.method public abstract getManagedSessionCount()I
.end method

.method public abstract getManagedSessions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduledWriteBytes()I
.end method

.method public abstract getScheduledWriteMessages()I
.end method

.method public abstract getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
.end method

.method public abstract getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
.end method

.method public abstract getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;
.end method

.method public abstract getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract isDisposing()Z
.end method

.method public abstract removeListener(Lorg/apache/mina/core/service/IoServiceListener;)V
.end method

.method public abstract setFilterChainBuilder(Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;)V
.end method

.method public abstract setHandler(Lorg/apache/mina/core/service/IoHandler;)V
.end method

.method public abstract setSessionDataStructureFactory(Lorg/apache/mina/core/session/IoSessionDataStructureFactory;)V
.end method
