.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
    }
.end annotation


# instance fields
.field private ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 127
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "delimiter"    # [B

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 118
    return-void
.end method


# virtual methods
.method public decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 13
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const/4 v12, 0x1

    .line 187
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getContentLength()I

    move-result v1

    .line 188
    .local v1, "contentLength":I
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 190
    .local v2, "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v6

    .line 193
    .local v6, "oldLimit":I
    const/4 v10, -0x1

    if-le v1, v10, :cond_2

    .line 194
    if-nez v2, :cond_0

    .line 195
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 200
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v10

    if-ge v10, v1, :cond_1

    .line 201
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v9

    .line 202
    .local v9, "readBytes":I
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 203
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 204
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    sub-int v11, v1, v9

    invoke-virtual {v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 205
    const/4 v10, 0x0

    .line 265
    .end local v9    # "readBytes":I
    :goto_0
    return-object v10

    .line 209
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v10

    add-int v5, v10, v1

    .line 210
    .local v5, "newLimit":I
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 211
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 212
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 213
    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 214
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    move-object v10, v2

    .line 216
    goto :goto_0

    .line 220
    .end local v5    # "newLimit":I
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v7

    .line 221
    .local v7, "oldPos":I
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getMatchCount()I

    move-result v4

    .line 222
    .local v4, "matchCount":I
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 224
    .local v3, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 225
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    .line 226
    .local v0, "b":B
    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v10

    if-ne v10, v0, :cond_5

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v10

    if-ne v4, v10, :cond_3

    .line 230
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    .line 231
    .local v8, "pos":I
    invoke-virtual {p1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 233
    invoke-virtual {p1, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 235
    if-nez v2, :cond_4

    .line 236
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v10

    invoke-static {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 240
    :cond_4
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 243
    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 244
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    move-object v10, v2

    .line 246
    goto :goto_0

    .line 249
    .end local v8    # "pos":I
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p1, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 250
    const/4 v4, 0x0

    goto :goto_1

    .line 255
    .end local v0    # "b":B
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v10

    if-lez v10, :cond_7

    .line 256
    invoke-virtual {p1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 257
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 258
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v10

    invoke-virtual {p1, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 262
    :cond_7
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10, v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 263
    iget-object v10, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v10, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    move-object v10, v2

    .line 265
    goto/16 :goto_0
.end method

.method public setContentLength(IZ)V
    .locals 3
    .param p1, "contentLength"    # I
    .param p2, "resetMatchCount"    # Z

    .prologue
    .line 139
    if-gtz p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 145
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 148
    :cond_1
    return-void
.end method

.method public setDelimiter([BZ)V
    .locals 3
    .param p1, "delim"    # [B
    .param p2, "resetMatchCount"    # Z

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null delimiter not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    array-length v1, p1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 168
    .local v0, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 169
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 172
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 173
    if-eqz p2, :cond_1

    .line 174
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 176
    :cond_1
    return-void
.end method
