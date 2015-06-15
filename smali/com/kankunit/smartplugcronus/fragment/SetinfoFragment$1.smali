.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;
.super Landroid/os/Handler;
.source "SetinfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 105
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x2b67

    if-ne v13, v14, :cond_1

    .line 107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 108
    .local v2, "db":Lnet/tsz/afinal/FinalDb;
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    .line 109
    .local v7, "nObject":Lorg/json/JSONObject;
    const-string v13, "sceneId"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "sceneId":Ljava/lang/String;
    const-class v13, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2, v10, v13}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 111
    .local v11, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    if-eqz v11, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "phoneMac":Ljava/lang/String;
    const-string v13, "needPush"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "pushState":Ljava/lang/String;
    const-string v13, ":"

    const-string v14, "-"

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 116
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "wan%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "linkageNum"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 117
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 118
    const-string v14, "%linkage_needPush"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 116
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "cmd":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "saveIsLinkageNeedPush:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "uuuuuuuuuuu====cmd"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    new-instance v13, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    new-instance v14, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)V

    .line 126
    new-instance v15, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;)V

    .line 131
    const/16 v16, 0x0

    .line 121
    invoke-direct/range {v13 .. v16}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;Z)V

    invoke-static {v13, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "db":Lnet/tsz/afinal/FinalDb;
    .end local v7    # "nObject":Lorg/json/JSONObject;
    .end local v8    # "phoneMac":Ljava/lang/String;
    .end local v9    # "pushState":Ljava/lang/String;
    .end local v10    # "sceneId":Ljava/lang/String;
    .end local v11    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .local v12, "string":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 144
    :cond_2
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_3
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x37

    if-ne v13, v14, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .restart local v8    # "phoneMac":Ljava/lang/String;
    const-string v13, ":"

    const-string v14, "-"

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    const-string v6, ""

    .line 152
    .local v6, "msg":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 158
    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 159
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "synchroFriends:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 153
    .local v3, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    .line 156
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
