.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;
.super Ljava/lang/Object;
.source "DemuxingProtocolCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-direct {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    .line 40
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-direct {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    .line 44
    return-void
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageDecoder;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Ljava/lang/Class;)V

    .line 94
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V

    .line 98
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 102
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 63
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    .line 67
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 71
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 76
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 78
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 82
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    goto :goto_0

    .line 84
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 88
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    goto :goto_0

    .line 90
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    return-void
.end method

.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    return-object v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    return-object v0
.end method
