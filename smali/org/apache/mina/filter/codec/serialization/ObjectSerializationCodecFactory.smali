.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;
.super Ljava/lang/Object;
.source "ObjectSerializationCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;-><init>(Ljava/lang/ClassLoader;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;

    invoke-direct {v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->encoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;

    .line 53
    new-instance v0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->decoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

    .line 54
    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->decoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

    return-object v0
.end method

.method public getDecoderMaxObjectSize()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->decoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->getMaxObjectSize()I

    move-result v0

    return v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->encoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;

    return-object v0
.end method

.method public getEncoderMaxObjectSize()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->encoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->getMaxObjectSize()I

    move-result v0

    return v0
.end method

.method public setDecoderMaxObjectSize(I)V
    .locals 1
    .param p1, "maxObjectSize"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->decoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->setMaxObjectSize(I)V

    .line 110
    return-void
.end method

.method public setEncoderMaxObjectSize(I)V
    .locals 1
    .param p1, "maxObjectSize"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationCodecFactory;->encoder:Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->setMaxObjectSize(I)V

    .line 86
    return-void
.end method
