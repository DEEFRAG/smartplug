.class public Lcom/kankunit/smartplugcronus/dao/DeviceDao;
.super Ljava/lang/Object;
.source "DeviceDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDeviceByMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 45
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-class v3, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static getAllDevice(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 19
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getAllK2OnlineDevice(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 23
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v3, " isOnline=1 and version=2"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 24
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    return-object v1
.end method

.method public static getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 14
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 15
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v1
.end method

.method public static getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 36
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 40
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDeviceByVersion(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 52
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "version ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    return-object v0
.end method

.method public static saveDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceModel"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 27
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 28
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceModel"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 31
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 32
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static updateDeviceFlagByDeviceId(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceid"    # I
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 57
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 58
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method
