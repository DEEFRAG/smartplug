.class public Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
.super Ljava/lang/Object;
.source "MasterRemoteControlPannelModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_masterremotecontrolpannel"
.end annotation


# instance fields
.field private cpid:I

.field private icon:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isAuto:Z

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto:Z

    .line 7
    return-void
.end method


# virtual methods
.method public getCpid()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->cpid:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->icon:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->id:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->y:I

    return v0
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto:Z

    return v0
.end method

.method public setAuto(Z)V
    .locals 0
    .param p1, "isAuto"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto:Z

    .line 64
    return-void
.end method

.method public setCpid(I)V
    .locals 0
    .param p1, "cpid"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->cpid:I

    .line 58
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->icon:I

    .line 40
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->id:I

    .line 22
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->tag:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->x:I

    .line 28
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->y:I

    .line 34
    return-void
.end method
