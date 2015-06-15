.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->dismiss()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    .line 551
    .local v4, "db":Lnet/tsz/afinal/FinalDb;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    .line 553
    .local v15, "shortCutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const-class v16, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v13

    .line 554
    .local v13, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 585
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_6

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const-string v17, "Equipment without the appropriate plug-in or do not have the corresponding functions"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 614
    :goto_1
    return-void

    .line 554
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    .line 555
    .local v12, "pluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    const/4 v2, 0x0

    .line 556
    .local v2, "b":Z
    if-eqz v15, :cond_3

    .line 557
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_4

    .line 564
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, "mac":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getPluginName()Ljava/lang/String;

    move-result-object v14

    .line 569
    .local v14, "pluginName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    .line 570
    .local v5, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v5, :cond_0

    const-string v17, "rt_module"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "tp_module"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 573
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "text"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v17, "mac"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v17, "pluginName"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v17, "ir_module"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 578
    const-string v17, "image"

    const v18, 0x7f0201ca

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :goto_3
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 557
    .end local v5    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "mac":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "pluginName":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 558
    .local v3, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->getMac()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 559
    const/4 v2, 0x1

    .line 560
    goto/16 :goto_2

    .line 580
    .end local v3    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v5    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v9    # "mac":Ljava/lang/String;
    .restart local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "pluginName":Ljava/lang/String;
    :cond_5
    const-string v17, "image"

    const v18, 0x7f0201cb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 588
    .end local v2    # "b":Z
    .end local v5    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "mac":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "pluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    .end local v14    # "pluginName":Ljava/lang/String;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 589
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 590
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "mac"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 591
    .restart local v9    # "mac":Ljava/lang/String;
    const-string v16, "pluginName"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 592
    .restart local v14    # "pluginName":Ljava/lang/String;
    const-string v16, "ir_module"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 596
    :cond_7
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const-class v17, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .local v7, "intent":Landroid/content/Intent;
    const-string v16, "mac"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 600
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 603
    :cond_9
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const-class v17, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v16, "mac"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 609
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "mac":Ljava/lang/String;
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "pluginName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 612
    :cond_b
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const-class v17, Lcom/kankunit/smartplugcronus/view/SelectPlugActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v6, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
