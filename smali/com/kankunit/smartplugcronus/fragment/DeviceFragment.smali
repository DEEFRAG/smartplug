.class public Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "DeviceFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;,
        Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$getStatusThread;
    }
.end annotation


# instance fields
.field private context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private count_expand:I

.field private currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

.field private devicelist:Landroid/widget/ListView;

.field private dialogPop:Landroid/widget/PopupWindow;

.field groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private ids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorGroupHeight:I

.field private isActivityOpen:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private mu:Lcom/kankunit/smartplugcronus/minautil/MinaUtil;

.field port:Ljava/lang/String;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field pwd:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field private the_group_expand_position:I

.field private topGroupText:Landroid/widget/TextView;

.field private updateUiThread:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;

.field versionK:Ljava/lang/String;

.field private view_flotage:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->groupList:Ljava/util/List;

    .line 101
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    .line 103
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 105
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    .line 107
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->the_group_expand_position:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->count_expand:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->ids:Ljava/util/Map;

    .line 115
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->view_flotage:Landroid/widget/LinearLayout;

    .line 116
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->topGroupText:Landroid/widget/TextView;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->mac:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->pwd:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->port:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->versionK:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->updateUiThread:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$UpdateUiThread;

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->showOffLineDialog()V

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z

    return v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    return-object v0
.end method

