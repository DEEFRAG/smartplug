.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;
.super Ljava/lang/Object;
.source "DemuxingProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonMessageDecoderFactory"
.end annotation


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 2
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;->decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .param p2, "x1"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V

    return-void
.end method


# virtual methods
.method public getDecoder()Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;->decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object v0
.end method
