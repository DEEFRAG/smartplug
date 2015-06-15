.class Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;
.super Ljava/lang/Object;
.source "DeviceConfigureNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    const-string v1, "devicetype"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void
.end method
