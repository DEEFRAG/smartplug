.class Lorg/apache/mina/handler/stream/IoSessionInputStream;
.super Ljava/io/InputStream;
.source "IoSessionInputStream.java"


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private volatile closed:Z

.field private exception:Ljava/io/IOException;

.field private final mutex:Ljava/lang/Object;

.field private volatile released:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 47
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 49
    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    goto :goto_0
.end method

.method private waitForData()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-boolean v3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v3, :cond_0

    .line 137
    :goto_0
    return v2

    .line 113
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 116
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interrupted while waiting for more data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 121
    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    iget-object v3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-eqz v3, :cond_2

    .line 127
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 128
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    throw v2

    .line 131
    :cond_2
    iget-boolean v3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_3

    .line 132
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    goto :goto_0

    .line 137
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    .line 70
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 72
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, -0x1

    monitor-exit v1

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    monitor-exit v1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v0, -0x1

    monitor-exit v2

    .line 104
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 97
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 102
    .local v0, "readBytes":I
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    monitor-exit v2

    goto :goto_0

    .line 105
    .end local v0    # "readBytes":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    move v0, p3

    .restart local v0    # "readBytes":I
    goto :goto_1
.end method

.method public throwException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 168
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 170
    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    .line 172
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    :cond_0
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2
    .param p1, "src"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 151
    monitor-exit v1

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 156
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 157
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 164
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 160
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 161
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 162
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
