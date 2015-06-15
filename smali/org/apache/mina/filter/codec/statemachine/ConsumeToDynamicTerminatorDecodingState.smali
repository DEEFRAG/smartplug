.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToDynamicTerminatorDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 8
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 42
    .local v1, "beginPos":I
    const/4 v5, -0x1

    .line 43
    .local v5, "terminatorPos":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    .line 45
    .local v3, "limit":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 46
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    .line 47
    .local v0, "b":B
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->isTerminator(B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    move v5, v2

    .line 53
    .end local v0    # "b":B
    :cond_0
    if-ltz v5, :cond_5

    .line 56
    if-ge v1, v5, :cond_3

    .line 57
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v6, :cond_2

    .line 60
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 67
    .local v4, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 77
    :goto_2
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 78
    invoke-virtual {p0, v4, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 86
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
    :goto_3
    return-object p0

    .line 45
    .restart local v0    # "b":B
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "b":B
    :cond_2
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 63
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 64
    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 70
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v6, :cond_4

    .line 71
    const/4 v6, 0x0

    invoke-static {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_2

    .line 73
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_4
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 74
    .restart local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 81
    .end local v4    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v6, :cond_6

    .line 82
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 83
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 85
    :cond_6
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3
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
    .line 96
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 102
    .local v0, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 100
    .restart local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method protected abstract isTerminator(B)Z
.end method
