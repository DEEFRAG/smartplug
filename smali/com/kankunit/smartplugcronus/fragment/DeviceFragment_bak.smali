.class public Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "DeviceFragment_bak.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;,
        Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$getStatusThread;
    }
.end annotation


# instance fields
.field private context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private count_expand:I

.field private currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

.field private devicelist:Landroid/widget/ExpandableListView;

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
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private mu:Lcom/kankunit/smartplugcronus/minautil/MinaUtil;

.field port:Ljava/lang/String;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field pwd:Ljava/lang/String;

.field private the_group_expand_position:I

.field private topGroupText:Landroid/widget/TextView;

.field private updateUiThread:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;

.field versionK:Ljava/lang/String;

.field private view_flotage:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    .line 97
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 99
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    .line 101
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->count_expand:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->ids:Ljava/util/Map;

    .line 109
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->topGroupText:Landroid/widget/TextView;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->port:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->versionK:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->updateUiThread:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$UpdateUiThread;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/List;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->ids:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->count_expand:I

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    return-void
.end method

.method private dealDeviceData(Ljava/lang/String;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 757
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "sArr":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 762
    .local v0, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 765
    const/4 v4, 0x3

    aget-object v3, v1, v4

    .line 766
    .local v3, "status":Ljava/lang/String;
    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 775
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 776
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 777
    .local v2, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 779
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 768
    .end local v2    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_2
    const-string v4, "open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 769
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 770
    const-string v4, "open"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 772
    :cond_3
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 773
    const-string v4, "closed"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dealFriendsData(Ljava/lang/String;)V
    .locals 22
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string v17, "%"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 785
    .local v12, "sArr":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 847
    :goto_0
    return-void

    .line 788
    :cond_0
    const/16 v17, 0x3

    aget-object v17, v12, v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "cArr":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 791
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 792
    .local v11, "remoteList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const-string v14, ""

    .line 793
    .local v14, "showRemoteIdx":Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByVersion(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 825
    .local v5, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_a

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->showRemoteControl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    .end local v5    # "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    :cond_2
    aget-object v16, v2, v17

    .line 794
    .local v16, "string":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 793
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 797
    :cond_4
    const-string v19, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "cc":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v3, v19

    const/16 v20, 0x1

    aget-object v20, v3, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v3, v20

    invoke-static/range {v19 .. v20}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 800
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 801
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_3
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 802
    aget-object v19, v3, v7

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 801
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 805
    :cond_6
    new-instance v6, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;-><init>()V

    .line 806
    .local v6, "devicePluginModel":Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
    const/16 v19, 0x0

    aget-object v19, v3, v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setMac(Ljava/lang/String;)V

    .line 807
    aget-object v19, v3, v7

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->setPluginName(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 809
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

    .line 810
    :cond_7
    const/16 v10, 0xbd7

    .line 811
    .local v10, "port":I
    aget-object v19, v3, v7

    const-string v20, "rf_module"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 812
    const/16 v10, 0xbdb

    .line 814
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

    .line 815
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

    .line 816
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

    .line 825
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

    .line 826
    .local v9, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 827
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 828
    .local v15, "status":Ljava/lang/String;
    const-string v18, "offline"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 829
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 838
    .end local v15    # "status":Ljava/lang/String;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v13

    .line 840
    .local v13, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v13, :cond_1

    .line 841
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 830
    .end local v13    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v15    # "status":Ljava/lang/String;
    :cond_c
    const-string v18, "open"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 831
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 832
    const-string v18, "open"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_5

    .line 834
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 835
    const-string v18, "closed"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 5
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 732
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    const-string v3, "friend_ack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->dealFriendsData(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V

    .line 738
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    const-class v4, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 739
    .local v2, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;->setPlugModels(Ljava/util/List;)V

    .line 740
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 742
    .end local v2    # "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    :cond_2
    const-string v3, "rack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->dealDeviceData(Ljava/lang/String;)V

    .line 744
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "arr":[Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v0, v3

    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 746
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 747
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    const/16 v3, 0x6f

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 749
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 751
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getHeight()I
    .locals 9

    .prologue
    .line 629
    iget v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->indicatorGroupHeight:I

    .line 630
    .local v4, "showHeight":I
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->indicatorGroupHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/ExpandableListView;->pointToPosition(II)I

    move-result v1

    .line 631
    .local v1, "nEndPos":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 632
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 633
    .local v2, "pos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 634
    .local v0, "groupPos":I
    iget v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    if-eq v0, v6, :cond_0

    .line 635
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    .line 636
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    .line 635
    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 637
    .local v5, "viewNext":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 640
    .end local v0    # "groupPos":I
    .end local v2    # "pos":J
    .end local v5    # "viewNext":Landroid/view/View;
    :cond_0
    return v4
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 417
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    invoke-direct {v1, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    .line 508
    return-void
.end method

.method private initSocketThread()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method private loadListData()V
    .locals 18

    .prologue
    .line 354
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 355
    .local v8, "second":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v10, "templist1":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v11, "templist2":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const-string v14, "userinfo"

    const-string v15, "userid"

    invoke-static {v13, v14, v15}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 368
    .local v12, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, "version=1"

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, "version=2"

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 370
    .local v3, "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-void

    .line 358
    .end local v2    # "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v3    # "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v12    # "userId":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 359
    .local v5, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getTime()J

    move-result-wide v6

    .line 360
    .local v6, "se":J
    sub-long v14, v8, v6

    const-wide/16 v16, 0x2710

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 361
    const-string v14, "new"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v5    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v6    # "se":J
    .restart local v2    # "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v3    # "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v12    # "userId":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 372
    .restart local v5    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "new"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 375
    const-string v14, "isNew"

    const-string v15, "true"

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_2
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v14

    if-nez v14, :cond_4

    .line 380
    const-string v14, "status"

    const-string v15, "offline"

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :goto_3
    const-string v14, "pwd"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v14, "port"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPort()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v14, "mac"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v14, "title"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v14, "versionK"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 390
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 377
    :cond_3
    const-string v14, "isNew"

    const-string v15, "false"

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 382
    :cond_4
    const-string v14, "status"

    const-string v15, "online"

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 392
    :cond_5
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public checkFriendsStatus()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 669
    .local v9, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 670
    const-string v1, "xx@getFriendsStatus.kankun-smartplug.com"

    .line 671
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

    .line 672
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v7, "getFriendsStatus"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 673
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 677
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->doBack(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=======msg========"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 852
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 853
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

    .line 854
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 863
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

    .line 709
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v2, "Request timed out"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 713
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    if-nez v1, :cond_1

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 717
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    .line 718
    .local v0, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 719
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 720
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->deleteAllByMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 723
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V

    .line 724
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    .line 133
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->initHandler()V

    .line 134
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->initSocketThread()V

    .line 135
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V

    .line 153
    const v3, 0x7f03005a

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "parent":Landroid/view/View;
    const v3, 0x7f0700bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    .line 155
    new-instance v3, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->list:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    .line 156
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;

    const-class v4, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "pluginModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    invoke-virtual {v3, v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;->setPlugModels(Ljava/util/List;)V

    .line 158
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 160
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 161
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->deviceAdapter:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter_bak;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 162
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v8}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    .line 166
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 242
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 298
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 306
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 310
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    .line 311
    new-instance v4, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 328
    const v3, 0x7f07019e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->topGroupText:Landroid/widget/TextView;

    .line 329
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 331
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 664
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onDestroy()V

    .line 665
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 340
    :cond_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->checkFriendsStatus()V

    .line 346
    :goto_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 347
    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V

    .line 344
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 575
    if-nez p2, :cond_0

    .line 576
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 580
    .local v4, "npos":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    .line 581
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v8, v4}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v5

    .line 582
    .local v5, "pos":J
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 583
    .local v0, "childPos":I
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 584
    .local v1, "groupPos":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    .line 585
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    .line 586
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v9}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    .line 585
    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 587
    .local v2, "groupView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->indicatorGroupHeight:I

    .line 590
    .end local v2    # "groupView":Landroid/view/View;
    :cond_1
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->indicatorGroupHeight:I

    if-nez v8, :cond_3

    .line 626
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :cond_2
    :goto_0
    return-void

    .line 594
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    :cond_3
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->count_expand:I

    if-lez v8, :cond_5

    .line 595
    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    .line 596
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    if-nez v8, :cond_7

    .line 597
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const v9, 0x7f090021

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 601
    :goto_1
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->topGroupText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->groupList:Ljava/util/List;

    iget v10, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    if-ne v8, v1, :cond_4

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;

    invoke-virtual {v8, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 603
    :cond_4
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    :cond_5
    :goto_2
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->count_expand:I

    if-nez v8, :cond_6

    .line 609
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 613
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :cond_6
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->the_group_expand_position:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getHeight()I

    move-result v7

    .line 620
    .local v7, "showHeight":I
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    .line 621
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 620
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 624
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->indicatorGroupHeight:I

    sub-int/2addr v8, v7

    neg-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 625
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 599
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "showHeight":I
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    :cond_7
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const v9, 0x7f090022

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 605
    :cond_8
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->view_flotage:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 647
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z

    .line 699
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStart()V

    .line 700
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z

    .line 704
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onStop()V

    .line 705
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->doBack(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 4
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    const/4 v1, 0x1

    .line 683
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 684
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->isActivityOpen:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 685
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v0, "switcherIntent":Landroid/content/Intent;
    const-string v2, "mac"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v2, "isOpen"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v2, "isDirect"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 689
    const-string v1, "pwd"

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 694
    .end local v0    # "switcherIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 692
    :cond_1
    const-string v1, "Tips"

    const-string v2, "The current device is not online"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
