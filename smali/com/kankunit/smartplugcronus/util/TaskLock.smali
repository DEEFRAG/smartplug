.class public Lcom/kankunit/smartplugcronus/util/TaskLock;
.super Ljava/lang/Object;
.source "TaskLock.java"


# instance fields
.field public condition:Ljava/util/concurrent/locks/Condition;

.field public lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    .line 14
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TaskLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/TaskLock;->condition:Ljava/util/concurrent/locks/Condition;

    .line 15
    return-void
.end method
