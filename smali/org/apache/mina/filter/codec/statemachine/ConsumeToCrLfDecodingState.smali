.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToCrLfDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private lastIsCR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 11
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 57
    .local v1, "beginPos":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    .line 58
    .local v4, "limit":I
    const/4 v6, -0x1

    .line 60
    .local v6, "terminatorPos":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 61
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    .line 62
    .local v0, "b":B
    const/16 v7, 0xd

    if-ne v0, v7, :cond_0

    .line 63
    iput-boolean v9, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    .line 60
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/16 v7, 0xa

    if-ne v0, v7, :cond_3

    iget-boolean v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz v7, :cond_3

    .line 66
    move v6, v3

    .line 73
    .end local v0    # "b":B
    :cond_1
    if-ltz v6, :cond_7

    .line 76
    add-int/lit8 v2, v6, -0x1

    .line 78
    .local v2, "endPos":I
    if-ge v1, v2, :cond_5

    .line 79
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 81
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v7, :cond_4

    .line 82
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 89
    .local v5, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_2
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 99
    :goto_3
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 100
    invoke-virtual {p0, v5, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 116
    .end local v2    # "endPos":I
    .end local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;
    :cond_2
    :goto_4
    return-object p0

    .line 69
    .restart local v0    # "b":B
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;
    :cond_3
    iput-boolean v8, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    goto :goto_1

    .line 84
    .end local v0    # "b":B
    .restart local v2    # "endPos":I
    :cond_4
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 85
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 86
    .restart local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v10, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 92
    .end local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v7, :cond_6

    .line 93
    invoke-static {v8}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .restart local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_3

    .line 95
    .end local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_6
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 96
    .restart local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    iput-object v10, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3

    .line 103
    .end local v2    # "endPos":I
    .end local v5    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_7
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 105
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v7, :cond_8

    .line 106
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    invoke-static {v7}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 107
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 110
    :cond_8
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 112
    iget-boolean v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz v7, :cond_2

    .line 113
    iget-object v7, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v8, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4
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
    .line 125
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 131
    .local v0, "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 129
    .restart local v0    # "product":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method
