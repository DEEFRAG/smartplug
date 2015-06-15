.class public abstract Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "AbstractStreamWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/filterchain/IoFilterAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

.field protected final CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

.field protected final WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private writeBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stream"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "queue"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    .line 51
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeRequest"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    .line 53
    const/16 v0, 0x1000

    iput v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void
.end method

.method private getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method private removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 5
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    iget-object v4, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 71
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v2

    .line 72
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v2    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 74
    .restart local v2    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    iget-object v4, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-interface {v2, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "message":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "stream":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v0, :cond_2

    .line 89
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    .line 90
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v4, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v4, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v4, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v4}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 100
    .end local v0    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "stream":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method protected abstract getMessageClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWriteBufferSize()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    iget v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v6}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .local v3, "stream":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_0

    .line 122
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 149
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 126
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v0, :cond_2

    .line 128
    iget-object v5, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v5, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    .line 133
    .local v1, "currentWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v2

    .line 134
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    .line 136
    .local v4, "wr":Lorg/apache/mina/core/write/WriteRequest;
    :goto_1
    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 138
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wr":Lorg/apache/mina/core/write/WriteRequest;
    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    .restart local v4    # "wr":Lorg/apache/mina/core/write/WriteRequest;
    goto :goto_1

    .line 142
    .end local v4    # "wr":Lorg/apache/mina/core/write/WriteRequest;
    :cond_1
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    .line 143
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 145
    .end local v1    # "currentWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    .end local v2    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    :cond_2
    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 4
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilterAdapter;>;"
    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is permitted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    return-void
.end method

.method public setWriteBufferSize(I)V
    .locals 2
    .param p1, "writeBufferSize"    # I

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeBufferSize must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    .line 173
    return-void
.end method
