.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "ObjectSerializationDecoder.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private maxObjectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;-><init>(Ljava/lang/ClassLoader;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    .line 40
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    .line 58
    return-void
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
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
    .line 88
    const/4 v0, 0x4

    iget v1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    invoke-virtual {p2, v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMaxObjectSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 3
    .param p1, "maxObjectSize"    # I

    .prologue
    .line 77
    if-gtz p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxObjectSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    .line 83
    return-void
.end method
