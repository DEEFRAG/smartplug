.class public Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;,
        Lcom/kankunit/smartplugcronus/fragment/HomeFragment$SwapViews;
    }
.end annotation


# static fields
.field public static indexBtn:Landroid/widget/Button;

.field public static menu_red_point:Landroid/widget/ImageView;

.field public static sceneBtn:Landroid/widget/Button;


# instance fields
.field private db:Lnet/tsz/afinal/FinalDb;

.field private delTv:Landroid/widget/TextView;

.field private deviceconfigure_mainbg:Landroid/widget/RelativeLayout;

.field private framelayout:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private mainContentView:Landroid/widget/FrameLayout;

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private moveTv:Landroid/widget/TextView;

.field private msgBtn:Landroid/widget/ImageButton;

.field private msgbg:Landroid/widget/RelativeLayout;

.field private navLeftBtn:Landroid/widget/ImageButton;

.field private navRightBtn:Landroid/widget/ImageButton;

.field private pop:Landroid/widget/PopupWindow;

.field private rootView:Landroid/view/View;

.field private sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

.field private shadowlayer:Landroid/widget/RelativeLayout;

.field private showingFragment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I

    .line 65
    return-void
.end method

.method private ReplaceFragmentMethod()V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 418
    .local v0, "tration":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0701aa

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 419
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 420
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->resetRightBtn()V

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I

    return-void
.end method

