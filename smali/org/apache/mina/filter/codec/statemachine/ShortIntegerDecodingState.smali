.class public abstract Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
.super Ljava/lang/Object;
.source "ShortIntegerDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I

.field private highByte:I


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
    .line 43
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 46
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->highByte:I

    .line 55
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    .line 50
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->highByte:I

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 57
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
    :cond_0
    return-object p0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 65
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v1, "Unexpected end of session while waiting for a short integer."

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