.method private dealDeviceData(Ljava/lang/String;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 783
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "sArr":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 788
    .local v0, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 791
    const/4 v4, 0x2

    aget-object v3, v1, v4

    .line 792
    .local v3, "status":Ljava/lang/String;
    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 801
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 802
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 803
    .local v2, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 805
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 794
    .end local v2    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_2
    const-string v4, "open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 795
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 796
    const-string v4, "open"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 798
    :cond_3
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 799
    const-string v4, "closed"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dealFriendsData(Ljava/lang/String;)V
    .locals 22
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 810
    const-string v17, "%"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 811
    .local v12, "sArr":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 873
    :goto_0
    return-void

    .line 814
    :cond_0
    const/16 v17, 0x3

    aget-object v17, v12, v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "cArr":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 817
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 818
    .local v11, "remoteList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const-string v14, ""

    .line 819
    .local v14, "showRemoteIdx":Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByVersion(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 851
    .local v5, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_a

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->showRemoteControl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 819
    .end local v5    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    :cond_2
    aget-object v16, v2, v17

    .line 820
    .local v16, "string":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 819
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 823
    :cond_4
    const-string v19, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "cc":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v3, v19

    const/16 v20, 0x1

    aget-object v20, v3, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v3, v20

    invoke-static/range {v19 .. v20}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 826
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 827
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_3
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 828
    aget-object v19, v3, v7

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 827
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 831
    :cond_6
    new-instance v6, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;-><init>()V

    .line 832
    .local v6, "devicePluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    const/16 v19, 0x0

    aget-object v19, v3, v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setMac(Ljava/lang/String;)V

    .line 833
    aget-object v19, v3, v7

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setPluginName(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 835
    aget-object v19, v3, v7

    const-string v20, "ir_module"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    aget-object v19, v3, v7

    const-string v20, "rf_module"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 836
    :cond_7
    const/16 v10, 0xbd7

    .line 837
    .local v10, "port":I
    aget-object v19, v3, v7

    const-string v20, "rf_module"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 838
    const/16 v10, 0xbdb

    .line 840
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 841
    .local v4, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v3, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v10, :cond_9

    .line 842
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 851
    .end local v3    # "cc":[Ljava/lang/String;
    .end local v4    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v6    # "devicePluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    .end local v7    # "i":I
    .end local v10    # "port":I
    .end local v16    # "string":Ljava/lang/String;
    .restart local v5    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 852
    .local v9, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 853
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 854
    .local v15, "status":Ljava/lang/String;
    const-string v18, "offline"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 855
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 864
    .end local v15    # "status":Ljava/lang/String;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v13

    .line 866
    .local v13, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v13, :cond_1

    .line 867
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 856
    .end local v13    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v15    # "status":Ljava/lang/String;
    :cond_c
    const-string v18, "open"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 857
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 858
    const-string v18, "open"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_5

    .line 860
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 861
    const-string v18, "closed"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 753
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "receive data==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    if-nez p1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const-string v3, "friend_ack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dealFriendsData(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V

    .line 760
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v4, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 761
    .local v2, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->setPlugModels(Ljava/util/List;)V

    .line 762
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 764
    .end local v2    # "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    :cond_2
    const-string v3, "relay_auth_rsp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dealDeviceData(Ljava/lang/String;)V

    .line 766
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "arr":[Ljava/lang/String;
    aget-object v3, v0, v6

    const-string v4, "noauth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v4, "n"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsAuth(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 770
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    const/16 v4, 0x191

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 771
    :cond_3
    aget-object v3, v0, v6

    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 772
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 773
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 774
    const/16 v3, 0x6f

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 775
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 777
    .end local v1    # "message":Landroid/os/Message;
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    .line 616
    return-void
.end method

.method private initSocketThread()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method private loadListData()V
    .locals 18

    .prologue
    .line 437
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v11, "templist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 440
    .local v9, "second":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 441
    .local v1, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const-string v14, "userinfo"

    const-string v15, "userid"

    invoke-static {v13, v14, v15}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 451
    .local v12, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, "version=3 or version=4"

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 452
    .local v2, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, "version=2"

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, "version=1"

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 454
    .local v4, "devicelist3":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 456
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    return-void

    .line 441
    .end local v2    # "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v3    # "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v4    # "devicelist3":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v12    # "userId":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 442
    .local v6, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getTime()J

    move-result-wide v7

    .line 443
    .local v7, "se":J
    sub-long v14, v9, v7

    const-wide/16 v16, 0x2710

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 444
    const-string v14, "new"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    .end local v6    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v7    # "se":J
    .restart local v2    # "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v3    # "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v4    # "devicelist3":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v12    # "userId":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 457
    .restart local v6    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "new"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 460
    const-string v14, "isNew"

    const-string v15, "true"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_2
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v14

    if-nez v14, :cond_4

    .line 465
    const-string v14, "status"

    const-string v15, "offline"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :goto_3
    const-string v14, "pwd"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v14, "port"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v14, "mac"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v14, "title"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v14, "versionK"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 462
    :cond_3
    const-string v14, "isNew"

    const-string v15, "false"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 467
    :cond_4
    const-string v14, "status"

    const-string v15, "online"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private showOffLineDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 893
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "Reset instructions"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, "Offline instructions"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Got it"

    aput-object v4, v2, v3

    .line 894
    .local v2, "strs":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030062

    const v5, 0x7f0701af

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 895
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    .line 921
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "device is offline"

    const-string v5, "Please check: 1. The phone is stable online 2. WiFi is normal 3. Try to refresh, Plug Socket or reset the device"

    invoke-static {v3, v4, v5, v1, v0}, Lcom/kankunit/smartplugcronus/util/DialogUtil;->initPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;

    .line 924
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->devicelist:Landroid/widget/ListView;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 926
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFriendsStatus()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 689
    .local v9, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 690
    const-string v1, "xx@getFriendsStatus.kankun-smartplug.com"

    .line 691
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%getfriend%freq"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v7, "getFriendsStatus"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 693
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 697
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->doBack(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=======msg========"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 878
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 879
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 883
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "string":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "string":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 730
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v2, "Request timed out"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 734
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    if-nez v1, :cond_1

    .line 746
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 738
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    .line 739
    .local v0, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 740
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 744
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V

    .line 745
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->sp:Landroid/content/SharedPreferences;

    .line 134
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->groupList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->groupList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 140
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->initHandler()V

    .line 141
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->initSocketThread()V

    .line 142
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 148
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V

    .line 160
    const v3, 0x7f03005a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "parent":Landroid/view/View;
    const v3, 0x7f0700bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->devicelist:Landroid/widget/ListView;

    .line 162
    new-instance v3, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->groupList:Ljava/util/List;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->list:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    .line 163
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->db:Lnet/tsz/afinal/FinalDb;

    const-class v4, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    invoke-virtual {v3, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->setPlugModels(Ljava/util/List;)V

    .line 165
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->devicelist:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->devicelist:Landroid/widget/ListView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->devicelist:Landroid/widget/ListView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 415
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 684
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 685
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 424
    :cond_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->checkFriendsStatus()V

    .line 430
    :goto_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 431
    return-void

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->loadListData()V

    .line 428
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z

    .line 720
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStart()V

    .line 721
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z

    .line 725
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStop()V

    .line 726
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->doBack(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 4
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    const/4 v1, 0x1

    .line 703
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 704
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->isActivityOpen:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 705
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, "switcherIntent":Landroid/content/Intent;
    const-string v2, "mac"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v2, "isOpen"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v2, "isDirect"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    const-string v1, "pwd"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 715
    .end local v0    # "switcherIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->showOffLineDialog()V

    goto :goto_0
.end method
