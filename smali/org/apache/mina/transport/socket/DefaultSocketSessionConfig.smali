.class public Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "DefaultSocketSessionConfig.java"


# static fields
.field private static DEFAULT_KEEP_ALIVE:Z

.field private static DEFAULT_OOB_INLINE:Z

.field private static DEFAULT_REUSE_ADDRESS:Z

.field private static DEFAULT_SO_LINGER:I

.field private static DEFAULT_TCP_NO_DELAY:Z

.field private static DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private defaultReuseAddress:Z

.field private keepAlive:Z

.field private oobInline:Z

.field protected parent:Lorg/apache/mina/core/service/IoService;

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private soLinger:I

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

    .line 31
    sput v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    .line 32
    sput-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_KEEP_ALIVE:Z

    .line 33
    sput-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_OOB_INLINE:Z

    .line 34
    const/4 v0, -0x1

    sput v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_SO_LINGER:I

    .line 35
    sput-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TCP_NO_DELAY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    .line 43
    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    .line 46
    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    .line 48
    sget v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    .line 49
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_KEEP_ALIVE:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    .line 50
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_OOB_INLINE:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    .line 51
    sget v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_SO_LINGER:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    .line 52
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TCP_NO_DELAY:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return v0
.end method

.method public init(Lorg/apache/mina/core/service/IoService;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->parent:Lorg/apache/mina/core/service/IoService;

    .line 64
    instance-of v0, p1, Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    .line 70
    :goto_0
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    .line 71
    return-void

    .line 67
    :cond_0
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    goto :goto_0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method protected isKeepAliveChanged()Z
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_KEEP_ALIVE:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOobInline()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method protected isOobInlineChanged()Z
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_OOB_INLINE:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    iget-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSoLingerChanged()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_SO_LINGER:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method protected isTcpNoDelayChanged()Z
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TCP_NO_DELAY:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTrafficClassChanged()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 0
    .param p1, "keepAlive"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    .line 111
    return-void
.end method

.method public setOobInline(Z)V
    .locals 0
    .param p1, "oobInline"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    .line 119
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 86
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    .line 87
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    .line 79
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    .line 95
    return-void
.end method

.method public setSoLinger(I)V
    .locals 0
    .param p1, "soLinger"    # I

    .prologue
    .line 126
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    .line 127
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    .line 135
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0
    .param p1, "trafficClass"    # I

    .prologue
    .line 102
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    .line 103
    return-void
.end method
