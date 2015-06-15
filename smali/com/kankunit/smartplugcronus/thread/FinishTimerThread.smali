.class public Lcom/kankunit/smartplugcronus/thread/FinishTimerThread;
.super Ljava/lang/Thread;
.source "FinishTimerThread.java"


# instance fields
.field private isOpenActivity:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isOpenActivity"    # Z

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/thread/FinishTimerThread;->isOpenActivity:Z

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/thread/FinishTimerThread;->isOpenActivity:Z

    if-nez v0, :cond_0

    .line 14
    return-void
.end method
