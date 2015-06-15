.class public Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;
.super Ljava/lang/Object;
.source "SceneRemoteControlModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_sceneremotecontrol_model"
.end annotation


# instance fields
.field private codeNo:I

.field private controlPannelName:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeNo()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->codeNo:I

    return v0
.end method

.method public getControlPannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->controlPannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->id:I

    return v0
.end method

.method public setCodeNo(I)V
    .locals 0
    .param p1, "codeNo"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->codeNo:I

    .line 36
    return-void
.end method

.method public setControlPannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "controlPannelName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->controlPannelName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->icon:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRemoteControlModel;->id:I

    .line 18
    return-void
.end method
