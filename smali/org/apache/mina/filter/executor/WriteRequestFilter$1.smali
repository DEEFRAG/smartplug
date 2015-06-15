.class Lorg/apache/mina/filter/executor/WriteRequestFilter$1;
.super Ljava/lang/Object;
.source "WriteRequestFilter.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/filter/executor/WriteRequestFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
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
        "Lorg/apache/mina/core/future/WriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

.field final synthetic val$e:Lorg/apache/mina/core/session/IoEvent;


# direct methods
.method constructor <init>(Lorg/apache/mina/filter/executor/WriteRequestFilter;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->val$e:Lorg/apache/mina/core/session/IoEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 108
    check-cast p1, Lorg/apache/mina/core/future/WriteFuture;

    .end local p1    # "x0":Lorg/apache/mina/core/future/IoFuture;
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 3
    .param p1, "future"    # Lorg/apache/mina/core/future/WriteFuture;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    # getter for: Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    invoke-static {v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter;->access$000(Lorg/apache/mina/filter/executor/WriteRequestFilter;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->val$e:Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 111
    return-void
.end method
