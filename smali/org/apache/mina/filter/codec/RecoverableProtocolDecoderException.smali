.class public Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderException;
.source "RecoverableProtocolDecoderException.java"


# static fields
.field private static final serialVersionUID:J = -0x716afe44be862826L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
