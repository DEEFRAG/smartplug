.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
.super Ljava/lang/Thread;
.source "SceneControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SceneThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 2352
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private getTime(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 2699
    mul-int/lit8 v0, p2, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    mul-int/lit16 v1, p3, 0x3e8

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private send1K(Ljava/lang/String;I)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/4 v7, 0x1

    .line 2502
    const-string v10, "open"

    .line 2503
    .local v10, "state":Ljava/lang/String;
    if-ne p2, v7, :cond_0

    .line 2504
    const-string v10, "close"

    .line 2506
    :cond_0
    const-string v9, "nopassowrd"

    .line 2507
    .local v9, "pwd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2508
    const-string v5, "%request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2510
    const-string v5, "%confirm#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2509
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2511
    .local v2, "confirmBeforeCmd":Ljava/lang/String;
    const-string v3, "%request"

    .line 2513
    .local v3, "confirmAfterCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2512
    invoke-static {v4, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 2514
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v6, 0x0

    .line 2515
    .local v6, "b":Z
    if-eqz v8, :cond_1

    .line 2516
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2517
    const/4 v6, 0x1

    .line 2519
    :cond_1
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 2520
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    .line 2521
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2519
    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 2522
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 2523
    return-void
.end method

.method private send2K(Ljava/lang/String;I)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2526
    invoke-static {v0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 2528
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2529
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2531
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%open%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2532
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%close%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2540
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 2541
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v4

    .line 2542
    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    .line 2540
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 2544
    return-void

    .line 2534
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%open%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2536
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%close%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private sendAirControl(ILjava/lang/String;)V
    .locals 12
    .param p1, "airId"    # I
    .param p2, "groupString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2547
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2548
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2547
    invoke-virtual {v0, v3, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2549
    .local v9, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v9, :cond_0

    .line 2564
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 2553
    .local v11, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 2554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2555
    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2556
    .local v1, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    .line 2557
    .local v10, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2558
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2559
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2560
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2561
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 2562
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2563
    const-string v7, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v5, v4

    move-object v6, v4

    .line 2561
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_0
.end method

.method private sendRemoteControl(ILjava/lang/String;)V
    .locals 29
    .param p1, "controlId"    # I
    .param p2, "recordIdx"    # Ljava/lang/String;

    .prologue
    .line 2567
    const/16 v19, 0x1

    .line 2568
    .local v19, "isSuccess":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2569
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2568
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2570
    .local v13, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v13, :cond_1

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 2573
    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 2575
    .local v7, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v13, :cond_0

    .line 2578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2579
    .local v6, "phoneMac":Ljava/lang/String;
    const-string v1, ":"

    const-string v4, "-"

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2581
    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2580
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2582
    .local v2, "address":Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2583
    .local v18, "idx":[Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    .line 2584
    .local v25, "time":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 2690
    if-eqz v19, :cond_10

    .line 2691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2695
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 2585
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->iscancel:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$22(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2590
    :cond_3
    aget-object v17, v18, v16

    .line 2591
    .local v17, "id":Ljava/lang/String;
    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2584
    :cond_4
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2594
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2595
    .local v14, "d":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2596
    const-class v5, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 2595
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 2597
    .local v24, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    if-nez v16, :cond_9

    .line 2598
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v25

    .line 2616
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "begin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2617
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2620
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_6

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_6

    .line 2621
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_c

    .line 2622
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2623
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#xiaomi_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2624
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2625
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_b

    .line 2626
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2627
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#apple_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2628
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2634
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 2636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v5

    .line 2637
    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 2635
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 2638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    const-wide/16 v4, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 2641
    .local v10, "b":Z
    if-nez v10, :cond_8

    .line 2642
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 2643
    .local v20, "m":Landroid/os/Message;
    const/16 v19, 0x0

    .line 2644
    const/16 v1, 0x70

    move-object/from16 v0, v20

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2650
    .end local v10    # "b":Z
    .end local v20    # "m":Landroid/os/Message;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .line 2600
    .end local v3    # "message":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v21

    .line 2601
    .local v21, "nextTime":J
    sub-long v27, v21, v25

    .line 2603
    .local v27, "timex":J
    :try_start_1
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2607
    :goto_7
    const-wide/16 v4, 0x3e8

    cmp-long v1, v27, v4

    if-gez v1, :cond_a

    .line 2609
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2614
    :cond_a
    :goto_8
    move-wide/from16 v25, v21

    goto/16 :goto_4

    .line 2604
    :catch_0
    move-exception v15

    .line 2605
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 2610
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v15

    .line 2611
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 2629
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "nextTime":J
    .end local v27    # "timex":J
    .restart local v3    # "message":Ljava/lang/String;
    :cond_b
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_7

    .line 2630
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2631
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#3031#emityun#gehua_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2632
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 2647
    :catch_2
    move-exception v15

    .line 2648
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 2653
    .end local v3    # "message":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 2654
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 2655
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2656
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2655
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2653
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 2657
    .local v12, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v1

    if-nez v1, :cond_e

    .line 2658
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 2659
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2660
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonName=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2661
    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2658
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 2663
    :cond_e
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2666
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 2667
    .local v11, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v23

    .line 2668
    .local v23, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2669
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%operate#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#emit#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2670
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2671
    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2672
    .restart local v3    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 2674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v5

    .line 2675
    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 2673
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 2676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2678
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    const-wide/16 v4, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 2679
    .restart local v10    # "b":Z
    if-nez v10, :cond_f

    .line 2680
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 2681
    .restart local v20    # "m":Landroid/os/Message;
    const/16 v1, 0x70

    move-object/from16 v0, v20

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2682
    const/16 v19, 0x0

    .line 2683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2688
    .end local v10    # "b":Z
    .end local v20    # "m":Landroid/os/Message;
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .line 2685
    :catch_3
    move-exception v15

    .line 2686
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 2693
    .end local v3    # "message":Ljava/lang/String;
    .end local v11    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    .end local v12    # "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    .end local v14    # "d":I
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "id":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-class v18, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual/range {v16 .. v18}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 2495
    .local v13, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2499
    :goto_1
    return-void

    .line 2356
    .end local v13    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 2357
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->iscancel:Z
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$22(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 2359
    const-class v18, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 2358
    invoke-virtual/range {v16 .. v18}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 2360
    .restart local v13    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v16

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    goto/16 :goto_1

    .line 2369
    .end local v13    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_2
    const-wide/16 v17, 0x64

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2374
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$24(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/SceneDetailModel;)V

    .line 2378
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2379
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v18

    .line 2380
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v19

    .line 2379
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->getTime(III)J

    move-result-wide v14

    .line 2382
    .local v14, "time":J
    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2386
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2370
    .end local v14    # "time":J
    :catch_0
    move-exception v8

    .line 2371
    .local v8, "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2383
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v14    # "time":J
    :catch_1
    move-exception v8

    .line 2384
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2392
    .end local v8    # "exception":Ljava/lang/Exception;
    .end local v14    # "time":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2393
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2394
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->send1K(Ljava/lang/String;I)V

    .line 2396
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2401
    :cond_4
    :goto_4
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2402
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 2403
    .local v6, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v6, :cond_7

    .line 2404
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2405
    .local v9, "message":Landroid/os/Message;
    const/16 v17, 0x70

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2428
    .end local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "message":Landroid/os/Message;
    :cond_6
    :goto_5
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    .line 2430
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-class v19, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2429
    invoke-virtual/range {v17 .. v19}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2431
    .local v5, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v5, :cond_9

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v17

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 2397
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :catch_2
    move-exception v7

    .line 2398
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 2408
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_7
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v17

    const-string v18, "n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2409
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2410
    .restart local v9    # "message":Landroid/os/Message;
    const/16 v17, 0x1ff

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 2413
    .end local v9    # "message":Landroid/os/Message;
    :cond_8
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->send2K(Ljava/lang/String;I)V

    .line 2415
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v17

    const-wide/16 v18, 0x5

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v17 .. v20}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 2416
    .local v4, "b":Z
    if-nez v4, :cond_6

    .line 2417
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2418
    .restart local v9    # "message":Landroid/os/Message;
    const/16 v17, 0x70

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 2421
    .end local v4    # "b":Z
    .end local v9    # "message":Landroid/os/Message;
    :catch_3
    move-exception v8

    .line 2422
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 2449
    .end local v6    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    :cond_9
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v17

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->sendAirControl(ILjava/lang/String;)V

    .line 2451
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$26(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Condition;

    move-result-object v17

    const-wide/16 v18, 0x5

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v17 .. v20}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 2452
    .restart local v4    # "b":Z
    if-nez v4, :cond_a

    .line 2453
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2454
    .restart local v9    # "message":Landroid/os/Message;
    const/16 v17, 0x70

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2461
    .end local v4    # "b":Z
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v9    # "message":Landroid/os/Message;
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$25(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2462
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v11

    .line 2463
    .local v11, "modelType":I
    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0xa

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0xb

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    .line 2464
    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0x7

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    .line 2465
    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0xc

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    .line 2467
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    .line 2468
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-class v19, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2467
    invoke-virtual/range {v17 .. v19}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 2469
    .restart local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    const-string v12, "ir_module"

    .line 2470
    .local v12, "plugName":Ljava/lang/String;
    if-nez v5, :cond_c

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v17

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentDetailModel:Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-static/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$23(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2457
    .end local v11    # "modelType":I
    .end local v12    # "plugName":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 2458
    .restart local v8    # "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 2476
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v11    # "modelType":I
    .restart local v12    # "plugName":Ljava/lang/String;
    :cond_c
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v17

    const/16 v18, 0xbdb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 2477
    const-string v12, "rf_module"

    .line 2489
    :cond_d
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v17

    .line 2490
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v18

    .line 2489
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->sendRemoteControl(ILjava/lang/String;)V

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
