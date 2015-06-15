.class public Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;
.super Ljava/lang/Object;
.source "LinkageDetailDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLinkageDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whereStr"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 38
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v0, v1, p1}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 14
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v1, v2, p1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 15
    .local v0, "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    .end local v0    # "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_0
    return-object v0

    .restart local v0    # "dmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLinkageDetailId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 31
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 32
    const-class v1, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 34
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static saveLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linkageDetailModel"    # Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .prologue
    .line 22
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 23
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linkageDetailModel"    # Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .prologue
    .line 26
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 27
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
