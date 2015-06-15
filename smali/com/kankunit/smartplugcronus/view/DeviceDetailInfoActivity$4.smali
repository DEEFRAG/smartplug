.class Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;
.super Ljava/util/TimerTask;
.source "DeviceDetailInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->doBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    .line 331
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->isOpen:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 336
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x14d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$7(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
