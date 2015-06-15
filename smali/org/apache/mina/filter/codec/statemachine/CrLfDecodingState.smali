.class public abstract Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;
.super Ljava/lang/Object;
.source "CrLfDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private hasCR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    const/16 v4, 0xa

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "found":Z
    const/4 v1, 0x0

    .line 57
    .local v1, "finished":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    .line 59
    .local v0, "b":B
    iget-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    if-nez v3, :cond_4

    .line 60
    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 61
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    goto :goto_0

    .line 63
    :cond_0
    if-ne v0, v4, :cond_3

    .line 64
    const/4 v2, 0x1

    .line 69
    :goto_1
    const/4 v1, 0x1

    .line 84
    .end local v0    # "b":B
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 85
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    .line 86
    invoke-virtual {p0, v2, p2}, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 89
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;
    :cond_2
    return-object p0

    .line 66
    .restart local v0    # "b":B
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 67
    const/4 v2, 0x0

    goto :goto_1

    .line 73
    :cond_4
    if-ne v0, v4, :cond_5

    .line 74
    const/4 v2, 0x1

    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_2

    .line 79
    :cond_5
    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected LF after CR but was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    return-object v0
.end method

.method protected abstract finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
