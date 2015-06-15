.class Lorg/apache/mina/core/service/AbstractIoConnector$2;
.super Ljava/lang/Object;
.source "AbstractIoConnector.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/service/AbstractIoConnector;->finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener",
        "<",
        "Lorg/apache/mina/core/future/ConnectFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoConnector;

.field final synthetic val$session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/service/AbstractIoConnector;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->this$0:Lorg/apache/mina/core/service/AbstractIoConnector;

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->val$session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/apache/mina/core/future/ConnectFuture;

    .prologue
    .line 288
    invoke-interface {p1}, Lorg/apache/mina/core/future/ConnectFuture;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->val$session:Lorg/apache/mina/core/session/IoSession;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 291
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 286
    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    .end local p1    # "x0":Lorg/apache/mina/core/future/IoFuture;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector$2;->operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
