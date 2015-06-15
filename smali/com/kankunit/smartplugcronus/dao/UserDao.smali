.class public Lcom/kankunit/smartplugcronus/dao/UserDao;
.super Ljava/lang/Object;
.source "UserDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserByUserId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/UserModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 12
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 13
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/UserModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userid = \'"

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

    .line 14
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/UserModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/UserModel;

    .line 17
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userModel"    # Lcom/kankunit/smartplugcronus/model/UserModel;

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 22
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static updateUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userModel"    # Lcom/kankunit/smartplugcronus/model/UserModel;

    .prologue
    .line 25
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 26
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
