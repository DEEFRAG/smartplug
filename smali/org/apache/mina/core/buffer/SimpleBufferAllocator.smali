.class public Lorg/apache/mina/core/buffer/SimpleBufferAllocator;
.super Ljava/lang/Object;
.source "SimpleBufferAllocator.java"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 44
    .end local v0    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "nioBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 50
    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;-><init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
