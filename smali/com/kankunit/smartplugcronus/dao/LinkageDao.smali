.class public Lcom/kankunit/smartplugcronus/dao/LinkageDao;
.super Ljava/lang/Object;
.source "LinkageDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLinkage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whereStr"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 39
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v0, v1, p1}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 15
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1, v2, p1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 16
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageModel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .line 19
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLinkageId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 32
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 33
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 35
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linkageModel"    # Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .prologue
    .line 23
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 24
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linkageModel"    # Lcom/kankunit/smartplugcronus/model/LinkageModel;

    .prologue
    .line 27
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 28
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
