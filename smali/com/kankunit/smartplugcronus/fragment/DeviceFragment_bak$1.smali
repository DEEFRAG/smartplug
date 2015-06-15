.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;
.super Ljava/lang/Object;
.source "DeviceFragment_bak.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    return-object v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 20
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # J

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "mac"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "pwd"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "port"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->port:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "versionK"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->versionK:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v5, v5, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    const-string v4, "old"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setFlag(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCountByDeviceid(Landroid/content/Context;I)I

    move-result v17

    .line 180
    .local v17, "count":I
    if-nez v17, :cond_0

    .line 181
    new-instance v18, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 182
    .local v18, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 183
    const v3, 0x7f0201c9

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 189
    :goto_0
    const-string v3, "open"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 190
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v19

    .line 192
    .local v19, "orderNo":I
    invoke-virtual/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 194
    const-string v3, "device"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 200
    .end local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v19    # "orderNo":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0039

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1388

    new-instance v11, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)V

    invoke-static {v4, v5, v6, v8, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v14

    .line 219
    .local v14, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    const-string v4, "nopassword"

    iput-object v4, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    .line 223
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "cmd":Ljava/lang/String;
    const/4 v7, 0x0

    .line 225
    .local v7, "b":Z
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 226
    const/4 v7, 0x1

    .line 228
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0xb156

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 229
    .local v1, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 238
    .end local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v7    # "b":Z
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 184
    .end local v14    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 185
    const v3, 0x7f0201c6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_0

    .line 187
    :cond_5
    const v3, 0x7f0201c7

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto/16 :goto_0

    .line 231
    .end local v18    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->setCurrentMenuNo(I)V

    .line 232
    const-string v9, "xx@getDeviceStatus.kankun-smartplug.com"

    .line 233
    .local v9, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%nopassword%check%relay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v14

    .line 236
    .restart local v14    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;

    move-result-object v12

    const-string v13, ""

    const-string v15, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v16

    invoke-virtual/range {v8 .. v16}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1
.end method
