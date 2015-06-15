.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodingContext"
.end annotation


# instance fields
.field private contentLength:I

.field private decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

.field private matchCount:I

.field final synthetic this$0:Lorg/apache/mina/proxy/utils/IoBufferDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->this$0:Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    return v0
.end method

.method public getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 70
    return-void
.end method

.method public setContentLength(I)V
    .locals 0
    .param p1, "contentLength"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    .line 78
    return-void
.end method

.method public setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "decodedBuffer"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 94
    return-void
.end method

.method public setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "delimiter"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    return-void
.end method

.method public setMatchCount(I)V
    .locals 0
    .param p1, "matchCount"    # I

    .prologue
    .line 85
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    .line 86
    return-void
.end method
