.class public abstract Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;
.super Ljava/lang/Object;
.source "FixedLengthDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    .line 46
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_1

    .line 54
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    if-lt v2, v3, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 56
    .local v0, "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 57
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 58
    .local v1, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 60
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 79
    .end local v0    # "limit":I
    .end local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;
    :cond_0
    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 64
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 69
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 70
    .restart local v0    # "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 71
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 72
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 73
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 74
    .restart local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 75
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    goto :goto_0

    .line 78
    .end local v0    # "limit":I
    .end local v1    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method protected abstract finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 94
    .local v0, "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 92
    .restart local v0    # "readData":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/FixedLengthDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method
