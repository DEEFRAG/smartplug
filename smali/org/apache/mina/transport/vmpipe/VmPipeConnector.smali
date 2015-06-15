.class public final Lorg/apache/mina/transport/vmpipe/VmPipeConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "VmPipeConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;,
        Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
    }
.end annotation


# static fields
.field private static final LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static nextLocalPort:I


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    .line 151
    const/4 v0, -0x1

    sput v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    .line 153
    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;)V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;-><init>(Ljava/util/concurrent/Executor;)V

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

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 63
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    const-string v1, "idleStatusChecker"

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    return-object v0
.end method

.method private static nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    monitor-enter v3

    .line 157
    :try_start_0
    sget v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    if-ltz v2, :cond_0

    .line 158
    const/4 v2, -0x1

    sput v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    .line 160
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_2

    .line 161
    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    sget v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    add-int/lit8 v4, v2, -0x1

    sput v4, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    invoke-direct {v0, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    .line 162
    .local v0, "answer":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    sget-object v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v3

    return-object v0

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "answer":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Can\'t assign a local VM pipe port."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 11
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    sget-object v1, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/transport/vmpipe/VmPipe;

    .line 83
    .local v5, "entry":Lorg/apache/mina/transport/vmpipe/VmPipe;
    if-nez v5, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Endpoint unavailable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v8

    .line 140
    :goto_0
    return-object v8

    .line 88
    :cond_0
    new-instance v8, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v8}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 93
    .local v8, "future":Lorg/apache/mina/core/future/DefaultConnectFuture;
    :try_start_0
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .local v3, "actualLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoServiceListenerSupport;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/transport/vmpipe/VmPipe;)V

    .line 101
    .local v0, "localSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    invoke-virtual {p0, v0, v8, p3}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 108
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    .line 109
    .local v7, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v1

    invoke-interface {v1, v7}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 113
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v9

    .line 121
    .local v9, "remoteSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    invoke-virtual {v9}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 123
    :try_start_2
    invoke-virtual {v9}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    .line 124
    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v1

    invoke-interface {v1, v7}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 128
    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 129
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v1, v9}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    .line 138
    invoke-virtual {v9}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    goto :goto_0

    .line 94
    .end local v0    # "localSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .end local v3    # "actualLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .end local v7    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .end local v9    # "remoteSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v8

    goto :goto_0

    .line 114
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "localSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .restart local v3    # "actualLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :catch_1
    move-exception v10

    .line 115
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {v8, v10}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 130
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v7    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .restart local v9    # "remoteSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    :catch_2
    move-exception v10

    .line 131
    .restart local v10    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_1
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    .line 147
    return-void
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

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
