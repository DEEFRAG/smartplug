.class Lorg/apache/mina/handler/chain/IoHandlerChain$1;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain;->createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
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
    .line 59
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$1;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;->execute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
