.class public final Lorg/apache/mina/transport/socket/nio/NioProcessor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.source "NioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioProcessor$1;,
        Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor",
        "<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# instance fields
.field private selector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 59
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to open a selector."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected allSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method protected bridge synthetic destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 113
    .local v0, "ch":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 114
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 117
    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 118
    return-void
.end method

.method protected doDispose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 68
    return-void
.end method

.method protected bridge synthetic getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v0

    return-object v0
.end method

.method protected getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 189
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_0

    .line 193
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    .line 201
    :goto_0
    return-object v1

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    goto :goto_0

    .line 201
    :cond_1
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->CLOSING:Lorg/apache/mina/core/session/SessionState;

    goto :goto_0
.end method

.method protected bridge synthetic init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->init(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected init(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 105
    .local v0, "ch":Ljava/nio/channels/SelectableChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 106
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 108
    return-void
.end method

.method protected isBrokenConnection()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "brokenSession":Z
    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v7

    .line 160
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    .line 164
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 165
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    .line 167
    .local v2, "channel":Ljava/nio/channels/SelectableChannel;
    instance-of v6, v2, Ljava/nio/channels/DatagramChannel;

    if-eqz v6, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    instance-of v6, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v6, :cond_0

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .end local v2    # "channel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 173
    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 176
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    :cond_3
    monitor-exit v7

    .line 181
    return v1

    .line 179
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected bridge synthetic isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    return v0
.end method

.method protected isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 220
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    return v0
.end method

.method protected isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 225
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 226
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    return v0
.end method

.method protected isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 208
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSelectorEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    return v0
.end method

.method protected isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 214
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p2, "x1"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v0

    return v0
.end method

.method protected read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 280
    .local v0, "channel":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method protected registerNewSelector()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v8, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v8

    .line 129
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    .line 132
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5

    .line 135
    .local v5, "newSelector":Ljava/nio/channels/Selector;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 136
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 139
    .local v0, "ch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 140
    .local v6, "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v7

    invoke-virtual {v0, v5, v7, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 141
    .local v4, "newKey":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v6, v4}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 147
    .end local v0    # "ch":Ljava/nio/channels/SelectableChannel;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v4    # "newKey":Ljava/nio/channels/SelectionKey;
    .end local v5    # "newSelector":Ljava/nio/channels/Selector;
    .end local v6    # "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 145
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v5    # "newSelector":Ljava/nio/channels/Selector;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V

    .line 146
    iput-object v5, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    .line 147
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    return-void
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected select(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    return v0
.end method

.method protected selectedSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method protected bridge synthetic setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p2, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 237
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    .line 238
    .local v2, "oldInterestOps":I
    move v1, v2

    .line 240
    .local v1, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 241
    or-int/lit8 v1, v1, 0x1

    .line 246
    :goto_0
    if-eq v2, v1, :cond_0

    .line 247
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 249
    :cond_0
    return-void

    .line 243
    :cond_1
    and-int/lit8 v1, v1, -0x2

    goto :goto_0
.end method

.method protected bridge synthetic setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p2, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 259
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 265
    .local v1, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 266
    or-int/lit8 v1, v1, 0x4

    .line 273
    :goto_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 269
    :cond_1
    and-int/lit8 v1, v1, -0x5

    goto :goto_1
.end method

.method protected bridge synthetic transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p2, "x1"    # Lorg/apache/mina/core/file/FileRegion;
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result v0

    return v0
.end method

.method protected transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 8
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "region"    # Lorg/apache/mina/core/file/FileRegion;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v1

    int-to-long v3, p3

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 310
    :goto_0
    return v0

    .line 305
    :catch_0
    move-exception v6

    .line 308
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "message":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, "temporarily unavailable"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_0
    throw v6
.end method

.method protected wakeup()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 88
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 89
    return-void
.end method

.method protected bridge synthetic write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p2, "x1"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result v0

    return v0
.end method

.method protected write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    if-gt v1, p3, :cond_0

    .line 287
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 295
    :goto_0
    return v1

    .line 290
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 291
    .local v0, "oldLimit":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 293
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 295
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw v1
.end method
