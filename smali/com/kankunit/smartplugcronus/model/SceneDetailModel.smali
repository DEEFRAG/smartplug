.class public Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
.super Ljava/lang/Object;
.source "SceneDetailModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_scene_detail"
.end annotation


# instance fields
.field private action:I

.field private controlId:I

.field private detailStatus:I

.field private deviceName:Ljava/lang/String;

.field private groupString:Ljava/lang/String;

.field private hour:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isNew:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private minute:I

.field private recordIdx:Ljava/lang/String;

.field private sceneId:I

.field private second:I

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->title:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->hour:I

    .line 21
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->minute:I

    .line 22
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->second:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->mac:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->isNew:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->status:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->deviceName:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->action:I

    .line 28
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->detailStatus:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->controlId:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->groupString:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->recordIdx:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->action:I

    return v0
.end method

.method public getControlId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->controlId:I

    return v0
.end method

.method public getDetailStatus()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->detailStatus:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->groupString:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->hour:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->id:I

    return v0
.end method

.method public getIsNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->isNew:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->minute:I

    return v0
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->recordIdx:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->sceneId:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->second:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->type:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->action:I

    .line 101
    return-void
.end method

.method public setControlId(I)V
    .locals 0
    .param p1, "controlId"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->controlId:I

    .line 114
    return-void
.end method

.method public setDetailStatus(I)V
    .locals 0
    .param p1, "detailStatus"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->detailStatus:I

    .line 107
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->deviceName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setGroupString(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupString"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->groupString:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->hour:I

    .line 65
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->id:I

    .line 41
    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .locals 0
    .param p1, "isNew"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->isNew:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->mac:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->minute:I

    .line 71
    return-void
.end method

.method public setRecordIdx(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordIdx"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->recordIdx:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSceneId(I)V
    .locals 0
    .param p1, "sceneId"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->sceneId:I

    .line 47
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->second:I

    .line 132
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->status:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->title:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->type:I

    .line 59
    return-void
.end method
