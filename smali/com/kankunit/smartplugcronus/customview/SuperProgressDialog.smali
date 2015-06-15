.class public Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
.super Landroid/app/ProgressDialog;
.source "SuperProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTimeOut:J

.field private mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOut:J

    .line 14
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    .line 15
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    .line 16
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$1;-><init>(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static createProgressDialog(Landroid/content/Context;JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "listener"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    .prologue
    .line 86
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "progressDialog":Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setTimeOut(JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)V

    .line 90
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    .line 59
    iget-wide v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOut:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    .line 61
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$2;-><init>(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 69
    .local v0, "timerTast":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOut:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 72
    .end local v0    # "timerTast":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimer:Ljava/util/Timer;

    .line 54
    :cond_0
    return-void
.end method

.method public setTimeOut(JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)V
    .locals 0
    .param p1, "t"    # J
    .param p3, "timeOutListener"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOut:J

    .line 41
    if-eqz p3, :cond_0

    .line 42
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->mTimeOutListener:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    .line 44
    :cond_0
    return-void
.end method
