.class public Lorg/apache/mina/core/future/DefaultCloseFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultCloseFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/CloseFuture;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultCloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->await()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultCloseFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public setClosed()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->setValue(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
