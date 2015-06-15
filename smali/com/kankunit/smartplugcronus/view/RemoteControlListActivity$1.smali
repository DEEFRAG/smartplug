.class Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 110
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "type"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->flag:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$1(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "name"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
