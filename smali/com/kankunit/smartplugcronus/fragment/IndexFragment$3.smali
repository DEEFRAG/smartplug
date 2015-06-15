.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 15
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1172
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$21(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    const/4 v1, 0x1

    .line 1208
    :goto_0
    return v1

    .line 1176
    :cond_0
    if-nez p3, :cond_2

    .line 1177
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p2

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadePopWindow(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V

    .line 1178
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-object/from16 v0, p2

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V

    .line 1208
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move/from16 v0, p3

    invoke-static {v1, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$22(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;I)V

    .line 1181
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/util/List;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 1182
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "shortcutType"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1183
    .local v13, "shortType":Ljava/lang/String;
    const-string v1, "device"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Z)V

    .line 1185
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loading"

    const/16 v8, 0x2ee0

    new-instance v9, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;)V

    invoke-static {v4, v5, v6, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$23(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 1192
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {v1, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1193
    .local v14, "userid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relatedid"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1194
    .local v10, "deviceid":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v1

    const-string v4, "old"

    invoke-static {v1, v10, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDeviceFlagByDeviceId(Landroid/content/Context;ILjava/lang/String;)V

    .line 1195
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1196
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v11

    .line 1197
    .local v11, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-static {v1, v11}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$24(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;)V

    .line 1198
    const-string v2, "xx@getAuthState.kankun-smartplug.com"

    .line 1199
    .local v2, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%relay_auth_req"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    .local v3, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 1201
    :cond_3
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->doLongClick()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$25(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    .line 1202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1204
    :cond_4
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    .line 1205
    .local v7, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v5

    const-string v6, ""

    const-string v8, "getAuthState"

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1
.end method
