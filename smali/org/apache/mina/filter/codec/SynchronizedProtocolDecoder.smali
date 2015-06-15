.class public Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;
.super Ljava/lang/Object;
.source "SynchronizedProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 2
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 47
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDecoder()Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-object v0
.end method
