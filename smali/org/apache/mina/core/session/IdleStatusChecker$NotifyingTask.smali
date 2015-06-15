.class public Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
.super Ljava/lang/Object;
.source "IdleStatusChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/IdleStatusChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyingTask"
.end annotation


# instance fields
.field private volatile cancelled:Z

.field final synthetic this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private notifySessions(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 131
    iget-object v2, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    # getter for: Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/mina/core/session/IdleStatusChecker;->access$000(Lorg/apache/mina/core/session/IdleStatusChecker;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/AbstractIoSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 134
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {v1, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V

    goto :goto_0

    .line 138
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancelled:Z

    .line 124
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    .line 125
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 128
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    .line 102
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancelled:Z

    if-nez v2, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->notifySessions(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0

    .line 115
    .end local v0    # "currentTime":J
    :cond_0
    iput-object v4, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    throw v2
.end method
