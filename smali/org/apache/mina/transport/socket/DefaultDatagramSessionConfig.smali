.class public Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.source "DefaultDatagramSessionConfig.java"


# static fields
.field private static DEFAULT_BROADCAST:Z

.field private static DEFAULT_RECEIVE_BUFFER_SIZE:I

.field private static DEFAULT_REUSE_ADDRESS:Z

.field private static DEFAULT_SEND_BUFFER_SIZE:I

.field private static DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private broadcast:Z

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private trafficClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_BROADCAST:Z

    .line 31
    sput-boolean v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

    .line 34
    sput v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_RECEIVE_BUFFER_SIZE:I

    .line 37
    sput v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_SEND_BUFFER_SIZE:I

    .line 39
    sput v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;-><init>()V

    .line 41
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_BROADCAST:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    .line 42
    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    .line 43
    sget v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_RECEIVE_BUFFER_SIZE:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    .line 44
    sget v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_SEND_BUFFER_SIZE:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    .line 45
    sget v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    .line 52
    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    return v0
.end method

.method protected isBroadcastChanged()Z
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_BROADCAST:Z

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
    .line 131
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_RECEIVE_BUFFER_SIZE:I

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
    .line 72
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

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
    .line 141
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_SEND_BUFFER_SIZE:I

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
    .line 146
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBroadcast(Z)V
    .locals 0
    .param p1, "broadcast"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->broadcast:Z

    .line 66
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->receiveBufferSize:I

    .line 94
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->reuseAddress:Z

    .line 80
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 107
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->sendBufferSize:I

    .line 108
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0
    .param p1, "trafficClass"    # I

    .prologue
    .line 121
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;->trafficClass:I

    .line 122
    return-void
.end method
