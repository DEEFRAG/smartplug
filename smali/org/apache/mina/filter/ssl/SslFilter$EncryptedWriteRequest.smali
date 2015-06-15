.class Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
.super Lorg/apache/mina/core/write/WriteRequestWrapper;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/SslFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptedWriteRequest"
.end annotation


# instance fields
.field private final encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "encryptedMessage"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteRequestWrapper;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 778
    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 779
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "x1"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "x2"    # Lorg/apache/mina/filter/ssl/SslFilter$1;

    .prologue
    .line 772
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method
