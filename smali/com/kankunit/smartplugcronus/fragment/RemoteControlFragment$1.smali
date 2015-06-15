.class Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;
.super Ljava/lang/Object;
.source "RemoteControlFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 88
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 89
    .local v3, "type":I
    const/4 v1, 0x0

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    if-ne v3, v7, :cond_3

    .line 91
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 112
    const-string v5, "controlId"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-virtual {v4, v1}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "id":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->isExistShortcut(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    new-instance v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 118
    .local v2, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getIcon(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 119
    const-string v4, "on"

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v7}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 122
    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 123
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getRemoteType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->getTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "deviceName"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 126
    const-string v4, "other"

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 130
    .end local v2    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_2
    return-void

    .line 92
    .end local v0    # "id":I
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 93
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 95
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 97
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 99
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 101
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x7

    if-ne v3, v4, :cond_9

    .line 103
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    .line 105
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x9

    if-ne v3, v4, :cond_b

    .line 107
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 109
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0
.end method
