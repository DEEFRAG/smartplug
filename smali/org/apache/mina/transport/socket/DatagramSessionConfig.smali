.class public interface abstract Lorg/apache/mina/transport/socket/DatagramSessionConfig;
.super Ljava/lang/Object;
.source "DatagramSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionConfig;


# virtual methods
.method public abstract getReceiveBufferSize()I
.end method

.method public abstract getSendBufferSize()I
.end method

.method public abstract getTrafficClass()I
.end method

.method public abstract isBroadcast()Z
.end method

.method public abstract isCloseOnPortUnreachable()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract setBroadcast(Z)V
.end method

.method public abstract setCloseOnPortUnreachable(Z)V
.end method

.method public abstract setReceiveBufferSize(I)V
.end method

.method public abstract setReuseAddress(Z)V
.end method

.method public abstract setSendBufferSize(I)V
.end method

.method public abstract setTrafficClass(I)V
.end method
