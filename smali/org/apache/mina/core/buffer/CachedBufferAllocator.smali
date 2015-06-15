.class public Lorg/apache/mina/core/buffer/CachedBufferAllocator;
.super Ljava/lang/Object;
.source "CachedBufferAllocator.java"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHED_BUFFER_SIZE:I = 0x40000

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x8


# instance fields
.field private final directBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final heapBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final maxCachedBufferSize:I

.field private final maxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const/16 v0, 0x8

    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;-><init>(II)V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxPoolSize"    # I
    .param p2, "maxCachedBufferSize"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-gez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-gez p2, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCachedBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iput p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    .line 98
    iput p2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    .line 100
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "requestedCapacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 148
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v0

    .line 151
    .local v0, "actualCapacity":I
    iget v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-le v0, v3, :cond_1

    .line 152
    if-eqz p2, :cond_0

    .line 153
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 182
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 183
    return-object v1

    .line 155
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 160
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    if-eqz p2, :cond_2

    .line 161
    iget-object v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 167
    .local v2, "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 169
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 172
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 163
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .restart local v2    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    goto :goto_1

    .line 174
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    if-eqz p2, :cond_4

    .line 175
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public getMaxCachedBufferSize()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method

.method newPoolMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v1, "poolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;>;"
    iget v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    if-nez v3, :cond_0

    const/16 v2, 0x8

    .line 137
    .local v2, "poolSize":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x1f

    if-ge v0, v3, :cond_1

    .line 138
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v2    # "poolSize":I
    :cond_0
    iget v2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    goto :goto_0

    .line 141
    .restart local v0    # "i":I
    .restart local v2    # "poolSize":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v1
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 191
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
