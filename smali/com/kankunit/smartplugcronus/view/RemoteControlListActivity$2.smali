.class Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;
.super Ljava/lang/Object;
.source "RemoteControlListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$1(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ir_module"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mac"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "mac"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
