.class Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;
.super Ljava/lang/Thread;
.source "ElectricityChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "drawLinThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "count":I
    :goto_0
    const/4 v4, 0x5

    if-lt v1, v4, :cond_1

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 388
    .local v3, "msg":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 389
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$3(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    return-void

    .line 375
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 376
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$0(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->power_msg:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$1(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "power"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity$drawLinThread;->this$0:Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->nowPower:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    invoke-static {v7, v9, v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mDraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 377
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 381
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
