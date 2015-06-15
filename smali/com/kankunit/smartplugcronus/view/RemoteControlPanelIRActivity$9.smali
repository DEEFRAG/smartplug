.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 380
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V

    .line 381
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->quit()V

    .line 382
    return-void
.end method
