.class public Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
.super Landroid/support/v4/app/Fragment;
.source "IndexFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;,
        Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;,
        Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;
    }
.end annotation


# static fields
.field private static final REFRESH_COMPLETE:I = 0x110


# instance fields
.field private addDeviceWin:Landroid/widget/PopupWindow;

.field private addDeviceWinBg:Landroid/widget/RelativeLayout;

.field private add_erwm:Landroid/widget/TextView;

.field private br:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

.field private canLongClick:Z

.field private cmdSocket:Ljava/net/DatagramSocket;

.field private currentOperatingDevice:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private dataSourceList:Ljava/util/List;
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

.field private deviceMac:Ljava/lang/String;

.field private dialogPop:Landroid/widget/PopupWindow;

.field private dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private fV:Landroid/view/View;

.field private gridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private gridLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private handler:Landroid/os/Handler;

.field private indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

.field private isActivityOpen:Z

.field private isLogin:Z

.field private isLongclick:Z

.field private isMsgPannelShowing:Z

.field private listener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

.field private longClickIndex:I

.field private mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private msgBtn:Landroid/widget/ImageButton;

.field private msgDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private msgListView:Landroid/widget/ListView;

.field private msgVBar:Landroid/widget/RelativeLayout;

.field private msgbg:Landroid/widget/RelativeLayout;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pDialog:Landroid/app/ProgressDialog;

.field private parentRL:Landroid/widget/RelativeLayout;

.field private pwdStr:Ljava/lang/String;

.field private refreshAble:Z

.field private refreshHandler:Landroid/os/Handler;

.field private rootView:Landroid/view/View;

.field private sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private shadeLL:Landroid/widget/LinearLayout;

.field private shadeWindow:Landroid/widget/PopupWindow;

.field private sharep:Landroid/content/SharedPreferences;

