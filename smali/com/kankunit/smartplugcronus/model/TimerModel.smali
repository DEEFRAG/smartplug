.class public Lcom/kankunit/smartplugcronus/model/TimerModel;
.super Ljava/lang/Object;
.source "TimerModel.java"


# instance fields
.field private dataTime:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->dataTime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->week:Ljava/lang/String;

    return-object v0
.end method

.method public setDataTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataTime"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->dataTime:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->state:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->time:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "week"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/TimerModel;->week:Ljava/lang/String;

    .line 32
    return-void
.end method
