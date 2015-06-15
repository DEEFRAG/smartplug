.class public Lorg/apache/mina/core/future/DefaultWriteFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultWriteFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/WriteFuture;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 54
    return-void
.end method

.method public static newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 45
    .local v0, "unwrittenFuture":Lorg/apache/mina/core/future/DefaultWriteFuture;
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 46
    return-object v0
.end method

.method public static newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 35
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 36
    .local v0, "unwrittenFuture":Lorg/apache/mina/core/future/DefaultWriteFuture;
    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setWritten()V

    .line 37
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

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
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->await()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Ljava/lang/Throwable;

    .line 79
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritten()Z
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setWritten()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
