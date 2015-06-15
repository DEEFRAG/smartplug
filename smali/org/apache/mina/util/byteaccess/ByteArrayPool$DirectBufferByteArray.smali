.class Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectBufferByteArray"
.end annotation


# instance fields
.field public freed:Z

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 142
    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 143
    return-void
.end method


# virtual methods
.method public free()V
    .locals 7

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already freed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    .line 162
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v2

    # invokes: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I
    invoke-static {v1, v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I

    move-result v0

    .line 164
    .local v0, "bits":I
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    monitor-enter v2

    .line 166
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v1

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I
    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 168
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    # operator++ for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    .line 170
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v3

    int-to-long v3, v3

    # += operator for: Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J
    invoke-static {v1, v3, v4}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$414(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J

    .line 171
    monitor-exit v2

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setFreed(Z)V
    .locals 0
    .param p1, "freed"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    .line 149
    return-void
.end method
