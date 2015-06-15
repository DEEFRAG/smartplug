.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mainLayout:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$5(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V

    .line 207
    new-instance v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;->start()V

    .line 208
    new-instance v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$waitTextThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$waitTextThread;->start()V

    .line 209
    return-void
.end method
