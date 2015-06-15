.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;
.super Ljava/lang/Object;
.source "PrefixedStringCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    .line 44
    new-instance v0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    .line 45
    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    return-object v0
.end method

.method public getDecoderMaxDataLength()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->getMaxDataLength()I

    move-result v0

    return v0
.end method

.method public getDecoderPrefixLength()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->getPrefixLength()I

    move-result v0

    return v0
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
    .line 146
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    return-object v0
.end method

.method public getEncoderMaxDataLength()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->getMaxDataLength()I

    move-result v0

    return v0
.end method

.method public getEncoderPrefixLength()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public setDecoderMaxDataLength(I)V
    .locals 1
    .param p1, "maxDataLength"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->setMaxDataLength(I)V

    .line 107
    return-void
.end method

.method public setDecoderPrefixLength(I)V
    .locals 1
    .param p1, "prefixLength"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->setPrefixLength(I)V

    .line 116
    return-void
.end method

.method public setEncoderMaxDataLength(I)V
    .locals 1
    .param p1, "maxDataLength"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->setMaxDataLength(I)V

    .line 77
    return-void
.end method

.method public setEncoderPrefixLength(I)V
    .locals 1
    .param p1, "prefixLength"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->setPrefixLength(I)V

    .line 134
    return-void
.end method
