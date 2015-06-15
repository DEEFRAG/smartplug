.class public abstract Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;
.super Ljava/lang/Object;
.source "IntegerDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I

.field private firstByte:I

.field private secondByte:I

.field private thirdByte:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->firstByte:I

    .line 63
    :goto_1
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->secondByte:I

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->thirdByte:I

    goto :goto_1

    .line 56
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    .line 57
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->firstByte:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->secondByte:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->thirdByte:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 66
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;
    :cond_0
    return-object p0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
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
    .line 74
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v1, "Unexpected end of session while waiting for an integer."

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
