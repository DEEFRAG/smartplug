.class public Lcom/kankunit/smartplugcronus/dao/SceneDao;
.super Ljava/lang/Object;
.source "SceneDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSceneById(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 32
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 33
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getAllScene(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/SceneModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 16
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    const-string v2, "orderNo"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSceneById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/SceneModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 19
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 20
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    return-object v1
.end method

.method public static getSceneBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/SceneModel;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 24
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v1, v2, p1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 28
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateScene(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/SceneModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sceneModel"    # Lcom/kankunit/smartplugcronus/model/SceneModel;

    .prologue
    .line 36
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 37
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static updateSceneDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 40
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    .line 41
    .local v3, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    .line 42
    .local v2, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-class v7, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mac=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' and type in(2,3)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 43
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 52
    return-void

    .line 43
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 44
    .local v1, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "title":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "arr":[Ljava/lang/String;
    array-length v8, v0

    if-le v8, v10, :cond_0

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "newTitle":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setTitle(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method
