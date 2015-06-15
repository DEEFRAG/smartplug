.class public Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
.super Ljava/lang/Object;
.source "RemoteControlModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_remote_control"
.end annotation


# instance fields
.field private brand:Ljava/lang/String;

.field private brandType:Ljava/lang/String;

.field private dname:Ljava/lang/String;

.field private history:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isLearn:I

.field private mac:Ljava/lang/String;

.field private model:I

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private photo:I

.field private port:I

.field private status:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->mac:Ljava/lang/String;

    .line 11
    const/16 v0, 0xbd7

    iput v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->port:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->status:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->dname:Ljava/lang/String;

    .line 15
    const-string v0, "nopassword"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->password:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->photo:I

    .line 18
    iput v2, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->type:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brand:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brandType:Ljava/lang/String;

    .line 21
    iput v2, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->model:I

    .line 22
    iput v1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->isLearn:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->history:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brandType:Ljava/lang/String;

    return-object v0
.end method

.method public getDname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->dname:Ljava/lang/String;

    return-object v0
.end method

.method public getHistory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->history:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->id:I

    return v0
.end method

.method public getIsLearn()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->isLearn:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->model:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->photo:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->port:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->type:I

    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brand:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setBrandType(Ljava/lang/String;)V
    .locals 0
    .param p1, "brandType"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->brandType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDname(Ljava/lang/String;)V
    .locals 0
    .param p1, "dname"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->dname:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setHistory(Ljava/lang/String;)V
    .locals 0
    .param p1, "history"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->history:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->id:I

    .line 31
    return-void
.end method

.method public setIsLearn(I)V
    .locals 0
    .param p1, "isLearn"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->isLearn:I

    .line 97
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->mac:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->model:I

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->password:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPhoto(I)V
    .locals 0
    .param p1, "photo"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->photo:I

    .line 61
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->port:I

    .line 103
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->status:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->type:I

    .line 67
    return-void
.end method
