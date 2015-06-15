.class public abstract Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "AbstractDatagramSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramSessionConfig;


# static fields
.field private static final DEFAULT_CLOSE_ON_PORT_UNREACHABLE:Z = true


# instance fields
.field private closeOnPortUnreachable:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 43
    instance-of v1, p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    instance-of v1, p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 49
    check-cast v0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 50
    .local v0, "cfg":Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcastChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 53
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 56
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddressChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 59
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isSendBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 62
    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isTrafficClassChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    goto :goto_0

    .end local v0    # "cfg":Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
    :cond_6
    move-object v0, p1

    .line 66
    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    .line 67
    .local v0, "cfg":Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isBroadcast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 68
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 69
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 70
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 71
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 72
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    goto/16 :goto_0
.end method

.method protected isBroadcastChanged()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isCloseOnPortUnreachable()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public setCloseOnPortUnreachable(Z)V
    .locals 0
    .param p1, "closeOnPortUnreachable"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    .line 144
    return-void
.end method
