.class Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;
.super Ljava/util/TimerTask;
.source "LoremActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/provider/LoremActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    .line 99
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    # getter for: Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->access$0(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$1;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    # getter for: Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->access$0(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method
