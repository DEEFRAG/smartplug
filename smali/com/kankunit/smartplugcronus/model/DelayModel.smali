.class public Lcom/kankunit/smartplugcronus/model/DelayModel;
.super Ljava/lang/Object;
.source "DelayModel.java"


# instance fields
.field private delayCloseLongTime:J

.field private delayCloseRealTime:Ljava/lang/String;

.field private delayCloseState:Ljava/lang/String;

.field private delayDate:Ljava/lang/String;

.field private delayHasCloseTimeState:Ljava/lang/String;

.field private delayHasOpenTimeState:Ljava/lang/String;

.field private delayOpenLongTime:J

.field private delayOpenRealTime:Ljava/lang/String;

.field private delayOpenState:Ljava/lang/String;

.field private delayRepeat:Ljava/lang/String;

.field private delayState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelayCloseLongTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseLongTime:J

    return-wide v0
.end method

.method public getDelayCloseRealTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseRealTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayCloseState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseState:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayHasCloseTimeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayHasCloseTimeState:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayHasOpenTimeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayHasOpenTimeState:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayOpenLongTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenLongTime:J

    return-wide v0
.end method

.method public getDelayOpenRealTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenRealTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayOpenState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenState:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayRepeat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayState:Ljava/lang/String;

    return-object v0
.end method

.method public setDelayCloseLongTime(J)V
    .locals 0
    .param p1, "delayCloseLongTime"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseLongTime:J

    .line 66
    return-void
.end method

.method public setDelayCloseRealTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayCloseRealTime"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseRealTime:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setDelayCloseState(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayCloseState"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayCloseState:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDelayDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayDate"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayDate:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDelayHasCloseTimeState(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayHasCloseTimeState"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayHasCloseTimeState:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setDelayHasOpenTimeState(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayHasOpenTimeState"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayHasOpenTimeState:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setDelayOpenLongTime(J)V
    .locals 0
    .param p1, "delayOpenLongTime"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenLongTime:J

    .line 54
    return-void
.end method

.method public setDelayOpenRealTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayOpenRealTime"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenRealTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDelayOpenState(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayOpenState"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayOpenState:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDelayRepeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayRepeat"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayRepeat:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDelayState(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayState"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DelayModel;->delayState:Ljava/lang/String;

    .line 102
    return-void
.end method
