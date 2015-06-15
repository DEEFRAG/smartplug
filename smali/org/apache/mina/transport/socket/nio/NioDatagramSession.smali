.class Lorg/apache/mina/transport/socket/nio/NioDatagramSession;
.super Lorg/apache/mina/transport/socket/nio/NioSession;
.source "NioDatagramSession.java"


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private final localAddress:Ljava/net/InetSocketAddress;

.field private final remoteAddress:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-string v1, "nio"

    const-string v2, "datagram"

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Lorg/apache/mina/core/buffer/IoBuffer;

    aput-object v8, v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p2, "channel"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Ljava/nio/channels/DatagramChannel;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p2, "channel"    # Ljava/nio/channels/DatagramChannel;
    .param p4, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Ljava/nio/channels/DatagramChannel;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/net/SocketAddress;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSession;-><init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V

    .line 53
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v0, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 54
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 55
    check-cast p4, Ljava/net/InetSocketAddress;

    .end local p4    # "remoteAddress":Ljava/net/SocketAddress;
    iput-object p4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 56
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->localAddress:Ljava/net/InetSocketAddress;

    .line 57
    return-void
.end method


# virtual methods
.method bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->localAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->remoteAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method
