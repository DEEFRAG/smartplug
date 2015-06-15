.class public interface abstract Lorg/apache/mina/filter/codec/ProtocolEncoder;
.super Ljava/lang/Object;
.source "ProtocolEncoder.java"


# virtual methods
.method public abstract dispose(Lorg/apache/mina/core/session/IoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
