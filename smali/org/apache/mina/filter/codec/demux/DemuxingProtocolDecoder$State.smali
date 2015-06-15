.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
.super Ljava/lang/Object;
.source "DemuxingProtocolDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

.field private final decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

.field final synthetic this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    move-result-object v0

    .line 248
    .local v0, "decoderFactories":[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    array-length v2, v0

    new-array v2, v2, [Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    iput-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 249
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 250
    iget-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;->getDecoder()Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
    .param p2, "x1"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .param p1, "x1"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object v0
.end method
