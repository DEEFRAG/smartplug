.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;
.super Ljava/lang/Thread;
.source "DeviceFragment_bak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateUiThread"
.end annotation


# instance fields
.field private stop:Z

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V
    .locals 1

    .prologue
    .line 513
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->stop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 524
    :goto_0
    iget-boolean v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->stop:Z

    if-eqz v8, :cond_0

    .line 568
    return-void

    .line 527
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v6, "templist1":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v7, "templist2":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 530
    .local v3, "index":I
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    const-class v9, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v10, "version=1"

    invoke-virtual {v8, v9, v10}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 531
    .local v0, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    const-class v9, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v10, "version=2"

    invoke-virtual {v8, v9, v10}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 532
    .local v1, "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 558
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 559
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 534
    .local v5, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 536
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "new"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 537
    const-string v9, "isNew"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_2
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v9

    if-nez v9, :cond_3

    .line 542
    const-string v9, "status"

    const-string v10, "offline"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :goto_3
    const-string v9, "pwd"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v9, "port"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v9, "mac"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v9, "title"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v9, "versionK"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v9

    if-ne v9, v11, :cond_4

    .line 552
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 539
    :cond_2
    const-string v9, "isNew"

    const-string v10, "false"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 544
    :cond_3
    const-string v9, "status"

    const-string v10, "online"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 554
    :cond_4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;->stop:Z

    .line 519
    return-void
.end method
