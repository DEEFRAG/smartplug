.class Lorg/apache/mina/handler/chain/IoHandlerChain$2;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain;->createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "next"    # Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->access$200(Lorg/apache/mina/handler/chain/IoHandlerChain;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "next":Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    check-cast p1, Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    .line 72
    .restart local p1    # "next":Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;->execute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method
