.class Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;
.super Ljava/lang/Object;
.source "SelectPlugActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 114
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "mac"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "mac":Ljava/lang/String;
    const-string v4, "pluginName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "pluginName":Ljava/lang/String;
    const-string v4, "ir_module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "mac"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :goto_0
    return-void

    .line 121
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "mac"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
