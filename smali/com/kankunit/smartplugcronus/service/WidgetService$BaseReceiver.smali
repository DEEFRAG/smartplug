.class Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/service/WidgetService;Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/WidgetService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 318
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "rack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$6(Lcom/kankunit/smartplugcronus/service/WidgetService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method
