.class public abstract Lorg/apache/mina/transport/socket/nio/NioSession;
.super Lorg/apache/mina/core/session/AbstractIoSession;
.source "NioSession.java"


# instance fields
.field protected final channel:Ljava/nio/channels/Channel;

.field private final filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

.field protected key:Ljava/nio/channels/SelectionKey;

.field protected final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V
    .locals 1
    .param p2, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p3, "channel"    # Ljava/nio/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Lorg/apache/mina/core/service/IoService;",
            "Ljava/nio/channels/Channel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 61
    iput-object p3, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    .line 62
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 63
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    .line 64
    return-void
.end method


# virtual methods
.method abstract getChannel()Ljava/nio/channels/ByteChannel;
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    return-object v0
.end method

.method public getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    .line 89
    return-void
.end method
