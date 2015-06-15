.class public abstract Lorg/java_websocket/server/WebSocketServer;
.super Lorg/java_websocket/WebSocketAdapter;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;,
        Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DECODERS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field private decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueinvokes:I

.field private queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/java_websocket/server/WebSocketServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 107
    sget v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decoders"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    .local p4, "connectionscontainer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Lorg/java_websocket/WebSocketAdapter;-><init>()V

    .line 80
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v3, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 87
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v2, Lorg/java_websocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v2}, Lorg/java_websocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    .line 152
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    if-nez p4, :cond_1

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1
    if-nez p3, :cond_2

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 161
    :goto_0
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 162
    iput-object p4, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 164
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 167
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 169
    new-instance v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {v0, p0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lorg/java_websocket/server/WebSocketServer;)V

    .line 170
    .local v0, "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->start()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .end local v1    # "i":I
    :cond_2
    iput-object p3, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_0

    .line 173
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    sget v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/server/WebSocketServer;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/server/WebSocketServer;
    .param p1, "x1"    # Lorg/java_websocket/WebSocket;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;
    .locals 2
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 624
    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 625
    .local v0, "impl":Lorg/java_websocket/WebSocketImpl;
    iget-object v1, v0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method private handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {p0, v2, v0}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0

    .line 467
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 469
    invoke-virtual {p0, v2, v0}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    .locals 4
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "conn"    # Lorg/java_websocket/WebSocket;
    .param p3, "ex"    # Ljava/io/IOException;

    .prologue
    .line 445
    if-eqz p2, :cond_1

    .line 446
    const/16 v1, 0x3ee

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 449
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_1
    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 456
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection closed because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queue(Lorg/java_websocket/WebSocketImpl;)V
    .locals 3
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    iput-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 428
    iget v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 430
    :cond_0
    iget-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {v0, p1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->put(Lorg/java_websocket/WebSocketImpl;)V

    .line 431
    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 3
    .param p1, "ws"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 554
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v2

    .line 556
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 557
    .local v0, "succ":Z
    sget-boolean v1, Lorg/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 559
    .end local v0    # "succ":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 558
    .restart local v0    # "succ":Z
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v0    # "succ":Z
    :goto_0
    return v0

    .line 562
    :cond_1
    const/16 v1, 0x3e9

    invoke-interface {p1, v1}, Lorg/java_websocket/WebSocket;->close(I)V

    .line 563
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected allocateBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 2
    .param p1, "c"    # Lorg/java_websocket/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 413
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 422
    sget v0, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFlashSecurityPolicy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></cross-domain-policy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 260
    .local v0, "port":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 263
    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getWebSocketFactory()Lorg/java_websocket/WebSocketFactory;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 599
    return-void
.end method

.method public onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 603
    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "fragment"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 678
    return-void
.end method

.method public abstract onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 672
    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 515
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 517
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->removeConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 521
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 522
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 525
    :goto_1
    throw v1

    .line 523
    :catch_1
    move-exception v0

    .line 524
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/WebSocketServer;->onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V

    .line 590
    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 594
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    .line 596
    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 572
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 573
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "draft"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-super {p0, p1, p2, p3}, Lorg/java_websocket/WebSocketAdapter;->onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 503
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V

    .line 504
    return-void
.end method

.method public onWebsocketMessageFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    .line 499
    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "handshake"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->addConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    check-cast p2, Lorg/java_websocket/handshake/ClientHandshake;

    .end local p2    # "handshake":Lorg/java_websocket/handshake/Handshakedata;
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V

    .line 511
    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 4
    .param p1, "w"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 577
    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 579
    .local v0, "conn":Lorg/java_websocket/WebSocketImpl;
    :try_start_0
    iget-object v2, v0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 585
    return-void

    .line 580
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/nio/channels/CancelledKeyException;
    iget-object v2, v0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0
.end method

.method protected releaseBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 0
    .param p1, "c"    # Lorg/java_websocket/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 419
    return-void
.end method

.method protected removeConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 3
    .param p1, "ws"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 538
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v2

    .line 539
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 540
    .local v0, "removed":Z
    sget-boolean v1, Lorg/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 541
    .end local v0    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "removed":Z
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 545
    :cond_1
    return v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v13, :cond_0

    .line 274
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " can only be started once."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 279
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 275
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 277
    monitor-exit p0

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WebsocketSelector"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 282
    :try_start_2
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v11

    .line 285
    .local v11, "socket":Ljava/net/ServerSocket;
    sget v13, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-virtual {v11, v13}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v11, v13}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 287
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v15}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-nez v13, :cond_10

    .line 295
    const/4 v9, 0x0

    .line 296
    .local v9, "key":Ljava/nio/channels/SelectionKey;
    const/4 v4, 0x0

    .line 298
    .local v4, "conn":Lorg/java_websocket/WebSocketImpl;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->select()I

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v10

    .line 300
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 302
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 303
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object v9, v0

    .line 305
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 310
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/java_websocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 312
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 377
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v13

    goto :goto_1

    .line 289
    .end local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local v11    # "socket":Ljava/net/ServerSocket;
    :catch_1
    move-exception v6

    .line 290
    .local v6, "ex":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 316
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v11    # "socket":Ljava/net/ServerSocket;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 317
    .local v3, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14, v15}, Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v12

    .line 319
    .local v12, "w":Lorg/java_websocket/WebSocketImpl;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14, v12}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v13

    iput-object v13, v12, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    iget-object v14, v12, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v13, v3, v14}, Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v13

    iput-object v13, v12, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 321
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/java_websocket/server/WebSocketServer;->allocateBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 379
    .end local v3    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v12    # "w":Lorg/java_websocket/WebSocketImpl;
    :catch_2
    move-exception v5

    .line 394
    .local v5, "e":Ljava/nio/channels/ClosedByInterruptException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v13, :cond_e

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 396
    .local v12, "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v12}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_3

    .line 326
    .end local v5    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_6
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 327
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    move-object v4, v0

    .line 328
    invoke-direct/range {p0 .. p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    .line 330
    .local v1, "buf":Ljava/nio/ByteBuffer;
    :try_start_7
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v1, v4, v13}, Lorg/java_websocket/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 331
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 332
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v13, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 333
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V

    .line 334
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 335
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v13, v13, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v13, :cond_7

    .line 336
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v13, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v13}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_7
    :goto_4
    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 351
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    move-object v4, v0

    .line 352
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v4, v13}, Lorg/java_websocket/SocketChannelIOHelper;->batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 353
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 354
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 381
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_3
    move-exception v6

    .line 382
    .restart local v6    # "ex":Ljava/io/IOException;
    if-eqz v9, :cond_8

    .line 383
    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 384
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v6}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 390
    .end local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    :catch_4
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v13, :cond_12

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 396
    .restart local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v12}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_5

    .line 341
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_9
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 345
    :catch_5
    move-exception v5

    .line 346
    .local v5, "e":Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 347
    throw v5
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 385
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_6
    move-exception v5

    .line 394
    .local v5, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v13, :cond_f

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 396
    .restart local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v12}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_6

    .line 343
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 394
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v14, :cond_13

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 396
    .restart local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v12}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_7

    .line 358
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .restart local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_b
    :goto_8
    :try_start_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    move-object v4, v0

    .line 360
    iget-object v2, v4, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v2, Lorg/java_websocket/WrappedByteChannel;

    .line 361
    .local v2, "c":Lorg/java_websocket/WrappedByteChannel;
    invoke-direct/range {p0 .. p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v1

    .line 363
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_f
    invoke-static {v1, v4, v2}, Lorg/java_websocket/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 366
    iget-object v13, v4, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v13, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    .line 371
    :catch_7
    move-exception v5

    .line 372
    .local v5, "e":Ljava/io/IOException;
    :try_start_10
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 373
    throw v5
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 369
    .end local v5    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    .line 399
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "c":Lorg/java_websocket/WrappedByteChannel;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .local v5, "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 401
    :try_start_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    .line 402
    :catch_8
    move-exception v5

    .line 403
    .local v5, "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 399
    .local v5, "e":Ljava/lang/InterruptedException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 401
    :try_start_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_0

    .line 402
    :catch_9
    move-exception v5

    .line 403
    .local v5, "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 394
    .end local v4    # "conn":Lorg/java_websocket/WebSocketImpl;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v13, :cond_11

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 396
    .restart local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v12}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_9

    .line 399
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 401
    :try_start_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_0

    .line 402
    :catch_a
    move-exception v5

    .line 403
    .restart local v5    # "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 399
    .local v5, "e":Ljava/lang/RuntimeException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 401
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_0

    .line 402
    :catch_b
    move-exception v5

    .line 403
    .local v5, "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 399
    .end local v5    # "e":Ljava/io/IOException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v14, :cond_14

    .line 401
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v14}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 404
    :cond_14
    :goto_a
    throw v13

    .line 402
    :catch_c
    move-exception v5

    .line 403
    .restart local v5    # "e":Ljava/io/IOException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method public final setWebSocketFactory(Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;)V
    .locals 0
    .param p1, "wsf"    # Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    .prologue
    .line 606
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    .line 607
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->stop(I)V

    .line 236
    return-void
.end method

.method public stop(I)V
    .locals 7
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x0

    .line 212
    .local v1, "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v5

    .line 213
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v1    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .local v2, "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/WebSocket;

    .line 217
    .local v3, "ws":Lorg/java_websocket/WebSocket;
    const/16 v4, 0x3e9

    invoke-interface {v3, v4}, Lorg/java_websocket/WebSocket;->close(I)V

    goto :goto_1

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .end local v3    # "ws":Lorg/java_websocket/WebSocket;
    .restart local v1    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 220
    .end local v1    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    :cond_1
    monitor-enter p0

    .line 221
    :try_start_3
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_2

    .line 225
    :cond_2
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_4

    .line 226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 227
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V

    .line 228
    :cond_3
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 229
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 232
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .restart local v1    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    goto :goto_2
.end method
