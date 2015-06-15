.class Lorg/apache/mina/filter/ssl/SslHandler;
.super Ljava/lang/Object;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslHandler$1;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final filterWriteEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private firstSSLNegociation:Z

.field private handshakeComplete:Z

.field private handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final messageReceivedEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final preHandshakeEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private sslEngine:Ljavax/net/ssl/SSLEngine;

.field private final sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

.field private writingEncryptedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "sslFilter"    # Lorg/apache/mina/filter/ssl/SslFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 122
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    .line 123
    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    .line 124
    return-void
.end method

.method private checkStatus(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 4
    .param p1, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    .line 499
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_0

    .line 500
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine error during decrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inNetBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_0
    return-void
.end method

.method static copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 783
    .local v0, "copy":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 784
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 785
    return-object v0
.end method

.method private createOutNetBuffer(I)V
    .locals 3
    .param p1, "expectedRemaining"    # I

    .prologue
    .line 602
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 604
    .local v0, "capacity":I
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method private destroyOutNetBuffer()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 232
    return-void
.end method

.method private doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    .prologue
    .line 765
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    return-object v1
.end method

.method private renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 701
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 702
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 704
    :cond_0
    return-void
.end method

.method private unwrap()Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v3, :cond_4

    .line 713
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 721
    :goto_0
    const/4 v2, 0x0

    .line 722
    .local v2, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const/4 v0, 0x0

    .line 726
    .local v0, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 727
    .local v1, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    .line 730
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 732
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_1

    .line 735
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 736
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 745
    :cond_1
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_3

    :cond_2
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v3, :cond_0

    .line 753
    :cond_3
    return-object v1

    .line 716
    .end local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v1    # "res":Ljavax/net/ssl/SSLEngineResult;
    .end local v2    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :cond_4
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method private unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 659
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 661
    :cond_1
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 692
    :goto_0
    return-object v1

    .line 664
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 665
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 667
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 671
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 677
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 682
    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    .line 692
    :goto_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    goto :goto_0

    .line 679
    :cond_3
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 685
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 686
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 688
    :cond_5
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2
.end method


# virtual methods
.method closeOutbound()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 464
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 467
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 468
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 469
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 470
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_3

    .line 477
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper close state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 480
    const/4 v1, 0x1

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 215
    :cond_1
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 216
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-gtz v1, :cond_1

    .line 220
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroyOutNetBuffer()V

    .line 223
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 226
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception from SSLEngine.closeInbound()."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 211
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    goto :goto_2

    .line 217
    :catch_1
    move-exception v1

    .line 220
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroyOutNetBuffer()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroyOutNetBuffer()V

    throw v1
.end method

.method encrypt(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 416
    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_1

    .line 422
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 430
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 433
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    .line 434
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_3

    .line 435
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_5

    .line 438
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 439
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 441
    :cond_5
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine error during encrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "outNetBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_6
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_0
.end method

.method fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 388
    .local v0, "appBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 389
    return-object v0
.end method

.method fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 399
    .local v0, "answer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v0, :cond_0

    .line 400
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 404
    :goto_0
    return-object v1

    .line 403
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 404
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method flushPreHandshakeEvents()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 281
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .local v0, "scheduledWrite":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_0

    .line 282
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method flushScheduledEvents()V
    .locals 4

    .prologue
    .line 303
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    return-void

    .line 311
    :cond_1
    monitor-enter p0

    .line 312
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 314
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1, v3, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 316
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    .end local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :goto_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .restart local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 320
    .restart local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    return-object v0
.end method

.method handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 510
    :cond_0
    :goto_0
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Handshaking State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while processing the Handshake for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 594
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 514
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} processing the FINISHED state"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 521
    iget-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    iput-boolean v7, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 524
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {p0, p1, v3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 527
    :cond_2
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v3

    if-nez v3, :cond_4

    .line 529
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} is now secured"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    :cond_3
    :goto_1
    return-void

    .line 531
    :cond_4
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} is not secured yet"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 538
    :pswitch_1
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} processing the NEED_TASK state"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    :cond_5
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 546
    :pswitch_2
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 547
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} processing the NEED_UNWRAP state"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    .line 552
    .local v2, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_7

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_3

    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 561
    .end local v2    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :pswitch_3
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 562
    sget-object v3, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "{} processing the NEED_WRAP state"

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    :cond_8
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_3

    .line 573
    :cond_9
    invoke-direct {p0, v7}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 576
    :goto_2
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 577
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_a

    .line 578
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 579
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 585
    :cond_a
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 586
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 587
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    goto/16 :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 132
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{} Initializing the SSL Handler"

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 142
    .local v0, "peer":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_6

    .line 143
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 149
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->isUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 152
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 158
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 164
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 169
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 175
    :cond_5
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 177
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 180
    iput-boolean v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 184
    iput-boolean v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 185
    iput-boolean v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 187
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{} SSL Handler Initialization done."

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    goto/16 :goto_1
.end method

.method isHandshakeComplete()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    return v0
.end method

.method isInboundDone()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOutboundDone()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWritingEncryptedData()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return v0
.end method

.method messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 333
    sget-object v2, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_3

    .line 335
    sget-object v2, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{} Processing the received message"

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_1

    .line 343
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 346
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 348
    iget-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-nez v2, :cond_4

    .line 349
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 372
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_6

    const/4 v0, 0x0

    .line 376
    .local v0, "inNetBufferPosition":I
    :goto_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    iput-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 379
    .end local v0    # "inNetBufferPosition":I
    :cond_2
    return-void

    .line 337
    :cond_3
    sget-object v2, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{} Processing the received message"

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_4
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 354
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 361
    .local v1, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 362
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 367
    :goto_3
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 369
    invoke-direct {p0, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    goto :goto_1

    .line 364
    :cond_5
    iput-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3

    .line 375
    .end local v1    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_6
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    goto :goto_2
.end method

.method needToCompleteHandshake()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SSLStatus <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v1, :cond_0

    .line 794
    const-string v1, "SSL established"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v1, "HandshakeComplete :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 796
    :cond_0
    const-string v1, "Processing Handshake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v1, "Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 10
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 613
    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_1

    .line 615
    :cond_0
    const/4 v5, 0x0

    .line 650
    :goto_0
    return-object v5

    .line 620
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 623
    const/4 v4, 0x0

    .line 626
    .local v4, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 627
    .local v3, "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v5, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v5, v6}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 628
    .end local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .local v5, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v7, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v8, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v8, v3, v5}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v6, p1, v7, v8}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 631
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->needToCompleteHandshake()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 633
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 641
    .local v1, "outNetBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 642
    new-instance v4, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v4, v6}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    .end local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_4
    iget-object v6, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v7, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v8, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v8, v1, v4}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v6, p1, v7, v8}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    move-object v5, v4

    .line 645
    .end local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_1

    .line 634
    .end local v1    # "outNetBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :catch_0
    move-exception v2

    .line 635
    .local v2, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_5
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "SSL handshake failed."

    invoke-direct {v0, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "newSsle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 637
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 647
    .end local v0    # "newSsle":Ljavax/net/ssl/SSLException;
    .end local v2    # "ssle":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v3    # "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :goto_3
    iput-boolean v9, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    throw v6

    .end local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v3    # "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :cond_2
    iput-boolean v9, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    goto :goto_0

    .end local v3    # "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v1    # "outNetBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v3    # "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :cond_3
    move-object v4, v5

    .end local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_2
.end method
