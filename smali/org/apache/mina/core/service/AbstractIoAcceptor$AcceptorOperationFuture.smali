.class public Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
.super Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
.source "AbstractIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptorOperationFuture"
.end annotation


# instance fields
.field private final localAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    .line 422
    return-void
.end method


# virtual methods
.method public final getLocalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Acceptor operation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v4, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 437
    const/4 v2, 0x1

    .line 439
    .local v2, "isFirst":Z
    iget-object v4, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 440
    .local v0, "address":Ljava/net/SocketAddress;
    if-eqz v2, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 446
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 443
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 449
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isFirst":Z
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
