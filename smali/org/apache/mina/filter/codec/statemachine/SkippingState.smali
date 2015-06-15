.class public abstract Lorg/apache/mina/filter/codec/statemachine/SkippingState;
.super Ljava/lang/Object;
.source "SkippingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private skippedBytes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract canSkip(B)Z
.end method

.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 6
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 41
    .local v2, "beginPos":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    .line 42
    .local v4, "limit":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 43
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    .line 44
    .local v1, "b":B
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->canSkip(B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 46
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 47
    .local v0, "answer":I
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 48
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 55
    .end local v0    # "answer":I
    .end local v1    # "b":B
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/SkippingState;
    :goto_1
    return-object p0

    .line 51
    .restart local v1    # "b":B
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/SkippingState;
    :cond_0
    iget v5, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1
.end method

.method protected abstract finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    return-object v0
.end method
