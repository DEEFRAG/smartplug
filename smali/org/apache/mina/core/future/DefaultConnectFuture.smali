.class public Lorg/apache/mina/core/future/DefaultConnectFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultConnectFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/ConnectFuture;


# static fields
.field private static final CANCELED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 50
    return-void
.end method

.method public static newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    new-instance v0, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 41
    .local v0, "failedFuture":Lorg/apache/mina/core/future/DefaultConnectFuture;
    invoke-virtual {v0, p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

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
    .line 31
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->await()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Ljava/lang/Throwable;

    .line 74
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "v":Ljava/lang/Object;
    throw v0

    .line 57
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "v":Ljava/lang/Object;
    throw v0

    .line 59
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 60
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to get the session."

    invoke-direct {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/RuntimeIoException;

    throw v1

    .line 62
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lorg/apache/mina/core/session/IoSession;

    if-eqz v1, :cond_3

    .line 63
    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 65
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/session/IoSession;

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
