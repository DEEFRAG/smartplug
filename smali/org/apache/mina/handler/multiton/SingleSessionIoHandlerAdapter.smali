.class public Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;
.super Ljava/lang/Object;
.source "SingleSessionIoHandlerAdapter.java"

# interfaces
.implements Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    .line 50
    return-void
.end method


# virtual methods
.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method protected getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public messageReceived(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public messageSent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public sessionClosed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public sessionCreated()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public sessionOpened()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
