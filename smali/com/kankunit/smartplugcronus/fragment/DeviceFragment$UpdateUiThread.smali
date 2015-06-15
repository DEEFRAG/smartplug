.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;
.super Ljava/lang/Thread;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateUiThread"
.end annotation


# instance fields
.field private stop:Z

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 1

    .prologue
    .line 621
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->stop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 632
    :goto_0
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->stop:Z

    if-eqz v4, :cond_0

    .line 665
    return-void

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 636
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4, v5}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 658
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 660
    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 637
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 638
    .local v3, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "new"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    const-string v5, "isNew"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :goto_2
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v5

    if-nez v5, :cond_3

    .line 646
    const-string v5, "status"

    const-string v6, "offline"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :goto_3
    const-string v5, "pwd"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v5, "port"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v5, "mac"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v5, "title"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v5, "versionK"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 643
    :cond_2
    const-string v5, "isNew"

    const-string v6, "false"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 648
    :cond_3
    const-string v5, "status"

    const-string v6, "online"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;->stop:Z

    .line 627
    return-void
.end method