.field private sp:Landroid/content/SharedPreferences;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->refreshAble:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isMsgPannelShowing:Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgDataList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    .line 145
    const-string v0, "nopassword"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->refreshHandler:Landroid/os/Handler;

    .line 787
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1166
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->currentOperatingDevice:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    return v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$20(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$21(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    return v0
.end method

.method static synthetic access$22(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    return-void
.end method

.method static synthetic access$23(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$24(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->doLongClick()V

    return-void
.end method

.method static synthetic access$26(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    return-void
.end method

.method static synthetic access$27(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;

    return-void
.end method

.method static synthetic access$29(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->cmdSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadePopWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$30(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$33(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->updateData(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$34(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$35(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dialogPop:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showPopWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method private doLongClick()V
    .locals 25

    .prologue
    .line 2022
    const/4 v7, 0x0

    .line 2023
    .local v7, "isDirect":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v22

    .line 2024
    .local v22, "mac":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2025
    const/4 v7, 0x1

    .line 2029
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v23

    .line 2030
    .local v23, "pwd":Ljava/lang/String;
    const-string v24, ""

    .line 2031
    .local v24, "state":Ljava/lang/String;
    const-string v5, "open"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2032
    const-string v24, "close"

    .line 2037
    :goto_1
    invoke-static/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2038
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2039
    .local v2, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%confirm#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2040
    .local v3, "confirmBeforeCmd":Ljava/lang/String;
    const-string v4, "%request"

    .line 2041
    .local v4, "confirmAfterCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    const v6, 0xb156

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 2042
    .local v1, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 2059
    .end local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v3    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v4    # "confirmAfterCmd":Ljava/lang/String;
    :goto_2
    return-void

    .line 2027
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v23    # "pwd":Ljava/lang/String;
    .end local v24    # "state":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2034
    .restart local v23    # "pwd":Ljava/lang/String;
    .restart local v24    # "state":Ljava/lang/String;
    :cond_1
    const-string v24, "open"

    goto :goto_1

    .line 2044
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 2045
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 2046
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2047
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%relay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2048
    .restart local v2    # "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2049
    .local v10, "userJID":Ljava/lang/String;
    new-instance v8, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v15, ""

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v8 .. v16}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 2050
    .local v8, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto :goto_2

    .line 2052
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v8    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v10    # "userJID":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%relay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2053
    .restart local v2    # "cmd":Ljava/lang/String;
    const-string v3, ""

    .line 2054
    .restart local v3    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v4, ""

    .line 2055
    .restart local v4    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const v18, 0xb156

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v21

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v19, v7

    invoke-direct/range {v13 .. v21}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 2056
    .restart local v1    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_2
.end method

.method private initMsgData()V
    .locals 8

    .prologue
    .line 280
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/dao/MessageDao;->getAllMsg(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 282
    .local v4, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MessageModel;>;"
    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$5;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    const-string v5, ""

    .line 289
    .local v5, "tempDate":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 308
    return-void

    .line 290
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/MessageModel;

    .line 291
    .local v3, "mm":Lcom/kankunit/smartplugcronus/model/MessageModel;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v0, "groupMap1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "groupLable"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgDataList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v5

    .line 297
    add-int/lit8 v1, v1, -0x1

    .line 289
    .end local v0    # "groupMap1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "level"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v6, "msgAlertDay"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v6, "msgAlertHour"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v6, "msgAlertTxt"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgDataList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 311
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    invoke-direct {v0, p0, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;)V

    .line 312
    .local v0, "baseReceiver":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "ikonke.basebroadcast"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v5, v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isMiniDirect(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    invoke-direct {v3, p0, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;)V

    .line 318
    .local v3, "miniDirect":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v4, "miniDirectIntentFilter":Landroid/content/IntentFilter;
    const-string v5, "miniDirect"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v5, v3, v4}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    .end local v3    # "miniDirect":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;
    .end local v4    # "miniDirectIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070249

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 323
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v5, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 325
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v6, 0x7f090044

    const v7, 0x7f09002a

    .line 326
    const v8, 0x7f09002d

    const v9, 0x7f09002e

    .line 325
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorScheme(IIII)V

    .line 329
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initMsgData()V

    .line 330
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070247

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgVBar:Landroid/widget/RelativeLayout;

    .line 332
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070246

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgListView:Landroid/widget/ListView;

    .line 333
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgDataList:Ljava/util/List;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgListView:Landroid/widget/ListView;

    invoke-direct {v2, v5, v6, v7}, Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    .line 334
    .local v2, "ma":Lcom/kankunit/smartplugcronus/adapter/MsgAdapter;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f07024a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 337
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v5, p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setIndexFragment(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    .line 345
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setNumColumns(I)V

    .line 346
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 347
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 350
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070245

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgbg:Landroid/widget/RelativeLayout;

    .line 351
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v6, 0x7f070248

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgBtn:Landroid/widget/ImageButton;

    .line 352
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->msgBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$6;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$6;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method private reorderShortcut()V
    .locals 9

    .prologue
    .line 370
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildCount()I

    move-result v0

    .line 371
    .local v0, "gridItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 385
    return-void

    .line 372
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v7, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 373
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0701d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 374
    .local v3, "idTv":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v5

    .line 377
    .local v5, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v5, :cond_1

    .line 378
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v4

    .line 379
    .local v4, "orderNo":I
    invoke-virtual {v5, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 380
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v7, v5}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 371
    .end local v4    # "orderNo":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private shadePopWindow(Landroid/view/View;)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 495
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 496
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    .line 497
    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeLL:Landroid/widget/LinearLayout;

    .line 498
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeLL:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$8;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 508
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x50000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->shadeWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->parentRL:Landroid/widget/RelativeLayout;

    const/16 v4, 0x51

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 514
    return-void
.end method

.method private showOffLineDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1665
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "Reset Instructions"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, "Offline instructions"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Got it"

    aput-object v4, v2, v3

    .line 1666
    .local v2, "strs":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030062

    const v5, 0x7f0701af

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1667
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$22;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$22;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    .line 1693
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dialogPop:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1694
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "device is offline"

    const-string v5, "Please check: 1. The phone is stable in line 2. WiFi is normal 3. Try to refresh, Plug Socket or reset the device"

    invoke-static {v3, v4, v5, v1, v0}, Lcom/kankunit/smartplugcronus/util/DialogUtil;->initPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dialogPop:Landroid/widget/PopupWindow;

    .line 1696
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dialogPop:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1698
    :cond_0
    return-void
.end method

.method private showPopWindow(Landroid/view/View;)V
    .locals 11
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    if-nez v7, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 520
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300b8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 521
    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    .line 525
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    const v7, 0x7f0700bf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWinBg:Landroid/widget/RelativeLayout;

    .line 526
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWinBg:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$9;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$9;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v7, 0x7f0700c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->add_erwm:Landroid/widget/TextView;

    .line 534
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->add_erwm:Landroid/widget/TextView;

    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$10;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v7, 0x7f0700c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 546
    .local v3, "add_yk":Landroid/widget/TextView;
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$11;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    const v7, 0x7f0700c6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 617
    .local v5, "rightBtn":Landroid/widget/TextView;
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$12;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v7, 0x7f0700c2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 629
    .local v2, "add_mini":Landroid/widget/TextView;
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$13;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$13;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    const v7, 0x7f0700c3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 647
    .local v1, "add_k2":Landroid/widget/TextView;
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$14;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$14;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    const v7, 0x7f0700c4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 664
    .local v0, "add_k1":Landroid/widget/TextView;
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$15;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 689
    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$16;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$16;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 705
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->parentRL:Landroid/widget/RelativeLayout;

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 706
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$17;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$17;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 712
    return-void

    .line 523
    .end local v0    # "add_k1":Landroid/widget/TextView;
    .end local v1    # "add_k2":Landroid/widget/TextView;
    .end local v2    # "add_mini":Landroid/widget/TextView;
    .end local v3    # "add_yk":Landroid/widget/TextView;
    .end local v5    # "rightBtn":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private updateData(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isselected"    # Ljava/lang/String;

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1320
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1321
    const-string v2, "isselected"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1323
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 1324
    .local v1, "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 1325
    return-void
.end method


# virtual methods
.method public changeGridDeleteable(Z)V
    .locals 13
    .param p1, "isCancel"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1212
    iput-boolean v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    .line 1213
    move v2, p1

    .line 1214
    .local v2, "fIsCancel":Z
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1215
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v10, v11}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setDeleteable(Z)V

    .line 1216
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v10, v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1218
    if-nez v2, :cond_0

    .line 1219
    iput-boolean v12, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    .line 1243
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 1246
    .local v6, "itemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_1

    .line 1275
    .end local v3    # "i":I
    .end local v6    # "itemCount":I
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 1276
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v10, v11}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1277
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v10, v11}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1314
    :goto_1
    return-void

    .line 1247
    .restart local v3    # "i":I
    .restart local v6    # "itemCount":I
    :cond_1
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1248
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceMac"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "deviceMac":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1250
    .local v4, "id":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shortcutType"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1251
    .local v9, "shortcutType":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isselected"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, "isselected":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1253
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v10, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v8

    .line 1254
    .local v8, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const-string v10, "device"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    .line 1255
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortCutPluginAll(Landroid/content/Context;Ljava/lang/String;)V

    .line 1262
    :cond_2
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v10, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcut(Landroid/content/Context;I)V

    .line 1263
    const-string v10, "device"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v8, :cond_3

    .line 1264
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getControlById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-result-object v0

    .line 1265
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V

    .line 1266
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->deleteById(Landroid/content/Context;I)V

    .line 1246
    .end local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v8    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1279
    .end local v1    # "deviceMac":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v5    # "isselected":Ljava/lang/String;
    .end local v6    # "itemCount":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "shortcutType":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v10, v12}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setDeleteable(Z)V

    .line 1280
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1281
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    new-instance v11, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;

    invoke-direct {v11, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Z)V

    invoke-virtual {v10, v11}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1
.end method

.method public changeGridDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 714
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    .line 715
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-eqz v0, :cond_0

    .line 716
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    .line 717
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setDragable(Z)V

    .line 718
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 719
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->stopShake()V

    .line 720
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 721
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->gridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 722
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 731
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setDragable(Z)V

    .line 725
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 726
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->startShake()V

    .line 727
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1895
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1896
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

    .line 1897
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1908
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1906
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1913
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v1, "Response timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1915
    :cond_0
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 2063
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2064
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2066
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#delete#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2067
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 2068
    return-void
.end method

.method public getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1486
    const/16 v19, 0x0

    .line 1661
    :goto_0
    return v19

    .line 1488
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "rack"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1495
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1496
    const/16 v19, 0x0

    goto :goto_0

    .line 1498
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDevicesShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v16

    .line 1499
    .local v16, "sm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const-string v19, "open"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v12, 0x1

    .line 1500
    .local v12, "light_state_isOpen":Z
    :goto_1
    if-eqz v12, :cond_5

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 1502
    .local v13, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1503
    const-string v19, "isOn"

    const-string v20, "open"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 1506
    .local v15, "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 1507
    const-string v19, "open"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 1517
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1521
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1522
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1523
    const-string v19, "mac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    const-string v19, "isOpen"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const-string v20, "isDirect"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1526
    const-string v19, "pwd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 1532
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1499
    .end local v12    # "light_state_isOpen":Z
    .end local v13    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1509
    .restart local v12    # "light_state_isOpen":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 1510
    .restart local v13    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1511
    const-string v19, "isOn"

    const-string v20, "closed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 1514
    .restart local v15    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 1515
    const-string v19, "closed"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1525
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 1534
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "light_state_isOpen":Z
    .end local v13    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    .end local v16    # "sm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1535
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1537
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 1661
    :cond_9
    :goto_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1539
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1542
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1543
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 1544
    .local v5, "dm1":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1545
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1546
    const-string v19, "mac"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    const-string v19, "isOpen"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    const-string v20, "isDirect"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1549
    const-string v19, "pwd"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1548
    :cond_b
    const/16 v19, 0x1

    goto :goto_5

    .line 1554
    .end local v5    # "dm1":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1557
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1558
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 1559
    .local v6, "dm2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, "deviceMac":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1561
    .local v10, "intent2":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1562
    const-string v19, "mac"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const-string v19, "isOpen"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string v20, "isDirect"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v19

    if-nez v19, :cond_d

    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1565
    const-string v19, "pwd"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1564
    :cond_d
    const/16 v19, 0x1

    goto :goto_6

    .line 1571
    .end local v3    # "deviceMac":Ljava/lang/String;
    .end local v6    # "dm2":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v10    # "intent2":Landroid/content/Intent;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showOffLineDialog()V

    goto/16 :goto_4

    .line 1574
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1577
    :cond_e
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 1578
    .local v7, "dm4":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 1580
    .local v4, "deviceMac4":Ljava/lang/String;
    new-instance v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1581
    .local v14, "pwdInput":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1582
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v19, "Enter Device Password"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x108009b

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 1583
    const-string v20, "Cancel"

    new-instance v21, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$19;

    invoke-direct/range {v21 .. v22}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$19;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1591
    const-string v19, "Confirm"

    new-instance v20, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/widget/EditText;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1614
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 1617
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "deviceMac4":Ljava/lang/String;
    .end local v7    # "dm4":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v14    # "pwdInput":Landroid/widget/EditText;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1621
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/View;

    .line 1622
    .local v17, "v":Landroid/view/View;
    const v19, 0x7f07024e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1623
    .local v8, "fOfflineoverlay":Landroid/widget/ImageView;
    const v19, 0x7f070250

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1624
    .local v11, "item_badge":Landroid/widget/ImageView;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1625
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1627
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showOffLineDialog()V

    goto/16 :goto_4

    .line 1630
    .end local v8    # "fOfflineoverlay":Landroid/widget/ImageView;
    .end local v11    # "item_badge":Landroid/widget/ImageView;
    .end local v17    # "v":Landroid/view/View;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1634
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/View;

    .line 1639
    .local v18, "vv":Landroid/view/View;
    new-instance v19, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1640
    const-string v20, "Control permissions"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 1641
    const-string v20, "This control has lost access to the device."

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 1642
    const-string v20, "Learn more"

    new-instance v21, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$21;

    invoke-direct/range {v21 .. v22}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$21;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 1652
    const-string v20, "Good"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 1653
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 1656
    .end local v18    # "vv":Landroid/view/View;
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    goto/16 :goto_4

    .line 1537
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x37 -> :sswitch_5
    .end sparse-switch
.end method

.method public initAddDevicePopWin()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 238
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 239
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    .line 241
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 243
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 244
    return-void
.end method

.method public initGridInfo()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->refreshAble:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->loadData()V

    .line 265
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 267
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->refreshData(Ljava/util/List;)V

    .line 268
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->invalidateViews()V

    .line 278
    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 387
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 388
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 389
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteErrShortcut(Landroid/content/Context;)V

    .line 391
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v0, "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "item_image"

    const v5, 0x7f020292

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v4, "item_text"

    const-string v5, "Add"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v4, "isOnline"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v4, "id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getAllShortcut(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, "shortcutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 431
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLogin:Z

    if-eqz v4, :cond_2

    .line 432
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLogin:Z

    .line 433
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "ISLOGIN"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    :cond_2
    return-void

    .line 398
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 400
    .local v3, "shortcutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "item_image"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIcon()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v5, "item_text"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v5, "shortcutType"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getShortcutType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v5, "relatedid"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v5, "isOn"

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v5, "deviceMac"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v5, "pluginMac"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getPluginMac()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v5, "pluginType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getPluginType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v5, "isOnline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOnline()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v5, "deviceTitle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v5, "isselected"

    const-string v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getShortcutType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RemoteControl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 428
    :cond_4
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 488
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 736
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 737
    packed-switch p1, :pswitch_data_0

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 739
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 740
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 741
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 439
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 441
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$7;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$7;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->listener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    .line 450
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->listener:Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->registerListener(Lcom/kankunit/smartplugcronus/view/MenuActivity$MyOntouchListener;)V

    .line 453
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v2, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 454
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "KSmartLoginInfo"

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sharep:Landroid/content/SharedPreferences;

    .line 455
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sharep:Landroid/content/SharedPreferences;

    const-string v3, "ISLOGIN"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLogin:Z

    .line 456
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "userInfo"

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sp:Landroid/content/SharedPreferences;

    .line 457
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sp:Landroid/content/SharedPreferences;

    const-string v3, "shortcutdevicelist"

    const-string v4, "none"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "oldMd5":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "deviceModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    .line 470
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    .line 471
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 473
    new-instance v2, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v2, v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 474
    const v2, 0x7f030088

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    .line 475
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0700bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->parentRL:Landroid/widget/RelativeLayout;

    .line 476
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initAddDevicePopWin()V

    .line 477
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initView()V

    .line 479
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->loadData()V

    .line 480
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 481
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1983
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/high16 v2, 0x43160000    # 150.0f

    .line 1988
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->canLongClick:Z

    if-nez v0, :cond_0

    .line 1989
    const/4 v0, 0x1

    .line 1997
    :goto_0
    return v0

    .line 1991
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1995
    sget-object v0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1997
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 2003
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->refreshHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1890
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1701
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    .line 1702
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getCount()I

    move-result v2

    .line 1703
    .local v2, "vCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_4

    .line 1710
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    if-eqz v3, :cond_0

    .line 1711
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->stopShake()V

    .line 1714
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    iget-boolean v3, v3, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-eqz v3, :cond_1

    .line 1715
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDragMode()V

    .line 1719
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1720
    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V

    .line 1725
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 1726
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1727
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->addDeviceWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1729
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->longClickIndex:I

    .line 1730
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1731
    return-void

    .line 1704
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v3, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1705
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1706
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1703
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 2008
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 2014
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 2018
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1864
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1866
    :cond_0
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->br:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    .line 1867
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1868
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "ikonke.basebroadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1869
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->br:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1870
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    .line 1871
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1872
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->br:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    if-eqz v0, :cond_0

    .line 1876
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->br:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1878
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    .line 1879
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1880
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1918
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1919
    .local v4, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v0, v8, v9

    .line 1920
    .local v0, "deviceState":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v2, v8, v9

    .line 1922
    .local v2, "isRack":Ljava/lang/String;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    .line 1923
    .local v1, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v1, :cond_0

    .line 1924
    const-string v8, "relay_auth_rsp"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1925
    const-string v8, "noauth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1927
    const-string v7, "closed"

    invoke-virtual {v1, v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1928
    const-string v7, "n"

    invoke-virtual {v1, v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsAuth(Ljava/lang/String;)V

    .line 1929
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v7, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1931
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v7, v8, v0, v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1932
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 1934
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1935
    .local v3, "messagge":Landroid/os/Message;
    const/16 v6, 0x37

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1936
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->fV:Landroid/view/View;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1937
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1979
    .end local v3    # "messagge":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    const-string v8, "offline"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1939
    invoke-virtual {v1, v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1940
    const-string v7, "closed"

    invoke-virtual {v1, v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1941
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v7, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1943
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v7, v8, v0, v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1944
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 1946
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1947
    .restart local v3    # "messagge":Landroid/os/Message;
    const/4 v6, 0x5

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1948
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->fV:Landroid/view/View;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1949
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1954
    .end local v3    # "messagge":Landroid/os/Message;
    :cond_2
    iget-boolean v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    if-eqz v8, :cond_3

    .line 1955
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->doLongClick()V

    goto :goto_0

    .line 1958
    :cond_3
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1959
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1961
    :cond_4
    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v1, v7}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 1963
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v8, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1964
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    invoke-static {v8, v9, v0, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1966
    iget-boolean v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isLongclick:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->isActivityOpen:Z

    if-eqz v8, :cond_0

    .line 1967
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-class v9, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1968
    .local v5, "switchintent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1969
    const-string v8, "mac"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1970
    const-string v8, "isOpen"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    const-string v8, "isDirect"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v9

    if-nez v9, :cond_5

    :goto_1
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1972
    const-string v6, "pwd"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1973
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v6, v5}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 1971
    goto :goto_1
.end method

.method public refreshGrid()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    .line 257
    const-wide/16 v2, 0x64

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 10
    .param p1, "dMac"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->deviceMac:Ljava/lang/String;

    .line 759
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->fV:Landroid/view/View;

    .line 761
    :try_start_0
    const-string v1, "xx@getAuthState.kankun-smartplug.com"

    .line 762
    .local v1, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 763
    .local v6, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    const-string v5, ""

    const-string v7, "getAuthState"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v1    # "address":Ljava/lang/String;
    .end local v6    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v9

    .line 765
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v2, "Network connection error"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setIndexGridView(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V
    .locals 0
    .param p1, "indexGridView"    # Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    .line 1886
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 3
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 772
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 773
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->currentOperatingDevice:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 774
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 775
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 776
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->currentOperatingDevice:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 786
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 783
    :cond_2
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->showOffLineDialog()V

    goto :goto_0
.end method

.method public stopDrag()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->startShake()V

    .line 1317
    return-void
.end method
