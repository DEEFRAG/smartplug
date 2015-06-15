.class public Lcom/kankunit/smartplugcronus/model/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_device"
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private isAuth:Ljava/lang/String;

.field private isDirect:I

.field private isFriend:I

.field private isOnline:I

.field private lightStatus:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private shortCutExists:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private time:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->port:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isFriend:I

    .line 26
    const-string v0, "y"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isAuth:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->id:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDirect()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isDirect:I

    return v0
.end method

.method public getIsFriend()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isFriend:I

    return v0
.end method

.method public getIsOnline()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isOnline:I

    return v0
.end method

.method public getLightStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->lightStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutExists()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->shortCutExists:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->time:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->version:I

    return v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->flag:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->id:I

    .line 40
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->ip:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setIsAuth(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAuth"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isAuth:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setIsDirect(I)V
    .locals 0
    .param p1, "isDirect"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isDirect:I

    .line 112
    return-void
.end method

.method public setIsFriend(I)V
    .locals 0
    .param p1, "isFriend"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isFriend:I

    .line 118
    return-void
.end method

.method public setIsOnline(I)V
    .locals 0
    .param p1, "isOnline"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->isOnline:I

    .line 106
    return-void
.end method

.method public setLightStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "lightStatus"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->lightStatus:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->mac:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->password:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->port:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setShortCutExists(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortCutExists"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->shortCutExists:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->status:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->time:J

    .line 94
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DeviceModel;->version:I

    .line 100
    return-void
.end method
