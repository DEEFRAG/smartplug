.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
.super Ljava/lang/Object;
.source "DemuxingProtocolEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private final findEncoderCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

.field private final type2encoder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->findEncoderCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 247
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    .line 252
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;>;"
    iget-object v3, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;

    invoke-interface {v2}, Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;->getEncoder()Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;>;"
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
    .param p2, "x1"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->findEncoderCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    return-object v0
.end method
