.class public Lcom/kankunit/smartplugcronus/minautil/MinaClientHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "MinaClientHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MinaClientHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> exceptionCaught :"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> messageReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "MinaClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NIO Client Received]>>{}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "i got u"

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 47
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> messageSent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "MinaClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NIO Client messageSent]>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> sessionClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> sessionCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "android client create"

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 23
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> sessionIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "MinaClientHandler"

    const-string v1, "[NIO Client]>> sessionOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v0, "android client open"

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 28
    return-void
.end method
