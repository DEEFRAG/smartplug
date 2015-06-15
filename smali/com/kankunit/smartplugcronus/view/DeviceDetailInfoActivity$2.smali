.class Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;
.super Ljava/util/TimerTask;
.source "DeviceDetailInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handleMessage(Landroid/os/Message;)Z
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    .line 224
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->isOpen:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 229
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x22b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$7(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
