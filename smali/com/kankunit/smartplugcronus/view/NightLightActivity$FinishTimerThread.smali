.class Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;
.super Ljava/lang/Thread;
.source "NightLightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/NightLightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishTimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 416
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 418
    .local v3, "nowTime":Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "nowData":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isActivityOpen:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$0(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$1(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$1(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_2

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    new-instance v3, Ljava/util/Date;

    .end local v3    # "nowTime":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 421
    .restart local v3    # "nowTime":Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 422
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$1(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->timerData:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$1(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 424
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x19b

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 425
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$FinishTimerThread;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
