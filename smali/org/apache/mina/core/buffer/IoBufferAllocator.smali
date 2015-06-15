.class public interface abstract Lorg/apache/mina/core/buffer/IoBufferAllocator;
.super Ljava/lang/Object;
.source "IoBufferAllocator.java"


# virtual methods
.method public abstract allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
.end method

.method public abstract dispose()V
.end method

.method public abstract wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
.end method
