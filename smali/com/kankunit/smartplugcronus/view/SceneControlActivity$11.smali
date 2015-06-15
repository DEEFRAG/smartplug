.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 13
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    const/4 v12, 0x0

    .line 678
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sceneId=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 677
    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    .line 679
    .local v3, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 680
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 681
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0249

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 682
    const-string v9, "loading"

    const/16 v10, 0x2ee0

    new-instance v11, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;

    invoke-direct {v11, p0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 679
    invoke-static {v7, v8, v9, v10, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$52(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 698
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isNullLinkageInfo(Lcom/kankunit/smartplugcronus/model/LinkageModel;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 699
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v7, "You need to set the linkage conditions in order to perform this operation"

    .line 700
    const/4 v8, 0x1

    .line 699
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 700
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 701
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->scene_linkage_push_msg:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$37(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 702
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 703
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "linkageNum":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getNeedPush()Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "needPush":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v6, "y"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
    const-string v4, "n"

    .line 714
    :goto_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$53(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 718
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 721
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneModel:Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$53(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 722
    const-string v7, "%linkage_needPush"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 720
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveIsLinkageNeedPush:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    new-instance v6, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)V

    .line 763
    new-instance v8, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$3;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)V

    .line 773
    const/4 v9, 0x0

    .line 732
    invoke-direct {v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    invoke-static {v6, v0}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 712
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneMac":Ljava/lang/String;
    :cond_2
    const-string v4, "y"

    goto/16 :goto_1
.end method
