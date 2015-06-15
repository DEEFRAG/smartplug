.class public Lorg/apache/mina/proxy/ProxyConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "ProxyConnector.java"


# static fields
.field private static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private connector:Lorg/apache/mina/transport/socket/SocketConnector;

.field private future:Lorg/apache/mina/core/future/DefaultConnectFuture;

.field private final proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-string v1, "proxy"

    const-string v2, "proxyconnector"

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lorg/apache/mina/core/buffer/IoBuffer;

    aput-object v8, v7, v3

    const-class v8, Lorg/apache/mina/core/file/FileRegion;

    aput-object v8, v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/mina/proxy/ProxyConnector;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 69
    iput-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 74
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-direct {v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/transport/socket/SocketConnector;)V
    .locals 2
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;

    .prologue
    .line 99
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/ProxyConnector;-><init>(Lorg/apache/mina/transport/socket/SocketConnector;Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/transport/socket/SocketConnector;Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;
    .param p2, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 107
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 74
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-direct {v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/ProxyConnector;->setConnector(Lorg/apache/mina/transport/socket/SocketConnector;)V

    .line 109
    return-void
.end method

.method private final setConnector(Lorg/apache/mina/transport/socket/SocketConnector;)V
    .locals 3
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connector cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 227
    const-class v1, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 235
    :cond_1
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-virtual {v1, v0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 236
    return-void
.end method


# virtual methods
.method public cancelConnectFuture()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->cancel()V

    .line 194
    return-void
.end method

.method protected connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 6
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
    .line 160
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lorg/apache/mina/proxy/ProxyConnector;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    .line 163
    .local v1, "handler":Lorg/apache/mina/core/service/IoHandler;
    instance-of v2, v1, Lorg/apache/mina/proxy/AbstractProxyIoHandler;

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IoHandler must be an instance of AbstractProxyIoHandler"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    invoke-interface {v2, v1}, Lorg/apache/mina/transport/socket/SocketConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    .line 169
    new-instance v2, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v2}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    .line 172
    .end local v1    # "handler":Lorg/apache/mina/core/service/IoHandler;
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    iget-object v3, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v3}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    new-instance v4, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;

    iget-object v5, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-direct {v4, p3, v5}, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;-><init>(Lorg/apache/mina/core/session/IoSessionInitializer;Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    invoke-interface {v2, v3, v4}, Lorg/apache/mina/transport/socket/SocketConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    .line 181
    .local v0, "conFuture":Lorg/apache/mina/core/future/ConnectFuture;
    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    .end local v0    # "conFuture":Lorg/apache/mina/core/future/ConnectFuture;
    :cond_2
    :goto_0
    return-object v0

    .restart local v0    # "conFuture":Lorg/apache/mina/core/future/ConnectFuture;
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    goto :goto_0
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketConnector;->dispose()V

    .line 246
    :cond_0
    return-void
.end method

.method protected fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 204
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    return-object v0
.end method

.method public final getConnector()Lorg/apache/mina/transport/socket/SocketConnector;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lorg/apache/mina/proxy/ProxyConnector;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public setProxyIoSession(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySession object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySession.proxyAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setConnector(Lorg/apache/mina/proxy/ProxyConnector;)V

    .line 141
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/proxy/ProxyConnector;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    .line 142
    iput-object p1, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 143
    return-void
.end method
