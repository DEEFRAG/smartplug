.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;
.super Lorg/apache/mina/core/write/DefaultWriteRequest;
.source "ProtocolCodecFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedWriteRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "encodedMessage"    # Ljava/lang/Object;
    .param p2, "future"    # Lorg/apache/mina/core/future/WriteFuture;
    .param p3, "destination"    # Ljava/net/SocketAddress;

    .prologue
    .line 393
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 394
    return-void
.end method


# virtual methods
.method public isEncoded()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method
