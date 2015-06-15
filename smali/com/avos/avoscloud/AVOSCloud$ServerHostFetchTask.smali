.class public Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;
.super Landroid/os/AsyncTask;
.source "AVOSCloud.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVOSCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerHostFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/avos/avoscloud/AVOSCloud$ServerHostList;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, [Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;->doInBackground([Lcom/avos/avoscloud/AVOSCloud$ServerHostList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/avos/avoscloud/AVOSCloud$ServerHostList;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    .prologue
    const/4 v2, 0x0

    .line 518
    const/4 v0, 0x0

    aget-object v6, p1, v0

    .line 519
    .local v6, "hostList":Lcom/avos/avoscloud/AVOSCloud$ServerHostList;
    const-string v0, "try to fetch host list"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "appHosts"

    const/4 v3, 0x1

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;-><init>(Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;Lcom/avos/avoscloud/AVOSCloud$ServerHostList;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 552
    return-object v2
.end method
