.class Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;
.super Ljava/util/TimerTask;
.source "DeviceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    .line 416
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$8(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 422
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$8(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    return-void
.end method
