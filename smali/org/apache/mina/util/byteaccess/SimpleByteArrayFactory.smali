.class public Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;
.super Ljava/lang/Object;
.source "SimpleByteArrayFactory.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 51
    if-gez p1, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer size must not be negative:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 56
    .local v1, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v0, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;-><init>(Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 66
    .local v0, "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    return-object v0
.end method
