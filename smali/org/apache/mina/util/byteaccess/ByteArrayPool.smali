.class public Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    }
.end annotation


# instance fields
.field private final MAX_BITS:I

.field private final direct:Z

.field private freeBufferCount:I

.field private freeBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private freeMemory:J

.field private freed:Z

.field private final maxFreeBuffers:I

.field private final maxFreeMemory:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "direct"    # Z
    .param p2, "maxFreeBuffers"    # I
    .param p3, "maxFreeMemory"    # I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->MAX_BITS:I

    .line 45
    iput v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    .line 46
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    .line 62
    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 66
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iput p2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    .line 69
    iput p3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    .line 70
    iput-boolean v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return v0
.end method

.method static synthetic access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide v0
.end method

.method static synthetic access$414(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    return v0
.end method

.method private bits(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "bits":I
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return v0
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 7
    .param p1, "size"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    if-ge p1, v6, :cond_0

    .line 83
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer size must be at least 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    move-result v3

    .line 86
    .local v3, "bits":I
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    .line 91
    .local v0, "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    .line 92
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 93
    monitor-exit p0

    .line 102
    :goto_0
    return-object v0

    .line 95
    .end local v0    # "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    shl-int v2, v6, v3

    .line 98
    .local v2, "bbSize":I
    iget-boolean v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    invoke-static {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 99
    .local v1, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 100
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 101
    .restart local v0    # "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    invoke-virtual {v0, v5}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    goto :goto_0

    .line 95
    .end local v0    # "ba":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    .end local v1    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "bbSize":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public free()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already freed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    .line 129
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    return-void
.end method
