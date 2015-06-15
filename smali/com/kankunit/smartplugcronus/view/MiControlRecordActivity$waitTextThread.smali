.class Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;
.super Ljava/lang/Thread;
.source "MiControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "waitTextThread"
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V
    .locals 1

    .prologue
    .line 521
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 523
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 527
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-boolean v6, v6, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->isWait:Z

    if-nez v6, :cond_1

    .line 552
    return-void

    .line 528
    :cond_1
    const-string v5, "Waiting"

    .line 529
    .local v5, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    if-lt v2, v6, :cond_2

    .line 532
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    rsub-int/lit8 v6, v6, 0x6

    if-lt v3, v6, :cond_3

    .line 535
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 536
    .local v4, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "text"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 539
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 540
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_3
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    .line 548
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 549
    iput v8, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$waitTextThread;->i:I

    goto :goto_0

    .line 530
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "k":I
    .end local v4    # "message":Landroid/os/Message;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 533
    .restart local v3    # "k":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 543
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
