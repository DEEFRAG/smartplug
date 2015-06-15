.class public Lorg/apache/mina/core/future/DefaultReadFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultReadFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/ReadFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/future/DefaultReadFuture$1;,
        Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;
    }
.end annotation


# static fields
.field private static final CLOSED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

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
    .line 33
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->await()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    .end local v0    # "v":Ljava/lang/Object;
    # getter for: Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->exception:Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->access$000(Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;)Ljava/lang/Throwable;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "v":Ljava/lang/Object;
    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    move-object v0, v1

    .line 67
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 51
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    .end local v0    # "v":Ljava/lang/Object;
    # getter for: Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->exception:Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->access$000(Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;)Ljava/lang/Throwable;

    move-result-object v0

    .line 53
    .local v0, "v":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 54
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "v":Ljava/lang/Throwable;
    throw v0

    .line 56
    .restart local v0    # "v":Ljava/lang/Throwable;
    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    .line 57
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "v":Ljava/lang/Throwable;
    throw v0

    .line 59
    .restart local v0    # "v":Ljava/lang/Throwable;
    :cond_3
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 60
    :cond_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "v":Ljava/lang/Throwable;
    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public isRead()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "v":Ljava/lang/Object;
    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 76
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public setClosed()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;-><init>(Ljava/lang/Throwable;Lorg/apache/mina/core/future/DefaultReadFuture$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setRead(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)V

    .line 105
    return-void
.end method
