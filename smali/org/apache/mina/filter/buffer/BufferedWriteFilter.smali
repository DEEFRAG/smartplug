.class public final Lorg/apache/mina/filter/buffer/BufferedWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BufferedWriteFilter.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bufferSize:I

.field private final buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/LazyInitializedCacheMap",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const/16 v0, 0x2000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    .line 85
    return-void
.end method

.method public constructor <init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/mina/util/LazyInitializedCacheMap",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "buffersMap":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 50
    const-class v0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->logger:Lorg/slf4j/Logger;

    .line 61
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 98
    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-direct {v0}, Lorg/apache/mina/util/LazyInitializedCacheMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    goto :goto_0
.end method

.method private free(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 232
    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 233
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 236
    :cond_0
    return-void
.end method

.method private internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    monitor-enter p3

    .line 203
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 204
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 205
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 206
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->logger:Lorg/slf4j/Logger;

    const-string v2, "Flushing buffer: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 209
    return-void

    .line 206
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    new-instance v2, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;

    iget v3, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lorg/apache/mina/util/LazyInitializedCacheMap;->putIfAbsent(Ljava/lang/Object;Lorg/apache/mina/util/LazyInitializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 152
    .local v0, "dest":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 153
    return-void
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 168
    .local v1, "len":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 173
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 175
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-direct {p0, v2, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 176
    new-instance v3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v3, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 189
    .end local v1    # "len":I
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 179
    .restart local v1    # "len":I
    :cond_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_1

    .line 180
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-direct {p0, v3, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 183
    :cond_1
    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    invoke-virtual {p3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 185
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    .line 245
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 140
    return-void

    .line 137
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This filter should only buffer IoBuffer objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 218
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, v2, p1, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    return v0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    .line 255
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 256
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 120
    return-void
.end method
