.class public abstract Lorg/apache/mina/filter/codec/statemachine/LinearWhitespaceSkippingState;
.super Lorg/apache/mina/filter/codec/statemachine/SkippingState;
.source "LinearWhitespaceSkippingState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;-><init>()V

    return-void
.end method


# virtual methods
.method protected canSkip(B)Z
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 34
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
