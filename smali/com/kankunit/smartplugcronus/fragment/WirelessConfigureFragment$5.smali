.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;
.super Ljava/lang/Thread;
.source "WirelessConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->startProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 301
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 304
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isTimerStart:Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$38(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 323
    return-void

    .line 306
    :cond_0
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 308
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 309
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 310
    const-string v2, "updateProgress"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 312
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 315
    const-string v2, "error"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
