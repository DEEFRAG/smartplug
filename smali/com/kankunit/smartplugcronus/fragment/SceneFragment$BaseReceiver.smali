.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SceneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 638
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->isFragmengOpen:Z
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "rack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "uack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x6f

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 648
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
