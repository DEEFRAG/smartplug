.class Lcom/kankunit/smartplugcronus/service/WidgetService$3;
.super Ljava/util/TimerTask;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/WidgetService;->onCreate()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 194
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->notDoTime:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$10(Lcom/kankunit/smartplugcronus/service/WidgetService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$11(Lcom/kankunit/smartplugcronus/service/WidgetService;I)V

    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    # getter for: Lcom/kankunit/smartplugcronus/service/WidgetService;->notDoTime:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->access$10(Lcom/kankunit/smartplugcronus/service/WidgetService;)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    .line 200
    const-class v3, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/WidgetService;->stopService(Landroid/content/Intent;)Z

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/WidgetService$3;->this$0:Lcom/kankunit/smartplugcronus/service/WidgetService;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/WidgetService;->stopSelf()V

    .line 203
    :cond_0
    return-void
.end method
