.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;
.super Ljava/lang/Thread;
.source "WirelessConfigureNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->startProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 303
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 306
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isTimerStart:Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$38(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 325
    return-void

    .line 308
    :cond_0
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 310
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 311
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 312
    const-string v2, "updateProgress"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 314
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 317
    const-string v2, "error"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
