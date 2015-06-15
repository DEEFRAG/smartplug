.class public interface abstract Lorg/apache/mina/transport/socket/SocketSessionConfig;
.super Ljava/lang/Object;
.source "SocketSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionConfig;


# virtual methods
.method public abstract getReceiveBufferSize()I
.end method

.method public abstract getSendBufferSize()I
.end method

.method public abstract getSoLinger()I
.end method

.method public abstract getTrafficClass()I
.end method

.method public abstract isKeepAlive()Z
.end method

.method public abstract isOobInline()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract isTcpNoDelay()Z
.end method

.method public abstract setKeepAlive(Z)V
.end method

.method public abstract setOobInline(Z)V
.end method

.method public abstract setReceiveBufferSize(I)V
.end method

.method public abstract setReuseAddress(Z)V
.end method

.method public abstract setSendBufferSize(I)V
.end method

.method public abstract setSoLinger(I)V
.end method

.method public abstract setTcpNoDelay(Z)V
.end method

.method public abstract setTrafficClass(I)V
.end method
