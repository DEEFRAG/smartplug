.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
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
    .line 177
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "mac"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "pwd"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "port"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->port:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "versionK"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->versionK:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    const-string v4, "old"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCountByDeviceid(Landroid/content/Context;I)I

    move-result v17

    .line 186
    .local v17, "count":I
    if-nez v17, :cond_0

    .line 187
    new-instance v18, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 188
    .local v18, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 189
    const v3, 0x7f0201c9

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 195
    :goto_0
    const-string v3, "open"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 196
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v19

    .line 198
    .local v19, "orderNo":I
    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 200
    const-string v3, "device"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 206
    .end local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v19    # "orderNo":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0039

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1388

    new-instance v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;)V

    invoke-static {v4, v5, v6, v8, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v14

    .line 225
    .local v14, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    const-string v4, "nopassword"

    iput-object v4, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    .line 229
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "cmd":Ljava/lang/String;
    const/4 v7, 0x0

    .line 231
    .local v7, "b":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    const/4 v7, 0x1

    .line 234
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0xb156

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 235
    .local v1, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 247
    .end local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v7    # "b":Z
    :goto_1
    return-void

    .line 190
    .end local v14    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 191
    const v3, 0x7f0201c6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_0

    .line 193
    :cond_5
    const v3, 0x7f0201c7

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_0

    .line 237
    .end local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 238
    .local v20, "userid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setCurrentMenuNo(I)V

    .line 239
    const-string v9, "xx@getAuthState.kankun-smartplug.com"

    .line 240
    .local v9, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%relay_auth_req"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v3

    if-nez v3, :cond_8

    .line 242
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%relay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 244
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v14

    .line 245
    .restart local v14    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/os/Handler;

    move-result-object v12

    const-string v13, ""

    const-string v15, "getAuthState"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v16

    invoke-virtual/range {v8 .. v16}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1
.end method
