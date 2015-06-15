.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;
.super Ljava/lang/Thread;
.source "AirControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 554
    const-wide/16 v7, 0x0

    .line 555
    .local v7, "time":J
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 576
    :goto_1
    return-void

    .line 555
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 556
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "buttonName"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "buttonName":Ljava/lang/String;
    const-string v9, "time"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 558
    .local v5, "t":J
    const-string v9, "begin"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 559
    move-wide v7, v5

    .line 562
    :cond_1
    sub-long v11, v5, v7

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 569
    .local v4, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "buttonName"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    move-wide v7, v5

    goto :goto_0

    .line 563
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "message":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
