.class public Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;
.super Ljava/lang/Object;
.source "MasterRemoteControlPannelDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllMasterRemoteControlPannel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 19
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method public static deleteMasterRemoteControlPannelByCpid(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpid"    # I

    .prologue
    .line 22
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 23
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cpid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static deleteMasterRemoteControlPannelByCpidAndTag(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpid"    # I
    .param p2, "btnTag"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 27
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cpid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and tag=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getMasterRemoteControlPannelByCpid(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 41
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cpid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getMaxCpid(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 45
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-string v3, "select max(cpid) as maxcpid from ikonke_masterremotecontrolpannel"

    invoke-virtual {v1, v3}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 46
    .local v0, "dm":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    const-string v3, "maxcpid"

    invoke-virtual {v0, v3}, Lnet/tsz/afinal/db/sqlite/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "maxcpid"

    invoke-virtual {v0, v3}, Lnet/tsz/afinal/db/sqlite/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const-string v2, "maxcpid"

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/db/sqlite/DbModel;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static saveMasterRemoteControlPannel(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "masterRemoteControlPannel"    # Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .prologue
    .line 14
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 15
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public static updateOrSaveMasterRemoteControlPannel(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "masterRemoteControlPannelModel"    # Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .prologue
    .line 30
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 31
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .line 32
    .local v1, "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method
