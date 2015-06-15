.class public Lorg/apache/mina/filter/ssl/SslFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;,
        Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
    }
.end annotation


# static fields
.field public static final DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field public static final SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field private static final SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

.field private static final START_HANDSHAKE:Z = true

.field public static final USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final autoStart:Z

.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field final sslContext:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 97
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "session"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    .line 109
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "disableOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 119
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "useNotification"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    .line 133
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "peerAddress"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    .line 140
    new-instance v0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v1, "SESSION_SECURED"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 148
    new-instance v0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v1, "SESSION_UNSECURED"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 151
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "nextFilter"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    .line 152
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "handler"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;Z)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Z)V
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "autoStart"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sslContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 192
    iput-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    .line 193
    return-void
.end method

.method private getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 740
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 742
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_0

    .line 743
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 746
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not managed by this filter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_1
    return-object v0
.end method

.method private handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "handler"    # Lorg/apache/mina/filter/ssl/SslHandler;

    .prologue
    .line 732
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 734
    .local v0, "readBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 737
    :cond_0
    return-void
.end method

.method private handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "handler"    # Lorg/apache/mina/filter/ssl/SslHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{}: Processing the SSL Data "

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushPreHandshakeEvents()V

    .line 724
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    .line 727
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 728
    return-void
.end method

.method private initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v1

    .line 688
    .local v1, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->closeOutbound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSL session is shut down already."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 708
    :cond_0
    :goto_0
    return-object v0

    .line 694
    :cond_1
    invoke-virtual {v1, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 696
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    if-nez v0, :cond_2

    .line 697
    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 700
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 701
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 704
    :cond_3
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {v1, p1, v2}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 673
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{} : Starting the first handshake"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 676
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    monitor-enter v0

    .line 677
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 678
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 681
    return-void

    .line 678
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isCloseNotify(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 571
    instance-of v4, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v4, :cond_0

    .line 577
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 575
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 576
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 577
    .local v1, "offset":I
    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v4, v6, :cond_2

    :cond_1
    add-int/lit8 v4, v1, 0x3

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 530
    instance-of v7, p3, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    if-eqz v7, :cond_6

    move-object v2, p3

    .line 533
    check-cast v2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    .line 534
    .local v2, "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-virtual {v2}, Lorg/apache/mina/core/write/WriteToClosedSessionException;->getRequests()Ljava/util/List;

    move-result-object v3

    .line 535
    .local v3, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    const/4 v1, 0x0

    .line 536
    .local v1, "containsCloseNotify":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/write/WriteRequest;

    .line 537
    .local v6, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 538
    const/4 v1, 0x1

    .line 543
    .end local v6    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_1
    if-eqz v1, :cond_6

    .line 544
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 568
    .end local v1    # "containsCloseNotify":Z
    .end local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 549
    .restart local v1    # "containsCloseNotify":Z
    .restart local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .restart local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    .local v5, "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/write/WriteRequest;

    .line 552
    .restart local v6    # "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 553
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    .end local v6    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 562
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v0, v5, v7, v8}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p3    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    move-object p3, v0

    .line 567
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "containsCloseNotify":Z
    .end local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .restart local p3    # "cause":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 642
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 643
    .local v1, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v1, :cond_1

    .line 646
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x0

    .line 652
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 655
    new-instance v2, Lorg/apache/mina/filter/ssl/SslFilter$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$1;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v0, v2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    .line 661
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 665
    if-nez v0, :cond_0

    .line 666
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 665
    :catchall_1
    move-exception v2

    if-nez v0, :cond_3

    .line 666
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_3
    throw v2
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 589
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "{}: Writing Message : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    :cond_0
    const/4 v3, 0x1

    .line 594
    .local v3, "needsFlush":Z
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v2

    .line 595
    .local v2, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    monitor-enter v2

    .line 596
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 597
    invoke-virtual {v2, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 632
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    if-eqz v3, :cond_1

    .line 635
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 637
    :cond_1
    return-void

    .line 601
    :cond_2
    :try_start_1
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {v2, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 608
    :cond_3
    :try_start_2
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 610
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isWritingEncryptedData()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 612
    invoke-virtual {v2, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 613
    :cond_4
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 615
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 616
    .local v4, "pos":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    .line 617
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 618
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 619
    .local v1, "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v5, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v1, v6}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    invoke-virtual {v2, p1, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 624
    .end local v1    # "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "pos":I
    :cond_5
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 626
    invoke-virtual {v2, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v2, :cond_1

    .line 242
    const-string v2, "Session Server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_0
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 252
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_2

    .line 253
    const-string v2, "(no sslEngine)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    .end local v0    # "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    :cond_1
    const-string v2, "Session Client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    .restart local v0    # "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    const-string v2, "(SSL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :cond_3
    const-string v2, "(ssl...)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 201
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public isNeedClientAuth()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return v0
.end method

.method public isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v1, 0x0

    .line 272
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 274
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return v1

    .line 278
    :cond_0
    monitor-enter v0

    .line 279
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUseClientMode()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 465
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "{}: Message received : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v2

    .line 471
    .local v2, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    monitor-enter v2

    .line 472
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    invoke-virtual {v2, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 510
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 513
    return-void

    .line 478
    :cond_2
    :try_start_1
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V

    .line 485
    invoke-direct {p0, p1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 487
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 488
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 489
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 494
    :goto_1
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v4

    .line 500
    .local v4, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 501
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v5, "SSL handshake failed."

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 503
    .local v3, "newSsle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 504
    move-object v4, v3

    .line 507
    .end local v3    # "newSsle":Ljavax/net/ssl/SSLException;
    :cond_3
    throw v4

    .line 510
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "ssle":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 491
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 518
    instance-of v1, p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 519
    check-cast v0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    .line 520
    .local v0, "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 524
    .end local v0    # "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 424
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 5
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 404
    const-class v3, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    const-string v1, "Only one SSL filter is permitted in a chain."

    .line 406
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 407
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Adding the SSL Filter {} to the chain"

    invoke-interface {v3, v4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 413
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v2, v3, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v0, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-direct {v0, p0, v2}, Lorg/apache/mina/filter/ssl/SslHandler;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 417
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 418
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v2, v3, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 430
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 431
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 450
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 453
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 458
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 460
    return-void

    .line 453
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 458
    :catchall_1
    move-exception v1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    throw v1
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;->sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 439
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 442
    :cond_0
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    .line 333
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0
    .param p1, "clientMode"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    .line 317
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    .line 349
    return-void
.end method

.method public startSsl(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 215
    .local v0, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    monitor-enter v0

    .line 216
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 219
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 220
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 221
    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 222
    const/4 v2, 0x1

    .line 226
    .end local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .local v2, "started":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 229
    return v2

    .line 224
    .end local v2    # "started":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "started":Z
    goto :goto_0

    .line 226
    .end local v2    # "started":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v1

    .line 293
    .local v1, "handler":Lorg/apache/mina/filter/ssl/SslHandler;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 295
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    monitor-enter v1

    .line 296
    :try_start_0
    invoke-direct {p0, v2, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 297
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 301
    return-object v0

    .line 297
    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
