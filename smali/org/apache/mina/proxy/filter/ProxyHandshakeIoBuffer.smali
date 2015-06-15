.class public Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;
.super Lorg/apache/mina/core/buffer/IoBufferWrapper;
.source "ProxyHandshakeIoBuffer.java"


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/IoBufferWrapper;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 35
    return-void
.end method
