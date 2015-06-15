.class Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;
.super Ljava/lang/Object;
.source "IoServiceListenerSupport.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/IoServiceListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockNotifyingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener",
        "<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    .line 312
    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 315
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
