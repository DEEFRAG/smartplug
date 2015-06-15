.class public Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;
.super Ljava/lang/Object;
.source "SynchronizedProtocolEncoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# instance fields
.field private final encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;)V
    .locals 2
    .param p1, "encoder"    # Lorg/apache/mina/filter/codec/ProtocolEncoder;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    .line 45
    return-void
.end method


# virtual methods
.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEncoder()Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object v0
.end method
