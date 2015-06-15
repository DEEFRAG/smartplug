.class Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;
.super Ljava/lang/Thread;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SceneThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private getTime(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 626
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

    .line 475
    const-string v10, "open"

    .line 476
    .local v10, "state":Ljava/lang/String;
    if-ne p2, v7, :cond_0

    .line 477
    const-string v10, "close"

    .line 479
    :cond_0
    const-string v9, "nopassowrd"

    .line 480
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

    .line 481
    const-string v5, "%request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 480
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
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

    .line 483
    const-string v5, "%confirm#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "confirmBeforeCmd":Ljava/lang/String;
    const-string v3, "%request"

    .line 485
    .local v3, "confirmAfterCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v4, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 487
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v6, 0x0

    .line 488
    .local v6, "b":Z
    if-eqz v8, :cond_1

    .line 489
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 490
    const/4 v6, 0x1

    .line 492
    :cond_1
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    .line 493
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 492
    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 494
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 495
    return-void
.end method

.method private send2K(Ljava/lang/String;I)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 500
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

    .line 501
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%open%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%close%relay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 509
    invoke-static {v0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 511
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 512
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v4

    .line 513
    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$9(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    .line 511
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 515
    return-void

    .line 504
    .end local v6    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%open%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%close%light"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private sendAirControl(ILjava/lang/String;)V
    .locals 11
    .param p1, "airId"    # I
    .param p2, "groupString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 519
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 518
    invoke-virtual {v0, v3, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 520
    .local v9, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v9, :cond_0

    .line 534
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 524
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 526
    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 528
    const-string v3, "%nopassword%operate#3031#emityun#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
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

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    .line 532
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    const-string v7, ""

    .line 533
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$9(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v5, v4

    move-object v6, v4

    .line 531
    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto :goto_0
.end method

.method private sendRemoteControl(ILjava/lang/String;)V
    .locals 26
    .param p1, "controlId"    # I
    .param p2, "recordIdx"    # Ljava/lang/String;

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 538
    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 537
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 539
    .local v12, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    if-nez v12, :cond_1

    .line 623
    :cond_0
    return-void

    .line 543
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 544
    .local v7, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "phoneMac":Ljava/lang/String;
    const-string v1, ":"

    const-string v4, "-"

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "address":Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 549
    .local v17, "idx":[Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    .line 550
    .local v22, "time":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_0

    .line 551
    aget-object v16, v17, v15

    .line 552
    .local v16, "id":Ljava/lang/String;
    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 555
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 556
    .local v13, "d":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 557
    const-class v5, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 556
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 558
    .local v21, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    if-nez v15, :cond_6

    .line 559
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v22

    .line 577
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "begin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 581
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_4

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4

    .line 582
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_9

    .line 583
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 584
    const-string v4, "%nopassword%operate#3031#emityun#xiaomi_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 585
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_8

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    const-string v4, "%nopassword%operate#3031#emityun#apple_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v5

    .line 597
    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$9(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 595
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1

    .line 561
    .end local v3    # "message":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v18

    .line 562
    .local v18, "nextTime":J
    sub-long v24, v18, v22

    .line 564
    .local v24, "timex":J
    :try_start_0
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_4
    const-wide/16 v4, 0x3e8

    cmp-long v1, v24, v4

    if-gez v1, :cond_7

    .line 570
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    :cond_7
    :goto_5
    move-wide/from16 v22, v18

    goto/16 :goto_2

    .line 565
    :catch_0
    move-exception v14

    .line 566
    .local v14, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 571
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v14

    .line 572
    .restart local v14    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 590
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "nextTime":J
    .end local v24    # "timex":J
    .restart local v3    # "message":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    const-string v4, "%nopassword%operate#3031#emityun#gehua_tv_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 593
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonEname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 600
    .end local v3    # "message":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 601
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 603
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 602
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 604
    .local v11, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 605
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 606
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and buttonName=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 610
    :cond_b
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 614
    .local v10, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v20

    .line 615
    .local v20, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string v4, "%nopassword%operate#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#emit#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 617
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    const-string v4, "%uart"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    .restart local v3    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v5

    .line 621
    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$9(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    .line 619
    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 428
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sceneId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->sceneId:Ljava/lang/String;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$8(Lcom/kankunit/smartplugcronus/service/WidgetService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 472
    return-void

    .line 429
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 431
    .local v3, "model":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    invoke-virtual {v3, v11}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 437
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 439
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v8

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v9

    .line 440
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v10

    .line 439
    invoke-direct {p0, v8, v9, v10}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->getTime(III)J

    move-result-wide v5

    .line 442
    .local v5, "time":J
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :goto_2
    invoke-virtual {v3, v12}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 447
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 432
    .end local v5    # "time":J
    :catch_0
    move-exception v2

    .line 433
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 443
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v5    # "time":J
    :catch_1
    move-exception v2

    .line 444
    .restart local v2    # "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 451
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v5    # "time":J
    :cond_2
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 452
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->send1K(Ljava/lang/String;I)V

    .line 455
    :cond_3
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 456
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->send2K(Ljava/lang/String;I)V

    .line 459
    :cond_4
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 460
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v8

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->sendAirControl(ILjava/lang/String;)V

    .line 462
    :cond_5
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v4

    .line 463
    .local v4, "modelType":I
    const/4 v8, 0x4

    if-eq v4, v8, :cond_6

    const/16 v8, 0xa

    if-eq v4, v8, :cond_6

    const/16 v8, 0xb

    if-eq v4, v8, :cond_6

    .line 464
    const/4 v8, 0x5

    if-eq v4, v8, :cond_6

    const/4 v8, 0x7

    if-eq v4, v8, :cond_6

    const/16 v8, 0x8

    if-eq v4, v8, :cond_6

    .line 465
    const/16 v8, 0x9

    if-eq v4, v8, :cond_6

    const/16 v8, 0xc

    if-eq v4, v8, :cond_6

    const/16 v8, 0xd

    if-ne v4, v8, :cond_0

    .line 466
    :cond_6
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$7(Lcom/kankunit/smartplugcronus/service/WidgetService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    .line 467
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 466
    invoke-virtual {v8, v9, v10}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 468
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v8

    .line 469
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v9

    .line 468
    invoke-direct {p0, v8, v9}, Lcom/kankunit/smartplugcronus/service/WidgetService$SceneThread;->sendRemoteControl(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
