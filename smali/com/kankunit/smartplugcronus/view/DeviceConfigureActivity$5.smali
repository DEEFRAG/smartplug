.class Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;
.super Ljava/lang/Object;
.source "DeviceConfigureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->currentConfig:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$9(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->wirelessConfigureFragment:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->access$8(Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;)Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    if-nez v1, :cond_0

    .line 330
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
