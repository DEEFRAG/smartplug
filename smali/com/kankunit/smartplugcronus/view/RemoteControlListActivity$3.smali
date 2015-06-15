.class Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;
.super Ljava/lang/Object;
.source "RemoteControlListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 166
    .local v1, "type":I
    const/4 v0, 0x0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 168
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    const-string v3, "controlId"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapterList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    :cond_1
    return-void

    .line 169
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 170
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 172
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 174
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 176
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 178
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 180
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_8
    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 182
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 184
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .restart local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0
.end method
