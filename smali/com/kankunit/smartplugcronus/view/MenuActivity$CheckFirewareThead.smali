.class Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;
.super Ljava/lang/Thread;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFirewareThead"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;)V
    .locals 0

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;-><init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1476
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1477
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1478
    .local v4, "length":I
    const-string v6, ""

    .line 1479
    .local v6, "macs":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 1486
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1487
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1490
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "wan_phone%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%get_power%power"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getDevicesVersion:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$CheckFirewareThead;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->checkFirewareMinaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_1
    return-void

    .line 1480
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 1481
    .local v5, "mac":Ljava/lang/String;
    const-string v7, "00:15"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1479
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1484
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1494
    .end local v5    # "mac":Ljava/lang/String;
    .restart local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1495
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
