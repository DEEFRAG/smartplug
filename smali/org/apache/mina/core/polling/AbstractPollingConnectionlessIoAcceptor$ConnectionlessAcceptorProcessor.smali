.class Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;
.super Ljava/lang/Object;
.source "AbstractPollingConnectionlessIoAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionlessAcceptorProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V
    .locals 0

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    return-void
.end method

.method public flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    # invokes: Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    invoke-static {v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    .line 347
    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 351
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 352
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<TS;TH;>.ConnectionlessAcceptorProcessor;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method
