.class public Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "MinaHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handleSession:Lorg/apache/mina/core/session/IoSession;

.field private isEncode:Z

.field private isMsgReceived:Z

.field private mHandler:Landroid/os/Handler;

.field private mTimeOut:I

.field private mTimer:Ljava/util/Timer;

.field private minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

.field private minaResponseTimeOutListener:Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 21
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimeOut:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isEncode:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V
    .locals 1
    .param p1, "minaListener"    # Lcom/kankunit/smartplugcronus/minautil/MinaListener;
    .param p2, "minaResponseTimeOutListener"    # Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 21
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimeOut:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isEncode:Z

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaResponseTimeOutListener:Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;

    .line 33
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V
    .locals 1
    .param p1, "minaListener"    # Lcom/kankunit/smartplugcronus/minautil/MinaListener;
    .param p2, "minaResponseTimeOutListener"    # Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
    .param p3, "b"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 21
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimeOut:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isEncode:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaResponseTimeOutListener:Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;

    .line 39
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    .line 40
    iput-boolean p3, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isEncode:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 48
    return-void
.end method

.method public getMinaListener()Lcom/kankunit/smartplugcronus/minautil/MinaListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaResponseTimeOutListener:Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaResponseTimeOutListener:Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->handleSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;->doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V

    .line 106
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->handleSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->handleSession:Lorg/apache/mina/core/session/IoSession;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->handleSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 111
    :cond_1
    return v2
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
    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isMsgReceived:Z

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    if-eqz v0, :cond_0

    .line 55
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->isEncode:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaListener;->receiveMsg(Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 62
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaListener;->receiveMsg(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->handleSession:Lorg/apache/mina/core/session/IoSession;

    .line 71
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimer:Ljava/util/Timer;

    .line 72
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler$1;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 82
    .local v0, "timerTast":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimer:Ljava/util/Timer;

    iget v2, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->mTimeOut:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public setMinaListener(Lcom/kankunit/smartplugcronus/minautil/MinaListener;)V
    .locals 0
    .param p1, "minaListener"    # Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;->minaListener:Lcom/kankunit/smartplugcronus/minautil/MinaListener;

    .line 100
    return-void
.end method
