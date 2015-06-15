.class Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;
.super Landroid/os/Handler;
.source "CountDownTimerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 122
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    monitor-enter v7

    .line 123
    :try_start_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mStopTimeInFuture:J
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->access$0(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 125
    .local v4, "millisLeft":J
    cmp-long v6, v4, v12

    if-gtz v6, :cond_1

    .line 126
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->onFinish()V

    .line 122
    :cond_0
    :goto_0
    monitor-exit v7

    .line 146
    return-void

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCountdownInterval:J
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->access$1(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gez v6, :cond_2

    .line 129
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 122
    .end local v4    # "millisLeft":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 131
    .restart local v4    # "millisLeft":J
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 132
    .local v2, "lastTickStart":J
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    invoke-virtual {v6, v4, v5}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->onTick(J)V

    .line 135
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCountdownInterval:J
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->access$1(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 139
    .local v0, "delay":J
    :goto_1
    cmp-long v6, v0, v12

    if-ltz v6, :cond_3

    .line 141
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCancelled:Z
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->access$2(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v1}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 139
    :cond_3
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;

    # getter for: Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->mCountdownInterval:J
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;->access$1(Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_1
.end method
