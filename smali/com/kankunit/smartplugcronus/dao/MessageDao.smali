.class public Lcom/kankunit/smartplugcronus/dao/MessageDao;
.super Ljava/lang/Object;
.source "MessageDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMsg(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 16
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 17
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MessageModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static getAllMsg(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/MessageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 21
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/MessageModel;

    const-string v2, "msgDate desc"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static saveMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/MessageModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgModel"    # Lcom/kankunit/smartplugcronus/model/MessageModel;

    .prologue
    .line 12
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 13
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 14
    return-void
.end method
