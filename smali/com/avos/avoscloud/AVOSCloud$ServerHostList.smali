.class Lcom/avos/avoscloud/AVOSCloud$ServerHostList;
.super Ljava/lang/Object;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVOSCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerHostList"
.end annotation


# static fields
.field static final AVOS_SELECTED_SERVER_HOST:Ljava/lang/String; = "avoscloud_selected_server_host"

.field static final AVOS_SERVER_HOST_LIST_KEY:Ljava/lang/String; = "avoscloud_server_host_list_key"

.field static final AVOS_SERVER_HOST_ZONE:Ljava/lang/String; = "avoscloud_server_host_zone"

.field static final AVOS_SERVER_IP_LIST_KEY:Ljava/lang/String; = "avoscloud_server_ip_list_key"


# instance fields
.field hosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;

.field selectedHost:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->random:Ljava/util/Random;

    return-void
.end method

.method protected static getLocalInstance()Lcom/avos/avoscloud/AVOSCloud$ServerHostList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 499
    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;-><init>()V

    .line 500
    .local v0, "hostList":Lcom/avos/avoscloud/AVOSCloud$ServerHostList;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    const-string v3, "avoscloud_server_host_zone"

    const-string v4, "avoscloud_server_host_list_key"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "hostListString":Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    :try_start_0
    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->setHosts(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    const-string v3, "avoscloud_server_host_zone"

    const-string v4, "avoscloud_selected_server_host"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->setSelectedHost(Ljava/lang/String;)V

    .line 510
    return-object v0

    .line 506
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected getHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    return-object v0
.end method

.method protected getIPs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->ips:Ljava/util/List;

    return-object v0
.end method

.method protected getRandomIP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->ips:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->ips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectedHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->selectedHost:Ljava/lang/String;

    return-object v0
.end method

.method protected saveToLocal()V
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "avoscloud_server_host_zone"

    const-string v2, "avoscloud_server_host_list_key"

    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "avoscloud_server_host_zone"

    const-string v2, "avoscloud_selected_server_host"

    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method protected setHosts(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "h":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    .local v0, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->urlCleanLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    iget-object v3, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->random:Ljava/util/Random;

    iget-object v4, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->hosts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->selectedHost:Ljava/lang/String;

    .line 485
    return-void
.end method

.method protected setIPs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "ips":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->ips:Ljava/util/List;

    .line 469
    return-void
.end method

.method protected setSelectedHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedHost"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$ServerHostList;->selectedHost:Ljava/lang/String;

    .line 465
    return-void
.end method
