.class Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.super Lorg/apache/mina/transport/socket/nio/NioSession;
.source "NioSocketSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;,
        Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
    }
.end annotation


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-string v1, "nio"

    const-string v2, "socket"

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lorg/apache/mina/core/buffer/IoBuffer;

    aput-object v8, v7, v3

    const-class v8, Lorg/apache/mina/core/file/FileRegion;

    aput-object v8, v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p3, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;-><init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V

    .line 61
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 62
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 108
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 91
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method
