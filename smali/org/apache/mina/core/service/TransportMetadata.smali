.class public interface abstract Lorg/apache/mina/core/service/TransportMetadata;
.super Ljava/lang/Object;
.source "TransportMetadata.java"


# virtual methods
.method public abstract getAddressType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnvelopeTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract getSessionConfigType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFragmentation()Z
.end method

.method public abstract isConnectionless()Z
.end method
