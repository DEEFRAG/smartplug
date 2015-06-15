.class public Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
.super Ljava/lang/Object;
.source "DeviceInfoModel.java"


# instance fields
.field private brState:Ljava/lang/String;

.field private delayTime:Ljava/lang/String;

.field private deviceTime:Ljava/lang/String;

.field private hardV:Ljava/lang/String;

.field private miniDelayStr:Ljava/lang/String;

.field private showMiniDelay:Ljava/lang/String;

.field private softV:Ljava/lang/String;

.field private timerList:[Ljava/lang/String;

.field private timerListLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->brState:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->delayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->deviceTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHardV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->hardV:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniDelayStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->miniDelayStr:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMiniDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->showMiniDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->softV:Ljava/lang/String;

    return-object v0
.end method

.method public getTimerList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->timerList:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimerListLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->timerListLength:I

    return v0
.end method

.method public setBrState(Ljava/lang/String;)V
    .locals 0
    .param p1, "brState"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->brState:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDelayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "delayTime"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->delayTime:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDeviceTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceTime"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->deviceTime:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setHardV(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardV"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->hardV:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setMiniDelayStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "miniDelayStr"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->miniDelayStr:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setShowMiniDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "showMiniDelay"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->showMiniDelay:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSoftV(Ljava/lang/String;)V
    .locals 0
    .param p1, "softV"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->softV:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTimerList([Ljava/lang/String;)V
    .locals 0
    .param p1, "timerList"    # [Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->timerList:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTimerListLength(I)V
    .locals 0
    .param p1, "timerListLength"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->timerListLength:I

    .line 52
    return-void
.end method
