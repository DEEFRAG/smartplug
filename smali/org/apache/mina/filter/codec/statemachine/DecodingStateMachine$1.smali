.class Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;
.super Ljava/lang/Object;
.source "DecodingStateMachine.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;


# direct methods
.method constructor <init>(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;->this$0:Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 59
    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;->this$0:Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    # getter for: Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->access$000(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
