.class Lorg/apache/mina/handler/stream/IoSessionOutputStream;
.super Ljava/io/OutputStream;
.source "IoSessionOutputStream.java"


# instance fields
.field private lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;

.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    .line 42
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The session has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method private declared-synchronized write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->checkClosed()V

    .line 61
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, p1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 62
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    .line 85
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->isWritten()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The bytes could not be written to the session"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 73
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 74
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 75
    invoke-direct {p0, v0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 76
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 68
    return-void
.end method
