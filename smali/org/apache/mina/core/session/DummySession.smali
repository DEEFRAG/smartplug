.class public Lorg/apache/mina/core/session/DummySession;
.super Lorg/apache/mina/core/session/AbstractIoSession;
.source "DummySession.java"


# static fields
.field private static final ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

.field private static final TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private volatile config:Lorg/apache/mina/core/session/IoSessionConfig;

.field private final filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

.field private volatile handler:Lorg/apache/mina/core/service/IoHandler;

.field private volatile localAddress:Ljava/net/SocketAddress;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/core/session/AbstractIoSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile remoteAddress:Ljava/net/SocketAddress;

.field private volatile service:Lorg/apache/mina/core/service/IoService;

.field private volatile transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-string v1, "mina"

    const-string v2, "dummy"

    const-class v5, Ljava/net/SocketAddress;

    const-class v6, Lorg/apache/mina/core/session/IoSessionConfig;

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v7, v3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    .line 60
    new-instance v0, Lorg/apache/mina/core/session/DummySession$1;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DummySession$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 90
    new-instance v2, Lorg/apache/mina/core/session/DummySession$5;

    new-instance v3, Lorg/apache/mina/core/session/DummySession$3;

    invoke-direct {v3}, Lorg/apache/mina/core/session/DummySession$3;-><init>()V

    new-instance v4, Lorg/apache/mina/core/session/DummySession$4;

    invoke-direct {v4}, Lorg/apache/mina/core/session/DummySession$4;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/mina/core/session/DummySession$5;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v2}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 71
    new-instance v2, Lorg/apache/mina/core/session/DummySession$2;

    invoke-direct {v2, p0}, Lorg/apache/mina/core/session/DummySession$2;-><init>(Lorg/apache/mina/core/session/DummySession;)V

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 78
    new-instance v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {v2, p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    .line 81
    new-instance v2, Lorg/apache/mina/core/service/IoHandlerAdapter;

    invoke-direct {v2}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 82
    sget-object v2, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    .line 83
    sget-object v2, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    .line 84
    sget-object v2, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    .line 129
    new-instance v2, Lorg/apache/mina/core/session/DummySession$6;

    invoke-direct {v2, p0}, Lorg/apache/mina/core/session/DummySession$6;-><init>(Lorg/apache/mina/core/session/DummySession;)V

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 179
    invoke-super {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    .line 182
    :try_start_0
    new-instance v1, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;

    invoke-direct {v1}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;-><init>()V

    .line 183
    .local v1, "factory":Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
    invoke-interface {v1, p0}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/session/DummySession;->setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V

    .line 184
    invoke-interface {v1, p0}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/session/DummySession;->setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-void

    .line 185
    .end local v1    # "factory":Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method static synthetic access$000()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/core/session/AbstractIoSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getService()Lorg/apache/mina/core/service/IoService;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public setConfig(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 203
    return-void
.end method

.method public setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/mina/core/service/IoHandler;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 222
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    .line 242
    return-void
.end method

.method public setRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    .line 253
    return-void
.end method

.method public setScheduledWriteBytes(I)V
    .locals 0
    .param p1, "byteCount"    # I

    .prologue
    .line 292
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledWriteBytes(I)V

    .line 293
    return-void
.end method

.method public setScheduledWriteMessages(I)V
    .locals 0
    .param p1, "messages"    # I

    .prologue
    .line 297
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledWriteMessages(I)V

    .line 298
    return-void
.end method

.method public setService(Lorg/apache/mina/core/service/IoService;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    .line 268
    return-void
.end method

.method public setTransportMetadata(Lorg/apache/mina/core/service/TransportMetadata;)V
    .locals 2
    .param p1, "transportMetadata"    # Lorg/apache/mina/core/service/TransportMetadata;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transportMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    .line 288
    return-void
.end method

.method public updateThroughput(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, v0, v1, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->updateThroughput(JZ)V

    .line 310
    return-void
.end method
