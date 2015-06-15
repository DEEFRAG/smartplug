.class Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BroadDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BroadDeviceService;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/BroadDeviceService$DeviceReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/BroadDeviceService;

    invoke-virtual {v0, p2}, Lcom/kankunit/smartplugcronus/service/BroadDeviceService;->doReceive(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
