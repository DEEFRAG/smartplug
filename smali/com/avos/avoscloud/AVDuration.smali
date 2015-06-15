.class public Lcom/avos/avoscloud/AVDuration;
.super Ljava/lang/Object;
.source "AVDuration.java"


# instance fields
.field private createTimeStamp:J

.field private duration:J

.field private internalDebug:Z

.field private resumeTimeStamp:J

.field private stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->internalDebug:Z

    .line 19
    return-void
.end method

.method public static currentTS()J
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addDuration(J)V
    .locals 2
    .param p1, "ms"    # J

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    .line 70
    return-void
.end method

.method public getCreateTimeStamp()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVDuration;->sync()V

    .line 27
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 28
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->internalDebug:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 31
    :cond_0
    iput-wide v3, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    .line 33
    :cond_1
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    return-wide v0
.end method

.method protected getResumeTimeStamp()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    return-wide v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVDuration;->sync()V

    .line 60
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVDuration;->currentTS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    goto :goto_0
.end method

.method protected setCreateTimeStamp(J)V
    .locals 0
    .param p1, "createTimeStamp"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    .line 96
    return-void
.end method

.method public setDuration(J)V
    .locals 4
    .param p1, "ms"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    .line 64
    invoke-static {}, Lcom/avos/avoscloud/AVDuration;->currentTS()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    .line 65
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    .line 66
    return-void
.end method

.method protected setResumeTimeStamp(J)V
    .locals 0
    .param p1, "resumeTimeStamp"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    .line 92
    return-void
.end method

.method protected setStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    .line 100
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    .line 38
    invoke-static {}, Lcom/avos/avoscloud/AVDuration;->currentTS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    .line 39
    iget-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->createTimeStamp:J

    iput-wide v0, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    .line 40
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVDuration;->sync()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    .line 45
    return-void
.end method

.method public sync()V
    .locals 6

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/avos/avoscloud/AVDuration;->stopped:Z

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVDuration;->currentTS()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    sub-long v0, v2, v4

    .line 78
    .local v0, "d":J
    iget-wide v2, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/avos/avoscloud/AVDuration;->duration:J

    .line 79
    invoke-static {}, Lcom/avos/avoscloud/AVDuration;->currentTS()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/AVDuration;->resumeTimeStamp:J

    goto :goto_0
.end method
