.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 12
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 627
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sceneId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v11

    .line 628
    .local v11, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 629
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 630
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 631
    const-string v6, "loading"

    const/16 v7, 0x2ee0

    new-instance v8, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10$1;

    invoke-direct {v8, p0, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 628
    invoke-static {v4, v5, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$52(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 646
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNullLinkageInfo(Lcom/kankunit/smartplugcronus/model/LinkageModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v4, "You need to set the linkage conditions in order to perform this operation"

    .line 648
    const/4 v5, 0x1

    .line 647
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 648
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 649
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_user:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$28(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 650
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, "linkageNum":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getIsDo()Ljava/lang/String;

    move-result-object v9

    .line 657
    .local v9, "isDo":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v3, "notDo"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    const-string v9, "isDo"

    .line 662
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%linkage_isdo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "cmd":Ljava/lang/String;
    const-string v2, "sjhfj@saveIsLinkageDo.kankun-smartplug.com"

    .line 665
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 666
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    .line 667
    const-string v7, "saveIsLinkageDo"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    .line 665
    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 668
    .local v0, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto :goto_0

    .line 660
    .end local v0    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    :cond_2
    const-string v9, "notDo"

    goto :goto_1
.end method
