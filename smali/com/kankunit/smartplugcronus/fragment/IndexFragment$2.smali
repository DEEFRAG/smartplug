.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 33
    .param p2, "v"    # Landroid/view/View;
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
    .line 793
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f070253

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 795
    .local v29, "pluginMacTv":Landroid/widget/TextView;
    if-nez p3, :cond_1

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p2

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadePopWindow(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p2

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const/16 v22, 0x0

    .line 802
    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    .line 803
    .local v25, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "shortcutType"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 804
    .local v31, "shortType":Ljava/lang/String;
    const-string v2, "device"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Z)V

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "relatedid"

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 807
    .local v18, "deviceid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    const-string v5, "old"

    move/from16 v0, v18

    invoke-static {v2, v0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDeviceFlagByDeviceId(Landroid/content/Context;ILjava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v30

    .line 811
    .local v30, "pwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v17

    .line 812
    .local v17, "deviceMac":Ljava/lang/String;
    const v2, 0x7f07024e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 814
    .local v28, "offlineoverlay":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_d

    .line 816
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 820
    :cond_3
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    .local v23, "it":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    const-string v2, "mac"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v2, "isOpen"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v5, "isDirect"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    const-string v2, "pwd"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 1150
    .end local v17    # "deviceMac":Ljava/lang/String;
    .end local v18    # "deviceid":I
    .end local v23    # "it":Landroid/content/Intent;
    .end local v28    # "offlineoverlay":Landroid/widget/ImageView;
    .end local v30    # "pwd":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v22, :cond_0

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1154
    :cond_5
    const-string v2, "controlId"

    const-string v5, "relatedid"

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 824
    .restart local v17    # "deviceMac":Ljava/lang/String;
    .restart local v18    # "deviceid":I
    .restart local v23    # "it":Landroid/content/Intent;
    .restart local v28    # "offlineoverlay":Landroid/widget/ImageView;
    .restart local v30    # "pwd":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 828
    .end local v23    # "it":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v5, "userinfo"

    const-string v6, "userid"

    invoke-static {v2, v5, v6}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 832
    .local v32, "userid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 837
    :cond_8
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    .restart local v23    # "it":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    const-string v2, "mac"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v2, "isOpen"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v2, "isDirect"

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v2, "pwd"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 845
    .end local v23    # "it":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c024a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0039

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x2cec

    new-instance v12, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)V

    invoke-static {v5, v6, v7, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/app/ProgressDialog;)V

    .line 865
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%relay_auth_req"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 868
    .local v10, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v10, v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sendMsg(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setCurrentMenuNo(I)V

    goto/16 :goto_2

    .line 873
    .end local v10    # "cmd":Ljava/lang/String;
    :cond_a
    const-string v3, "xx@getDeviceStatus.kankun-smartplug.com"

    .line 874
    .local v3, "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%check%relay"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 875
    .local v4, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "======722"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 877
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v6

    const-string v7, ""

    const-string v9, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_2

    .line 888
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v8    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c024a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0039

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x2cec

    new-instance v12, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)V

    invoke-static {v5, v6, v7, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/app/ProgressDialog;)V

    .line 904
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%relay_auth_req"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 907
    .restart local v10    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v10, v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sendMsg(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setCurrentMenuNo(I)V

    goto/16 :goto_2

    .line 912
    .end local v10    # "cmd":Ljava/lang/String;
    :cond_c
    const-string v3, "xx@getDeviceStatus.kankun-smartplug.com"

    .line 913
    .restart local v3    # "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%check%relay"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    .restart local v4    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "======722"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 916
    .restart local v8    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v6

    const-string v7, ""

    const-string v9, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_2

    .line 942
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v8    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v32    # "userid":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c024a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0039

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x2cec

    new-instance v12, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)V

    invoke-static {v5, v6, v7, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/app/ProgressDialog;)V

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%check%request"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 956
    .restart local v10    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 958
    .restart local v8    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v21, v8

    .line 959
    .local v21, "fModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$20(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/os/Handler;)V

    .line 1034
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v30

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%check%request"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1036
    const/4 v15, 0x0

    .line 1037
    .local v15, "b":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1038
    const/4 v15, 0x1

    .line 1040
    :cond_e
    new-instance v9, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v11, ""

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v13

    const v14, 0xb156

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v16

    invoke-direct/range {v9 .. v16}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 1041
    .local v9, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_2

    .line 1073
    .end local v8    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v10    # "cmd":Ljava/lang/String;
    .end local v15    # "b":Z
    .end local v17    # "deviceMac":Ljava/lang/String;
    .end local v18    # "deviceid":I
    .end local v21    # "fModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v28    # "offlineoverlay":Landroid/widget/ImageView;
    .end local v30    # "pwd":Ljava/lang/String;
    :cond_f
    const-string v2, "airRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1074
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1075
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_10
    const-string v2, "tvRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1076
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1077
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_11
    const-string v2, "curtainRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1078
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1079
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_12
    const-string v2, "universalRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1080
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_13
    const-string v2, "appleRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1082
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1083
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_14
    const-string v2, "miRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1084
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_15
    const-string v2, "radioRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1086
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1087
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_16
    const-string v2, "garageRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1088
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1089
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_17
    const-string v2, "ghRemoteControl"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1090
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    .restart local v22    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_18
    const-string v2, "tp_module"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1092
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1095
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "deviceMac"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1096
    .local v19, "devicemac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v20

    .line 1097
    .local v20, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v2, "pwd"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v2, "isDirect"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1100
    .end local v19    # "devicemac":Ljava/lang/String;
    .end local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_19
    const-string v2, "rt_module"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1101
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1102
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "deviceMac"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1103
    .restart local v19    # "devicemac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v20

    .line 1104
    .restart local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v2, "pwd"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    const-string v2, "isDirect"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1107
    .end local v19    # "devicemac":Ljava/lang/String;
    .end local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_1a
    const-string v2, "rf_module"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1108
    const-string v2, "deviceMac"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1109
    .restart local v19    # "devicemac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v20

    .line 1110
    .restart local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rf_module"

    invoke-static {v2, v5, v6}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 1111
    .local v24, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v24, :cond_1b

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1d

    .line 1112
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1115
    :cond_1c
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1120
    :cond_1d
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1121
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "pwd"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v2, "isDirect"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const-string v2, "flag"

    const-string v5, "rf_module"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1125
    .end local v19    # "devicemac":Ljava/lang/String;
    .end local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v24    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_1e
    const-string v2, "ir_module"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1126
    const-string v2, "deviceMac"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1127
    .restart local v19    # "devicemac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v20

    .line 1128
    .restart local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ir_module"

    invoke-static {v2, v5, v6}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 1129
    .restart local v24    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v24, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_21

    .line 1130
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1133
    :cond_20
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1134
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1138
    :cond_21
    new-instance v22, Landroid/content/Intent;

    .end local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1139
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "pwd"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const-string v2, "isDirect"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1141
    const-string v2, "mac"

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string v2, "flag"

    const-string v5, "ir_module"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1143
    .end local v19    # "devicemac":Ljava/lang/String;
    .end local v20    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v24    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_22
    const-string v2, "vd_module"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    check-cast v26, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 1145
    .local v26, "menuActivity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual/range {v26 .. v26}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->ShowDialog()V

    .line 1146
    const-string v2, "deviceMac"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1147
    .restart local v19    # "devicemac":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%mac%nopassword%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%getUserIp"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1148
    .local v27, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v2

    const-string v5, "xx@getUserIp.kankun-smartplug.com"

    invoke-static/range {v27 .. v27}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2
.end method
