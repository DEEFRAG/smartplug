.class public abstract Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "AbstractSocketSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketSessionConfig;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method protected final doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 39
    instance-of v1, p1, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    instance-of v1, p1, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 45
    check-cast v0, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    .line 46
    .local v0, "cfg":Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isKeepAliveChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isKeepAlive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setKeepAlive(Z)V

    .line 49
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isOobInlineChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isOobInline()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setOobInline(Z)V

    .line 52
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReceiveBufferSize(I)V

    .line 55
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReuseAddressChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReuseAddress(Z)V

    .line 58
    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSendBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSendBufferSize(I)V

    .line 61
    :cond_6
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSoLingerChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSoLinger(I)V

    .line 64
    :cond_7
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTcpNoDelayChanged()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTcpNoDelay(Z)V

    .line 67
    :cond_8
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTrafficClassChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTrafficClass(I)V

    goto :goto_0

    .end local v0    # "cfg":Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
    :cond_9
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    .line 72
    .local v0, "cfg":Lorg/apache/mina/transport/socket/SocketSessionConfig;
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isKeepAlive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setKeepAlive(Z)V

    .line 73
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isOobInline()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setOobInline(Z)V

    .line 74
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReceiveBufferSize(I)V

    .line 75
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReuseAddress(Z)V

    .line 76
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSendBufferSize(I)V

    .line 77
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSoLinger(I)V

    .line 78
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTcpNoDelay(Z)V

    .line 79
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 80
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTrafficClass(I)V

    goto/16 :goto_0
.end method

.method protected isKeepAliveChanged()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected isOobInlineChanged()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected isSoLingerChanged()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected isTcpNoDelayChanged()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method
