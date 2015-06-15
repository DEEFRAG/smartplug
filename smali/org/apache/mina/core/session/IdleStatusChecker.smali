.class public Lorg/apache/mina/core/session/IdleStatusChecker;
.super Ljava/lang/Object;
.source "IdleStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;,
        Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
    }
.end annotation


# instance fields
.field private final notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

.field private final sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/core/session/AbstractIoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/mina/util/ConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/mina/util/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;-><init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    .line 52
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;-><init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/session/IdleStatusChecker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/session/IdleStatusChecker;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/session/IdleStatusChecker;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/session/IdleStatusChecker;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/IdleStatusChecker;->removeSession(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method private removeSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method public addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 64
    iget-object v1, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    .line 68
    .local v0, "closeFuture":Lorg/apache/mina/core/future/CloseFuture;
    iget-object v1, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 69
    return-void
.end method

.method public getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    return-object v0
.end method
