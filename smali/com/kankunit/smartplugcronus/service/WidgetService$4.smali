.class Lcom/kankunit/smartplugcronus/service/WidgetService$4;
.super Ljava/util/TimerTask;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/WidgetService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$4;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 241
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$4;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$4;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    return-void
.end method
