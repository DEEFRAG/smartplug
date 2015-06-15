.class public Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;
.super Ljava/lang/Object;
.source "SceneDeviceModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_scenedevice_model"
.end annotation


# instance fields
.field private delaySec:I

.field private deviceName:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I

.field private operateType:I

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelaySec()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->delaySec:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->id:I

    return v0
.end method

.method public getOperateType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->operateType:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public setDelaySec(I)V
    .locals 0
    .param p1, "delaySec"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->delaySec:I

    .line 57
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->deviceName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->icon:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->id:I

    .line 33
    return-void
.end method

.method public setOperateType(I)V
    .locals 0
    .param p1, "operateType"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->operateType:I

    .line 45
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDeviceModel;->pwd:Ljava/lang/String;

    .line 51
    return-void
.end method
