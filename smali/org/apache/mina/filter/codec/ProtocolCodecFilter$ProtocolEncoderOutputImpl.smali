.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;
.super Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.source "ProtocolCodecFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtocolEncoderOutputImpl"
.end annotation


# instance fields
.field private final destination:Ljava/net/SocketAddress;

.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;-><init>()V

    .line 443
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    .line 444
    iput-object p2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 447
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->destination:Ljava/net/SocketAddress;

    .line 448
    return-void
.end method


# virtual methods
.method public flush()Lorg/apache/mina/core/future/WriteFuture;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 451
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    .line 452
    .local v0, "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 454
    .local v2, "future":Lorg/apache/mina/core/future/WriteFuture;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 455
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 457
    .local v1, "encodedMessage":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 469
    .end local v1    # "encodedMessage":Ljava/lang/Object;
    :cond_1
    if-nez v2, :cond_2

    .line 471
    new-instance v3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    iget-object v4, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->destination:Ljava/net/SocketAddress;

    invoke-direct {v3, v8, v8, v4}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 472
    .local v3, "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    iget-object v4, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/NothingWrittenException;

    invoke-direct {v5, v3}, Lorg/apache/mina/core/write/NothingWrittenException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-static {v4, v5}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    .line 476
    .end local v3    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :cond_2
    return-object v2

    .line 462
    .restart local v1    # "encodedMessage":Ljava/lang/Object;
    :cond_3
    instance-of v4, v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    :cond_4
    new-instance v2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    .end local v2    # "future":Lorg/apache/mina/core/future/WriteFuture;
    iget-object v4, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v2, v4}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 464
    .restart local v2    # "future":Lorg/apache/mina/core/future/WriteFuture;
    iget-object v4, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v5, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v6, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    iget-object v7, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->destination:Ljava/net/SocketAddress;

    invoke-direct {v6, v1, v2, v7}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method
