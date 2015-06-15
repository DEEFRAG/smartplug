.class public abstract Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
.super Ljava/lang/Object;
.source "CountDownTimerUtil.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCancelled:Z

    .line 117
    new-instance v0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;-><init>(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mHandler:Landroid/os/Handler;

    .line 72
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mMillisInFuture:J

    .line 73
    iput-wide p3, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCountdownInterval:J

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCountdownInterval:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCancelled:Z

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCancelled:Z

    .line 84
    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    .locals 5

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mMillisInFuture:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 97
    .end local p0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    .local v0, "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 94
    .end local v0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    .restart local p0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mMillisInFuture:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mStopTimeInFuture:J

    .line 95
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 97
    .end local p0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    .restart local v0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    goto :goto_0

    .line 90
    .end local v0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    .restart local p0    # "this":Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
