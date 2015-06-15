.class Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;->doInBackground([Lcom/avos/avoscloud/AVOSCloud$ServerHostList;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;

.field final synthetic val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;Lcom/avos/avoscloud/AVOSCloud$ServerHostList;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->this$0:Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask;

    iput-object p2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 524
    if-nez p2, :cond_0

    .line 527
    :try_start_0
    const-class v3, Ljava/util/Map;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 528
    .local v2, "result":Ljava/util/Map;
    const-string v3, "hosts"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "h":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 530
    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    check-cast v0, Ljava/util/List;

    .end local v0    # "h":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->setHosts(Ljava/util/List;)V

    .line 531
    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->saveToLocal()V

    .line 532
    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getSelectedHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 533
    sget-object v3, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    iget-object v4, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getSelectedHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avos/avoscloud/PaasClient;->setServiceHost(Lcom/avos/avoscloud/AVOSServices;Ljava/lang/String;)V

    .line 535
    # getter for: Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host set to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->val$hostList:Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->getSelectedHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v2    # "result":Ljava/util/Map;
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "jsonParseException":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1}, Lcom/avos/avoscloud/AVOSCloud$ServerHostFetchTask$1;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 542
    const-string v3, "Exception during host server fetch"

    invoke-static {v3, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