.method private dealDeviceData(Ljava/lang/String;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 614
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "sArr":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 619
    .local v0, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 622
    const/4 v4, 0x3

    aget-object v3, v1, v4

    .line 623
    .local v3, "status":Ljava/lang/String;
    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 632
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 634
    .local v2, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 636
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    .end local v2    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_2
    const-string v4, "open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 627
    const-string v4, "open"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_3
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 630
    const-string v4, "closed"

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dealFriendsData(Ljava/lang/String;)V
    .locals 30
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 641
    const-string v25, "%"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 642
    .local v19, "sArr":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 762
    :goto_0
    return-void

    .line 645
    :cond_0
    const/16 v25, 0x3

    aget-object v25, v19, v25

    const-string v26, "#"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "cArr":[Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 648
    .local v16, "plugMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    array-length v0, v3

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 669
    .local v6, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    .line 670
    .local v18, "remoteList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const-string v22, ""

    .line 671
    .local v22, "showRemoteIdx":Ljava/lang/String;
    const-string v7, ""

    .line 672
    .local v7, "hideRemoteIdx":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_7

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->showRemoteControl(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 759
    .local v9, "intent":Landroid/content/Intent;
    const-string v25, "msgBody"

    const-string v26, "refreshPlug"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string v25, "ikonke.basebroadcast"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 648
    .end local v6    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .end local v7    # "hideRemoteIdx":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v18    # "remoteList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .end local v22    # "showRemoteIdx":Ljava/lang/String;
    :cond_2
    aget-object v24, v3, v25

    .line 649
    .local v24, "string":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 648
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 652
    :cond_3
    const-string v27, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "cc":[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v4, v27

    const/16 v28, 0x1

    aget-object v28, v4, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v15, "plugList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v4

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 657
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_4
    array-length v0, v4

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v8, v0, :cond_5

    .line 664
    .end local v8    # "i":I
    :cond_4
    const/16 v27, 0x0

    aget-object v27, v4, v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 658
    .restart local v8    # "i":I
    :cond_5
    aget-object v27, v4, v8

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 657
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 661
    :cond_6
    aget-object v27, v4, v8

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 672
    .end local v4    # "cc":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v15    # "plugList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "string":Ljava/lang/String;
    .restart local v6    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    .restart local v7    # "hideRemoteIdx":Ljava/lang/String;
    .restart local v18    # "remoteList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .restart local v22    # "showRemoteIdx":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 673
    .local v13, "model":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 674
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 675
    .local v23, "status":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 676
    .local v10, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getOffList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 677
    .local v11, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 678
    .local v21, "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->isChange(Ljava/util/List;Ljava/util/List;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 680
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_b

    .line 729
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_14

    .line 747
    :cond_a
    const-string v26, "offline"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 748
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 752
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 680
    :cond_b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 681
    .restart local v24    # "string":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 682
    new-instance v20, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 683
    .local v20, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v14

    .line 685
    .local v14, "orderNo":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 686
    const-string v27, "closed"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 687
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 688
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 689
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 690
    const-string v27, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginMac(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 692
    const-string v27, "rt_"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0162

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 694
    const v27, 0x7f0201bd

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 695
    const-string v27, "rt_"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 713
    :cond_c
    :goto_7
    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 716
    const-string v27, "ir_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    const-string v27, "rf_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 717
    :cond_d
    const/16 v17, 0xbd7

    .line 718
    .local v17, "port":I
    const-string v27, "rf_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 719
    const/16 v17, 0xbdb

    .line 721
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_f
    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 722
    .local v5, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 723
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    .line 696
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v17    # "port":I
    :cond_10
    const-string v27, "ir_"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0165

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 698
    const v27, 0x7f0201ca

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 699
    const-string v27, "ir_"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 700
    :cond_11
    const-string v27, "rf_"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0163

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 702
    const v27, 0x7f0201cb

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 703
    const-string v27, "rf_"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 704
    :cond_12
    const-string v27, "tp_"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0164

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 706
    const v27, 0x7f0201ba

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 707
    const-string v27, "tp_"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 708
    :cond_13
    const-string v27, "vd_"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0166

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 710
    const v27, 0x7f020471

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 711
    const-string v27, "vd_"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 729
    .end local v14    # "orderNo":I
    .end local v20    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v24    # "string":Ljava/lang/String;
    :cond_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 730
    .restart local v24    # "string":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v27

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByPluginName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v27, "ir_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15

    const-string v27, "rf_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 733
    :cond_15
    const/16 v17, 0xbd7

    .line 734
    .restart local v17    # "port":I
    const-string v27, "rf_module"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 735
    const/16 v17, 0xbdb

    .line 737
    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_17
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 738
    .restart local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 739
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 750
    .end local v5    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v17    # "port":I
    .end local v24    # "string":Ljava/lang/String;
    :cond_18
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    goto/16 :goto_6
.end method

.method private doReceiveData(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 604
    if-eqz p1, :cond_1

    const-string v0, "friend_ack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->dealFriendsData(Ljava/lang/String;)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "rack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->dealDeviceData(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, "getUserIp_ack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initPopWin()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 197
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f070228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->moveTv:Landroid/widget/TextView;

    .line 199
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->moveTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 200
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->moveTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 201
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->moveTv:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v1, 0x7f070229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->delTv:Landroid/widget/TextView;

    .line 248
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->delTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 249
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->delTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 250
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->delTv:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;

    .line 306
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 308
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 309
    return-void
.end method

.method private resetRightBtn()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method


# virtual methods
.method public applyRotation(ZLandroid/support/v4/app/Fragment;FF)V
    .locals 7
    .param p1, "zheng"    # Z
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 425
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 426
    .local v3, "centerX":F
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 430
    .local v4, "centerY":F
    new-instance v0, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;

    .line 431
    const/high16 v5, 0x439b0000    # 310.0f

    move v1, p3

    move v2, p4

    .line 430
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;-><init>(FFFFFZ)V

    .line 432
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setDuration(J)V

    .line 433
    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setFillAfter(Z)V

    .line 434
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 435
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;ZLandroid/support/v4/app/Fragment;Lcom/kankunit/smartplugcronus/fragment/HomeFragment$DisplayNextView;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/Util_Rotate3DAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    return-void
.end method

.method public checkFriendsStatus()V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$9;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$9;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    .line 572
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$9;->start()V

    .line 573
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 580
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->doReceiveData(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 594
    return-void
.end method

.method public getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    return-object v0
.end method

.method public getOffList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, "onList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "rt_module"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    const-string v3, "rf_module"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v3, "ir_module"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v3, "tp_module"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string v3, "vd_module"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 777
    return-object v1

    .line 772
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 773
    .local v2, "string":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public hideShadePopWindow()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public initBg()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v3, 0x7f07014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->deviceconfigure_mainbg:Landroid/widget/RelativeLayout;

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202c5

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201af

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 176
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->deviceconfigure_mainbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->handler:Landroid/os/Handler;

    .line 313
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initBg()V

    .line 314
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initPopWin()V

    .line 315
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f070227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;

    .line 316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f070223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->menu_red_point:Landroid/widget/ImageView;

    .line 333
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navLeftBtn:Landroid/widget/ImageButton;

    .line 334
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navLeftBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f070225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexBtn:Landroid/widget/Button;

    .line 346
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f070226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneBtn:Landroid/widget/Button;

    .line 380
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneBtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$8;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$8;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    return-void
.end method

.method public isChange(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 786
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 791
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 781
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    .local v0, "string":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 786
    .end local v0    # "string":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 787
    .restart local v0    # "string":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0701aa

    .line 127
    new-instance v1, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v1, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 128
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 130
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->manager:Landroid/support/v4/app/FragmentManager;

    .line 131
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 133
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 134
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 135
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 136
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    .line 137
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initView()V

    .line 147
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initActionBar()V

    .line 148
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 149
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->framelayout:Landroid/widget/FrameLayout;

    .line 152
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 153
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 154
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v5, 0x42480000    # 50.0f

    const/4 v4, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 498
    .local v1, "ma":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v0

    .line 499
    .local v0, "isOpened":Z
    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 504
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 505
    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->switchFragment(I)V

    .line 507
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 508
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->switchFragment(I)V

    .line 510
    :cond_1
    return v4

    .line 502
    :cond_2
    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->checkFriendsStatus()V

    .line 540
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->stopShake()V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDragMode()V

    .line 547
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->resetRightBtn()V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V

    .line 552
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->resetRightBtn()V

    .line 556
    :cond_2
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 557
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 796
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->doReceiveData(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public refreshGrid()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->refreshGrid()V

    .line 586
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "frg"    # Landroid/support/v4/app/Fragment;
    .param p2, "resId"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 119
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 121
    return-void
.end method

.method public showShadePopWindow()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 1
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v0, p1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 590
    return-void
.end method

.method public switchFragment(I)V
    .locals 5
    .param p1, "showFragment"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->applyRotation(ZLandroid/support/v4/app/Fragment;FF)V

    .line 110
    iput v3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->applyRotation(ZLandroid/support/v4/app/Fragment;FF)V

    .line 113
    iput v3, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I

    goto :goto_0
.end method
