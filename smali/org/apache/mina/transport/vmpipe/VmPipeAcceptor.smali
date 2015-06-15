.class public final Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "VmPipeAcceptor.java"


# static fields
.field static final boundHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            "Lorg/apache/mina/transport/vmpipe/VmPipe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 62
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 63
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    const-string v1, "idleStatusChecker"

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v7, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    sget-object v9, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v9

    .line 107
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 108
    .local v1, "a":Ljava/net/SocketAddress;
    move-object v0, v1

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-object v5, v0

    .line 109
    .local v5, "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v8

    if-nez v8, :cond_3

    .line 110
    :cond_0
    const/4 v5, 0x0

    .line 111
    const/16 v3, 0x2710

    .local v3, "i":I
    :goto_1
    const v8, 0x7fffffff

    if-ge v3, v8, :cond_1

    .line 112
    new-instance v6, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    invoke-direct {v6, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    .line 113
    .local v6, "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 115
    move-object v5, v6

    .line 120
    .end local v6    # "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_1
    if-nez v5, :cond_5

    .line 121
    new-instance v8, Ljava/io/IOException;

    const-string v10, "No port available."

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    .end local v1    # "a":Ljava/net/SocketAddress;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 111
    .restart local v1    # "a":Ljava/net/SocketAddress;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .restart local v6    # "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "i":I
    .end local v6    # "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v8

    if-gez v8, :cond_4

    .line 124
    new-instance v8, Ljava/io/IOException;

    const-string v10, "Bind port number must be 0 or above."

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 125
    :cond_4
    sget-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 126
    new-instance v8, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Address already bound: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    :cond_5
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "a":Ljava/net/SocketAddress;
    .end local v5    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_6
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 133
    .restart local v1    # "a":Ljava/net/SocketAddress;
    move-object v0, v1

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-object v5, v0

    .line 134
    .restart local v5    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 135
    sget-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    new-instance v10, Lorg/apache/mina/transport/vmpipe/VmPipe;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v11

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v12

    invoke-direct {v10, p0, v5, v11, v12}, Lorg/apache/mina/transport/vmpipe/VmPipe;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/core/service/IoServiceListenerSupport;)V

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    :cond_7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    .line 139
    .local v2, "a2":Ljava/net/SocketAddress;
    sget-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 141
    .end local v2    # "a2":Ljava/net/SocketAddress;
    :cond_8
    new-instance v8, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate local address: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    .end local v1    # "a":Ljava/net/SocketAddress;
    .end local v5    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-object v7
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    .line 99
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->unbind()V

    .line 100
    return-void
.end method

.method doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 164
    return-void
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultLocalAddress(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)V
    .locals 0
    .param p1, "localAddress"    # Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 93
    return-void
.end method

.method protected unbind0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v3

    .line 152
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 153
    .local v0, "a":Ljava/net/SocketAddress;
    sget-object v2, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    return-void
.end method
