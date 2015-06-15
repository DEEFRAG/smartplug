.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToLinearWhitespaceDecodingState;
.super Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
.source "ConsumeToLinearWhitespaceDecodingState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;-><init>()V

    return-void
.end method


# virtual methods
.method protected isTerminator(B)Z
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 36
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
