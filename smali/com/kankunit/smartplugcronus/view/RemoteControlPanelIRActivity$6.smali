.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;
.super Ljava/lang/Object;
.source "RemoteControlPanelIRActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mac"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method
