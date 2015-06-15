.class Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;
.super Ljava/lang/Object;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/channels/DatagramChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/channels/SelectionKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->next()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 250
    return-void
.end method
