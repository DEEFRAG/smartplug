.class public Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;
.super Ljava/lang/Object;
.source "RemoteControlDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteById(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 15
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 16
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static deleteByMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 54
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mac=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/RemoteControlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 26
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getControlById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 20
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 21
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    return-object v1
.end method

.method public static getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/RemoteControlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 48
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mac=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    return-object v1
.end method

.method public static getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/RemoteControlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 38
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const/16 v2, 0xbdb

    .line 39
    .local v2, "port":I
    const-string v3, "ir_module"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const/16 v2, 0xbd7

    .line 42
    :cond_0
    const-class v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mac=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    return-object v1
.end method

.method public static isExistShortcut(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 59
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shortcutType like \'%RemoteControl%\' and relatedid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 63
    :cond_0
    return v2
.end method
