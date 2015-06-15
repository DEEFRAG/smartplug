.class public Lorg/apache/mina/filter/codec/ProtocolCodecSession;
.super Lorg/apache/mina/core/session/DummySession;
.source "ProtocolCodecSession.java"


# instance fields
.field private final decoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;

.field private final encoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

.field private final notWrittenFuture:Lorg/apache/mina/core/future/WriteFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->notWrittenFuture:Lorg/apache/mina/core/future/WriteFuture;

    .line 65
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecSession$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/codec/ProtocolCodecSession$1;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->encoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    .line 72
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecSession$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/codec/ProtocolCodecSession$2;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->decoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/ProtocolCodecSession;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->notWrittenFuture:Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method


# virtual methods
.method public getDecoderOutput()Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->decoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;

    return-object v0
.end method

.method public getDecoderOutputQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->decoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public getEncoderOutput()Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->encoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    return-object v0
.end method

.method public getEncoderOutputQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->encoderOutput:Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
