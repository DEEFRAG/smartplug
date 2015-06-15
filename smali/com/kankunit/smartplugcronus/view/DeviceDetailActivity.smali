.class public Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DeviceDetailActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;
    }
.end annotation


# static fields
.field public static device_btn:Landroid/widget/ImageButton;

.field public static device_protect:Landroid/widget/TextView;

.field public static timeLength:I

.field public static timeList:[Ljava/lang/String;


# instance fields
.field private checkStatusTask:Ljava/util/TimerTask;

.field private final checkStatusTimer:Ljava/util/Timer;

.field private dataTime:Ljava/lang/String;

.field private dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

.field private delay:Ljava/lang/String;

.field private delayBtn:Landroid/widget/TextView;

.field private delayLongTime:J

.field private delayState:Ljava/lang/String;

.field private delayText:Ljava/lang/String;

.field private delayTime:Ljava/lang/String;

.field private deviceTime:Ljava/lang/String;

.field private device_electricty:Landroid/widget/TextView;

.field private device_open_loading:Landroid/widget/TextView;

.field private device_slight:Landroid/widget/TextView;

.field private device_wifi:Landroid/widget/TextView;

.field private device_yk:Landroid/widget/TextView;

.field private fastInfo:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hardV:Ljava/lang/String;

.field private hasMusic:Z

.field private hongmi_header_title:Landroid/widget/TextView;

.field private isActivityOpen:Z

.field private isBrClick:Z

.field private isBrOpen:Z

.field private isDirect:Z

.field private isDirectBr:Ljava/lang/String;

.field private isGetBrOk:Z

.field private isGetInfoOk:Z

.field private isGetLightOk:Z

.field private isOpen:Z

.field private isTimerShow:Z

.field private lightTimerInfo:Ljava/lang/String;

.field private light_state_isOpen:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private miniDelayStr:Ljava/lang/String;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private music:I

.field private music_btn:Landroid/widget/ImageButton;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private phoneMac:Ljava/lang/String;

.field pop:Landroid/widget/PopupWindow;

.field private pwd:Ljava/lang/String;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field private showMiniDelay:Ljava/lang/String;

.field private smart_bg:Landroid/widget/LinearLayout;

.field private softV:Ljava/lang/String;

.field private sp:Landroid/media/SoundPool;

.field private state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

.field private state_info_one:Landroid/widget/TextView;

.field private timelistBtn:Landroid/widget/TextView;

.field private timeroutTimer:Ljava/util/Timer;

.field private tm:Lcom/kankunit/smartplugcronus/model/TimerModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    .line 105
    sput v1, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    .line 102
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 103
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->deviceTime:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hardV:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->softV:Ljava/lang/String;

    .line 111
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isTimerShow:Z

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayTime:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dataTime:Ljava/lang/String;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayLongTime:J

    .line 123
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    .line 125
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrClick:Z

    .line 137
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    .line 141
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    return v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->infoThread()V

    return-void
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;J)V
    .locals 0

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayLongTime:J

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    return v0
.end method

.method private checkData()V
    .locals 22

    .prologue
    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1429
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v3, :cond_0

    .line 1430
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check#total%timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%brmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1432
    .local v6, "brCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1298"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1434
    .local v5, "allCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v4, 0xb156

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;-><init>(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1435
    .local v1, "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->start()V

    .line 1479
    .end local v1    # "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v5    # "allCmd":Ljava/lang/String;
    .end local v6    # "brCmd":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-nez v3, :cond_4

    .line 1439
    const-string v3, "device send=======1225=="

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1440
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v3, :cond_2

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check#relay%timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1442
    .restart local v2    # "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1308"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@timetask."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1444
    .local v9, "userJID":Ljava/lang/String;
    new-instance v7, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v14, "timetask"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v8, v2

    move-object/from16 v10, p0

    invoke-direct/range {v7 .. v15}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1445
    .local v7, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 1447
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v7    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v9    # "userJID":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1448
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%brmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1449
    .restart local v6    # "brCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1315"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@getDeviceStatus."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1451
    .restart local v9    # "userJID":Ljava/lang/String;
    new-instance v10, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v16, v0

    const-string v17, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v18, v0

    move-object v11, v6

    move-object v12, v9

    move-object/from16 v13, p0

    invoke-direct/range {v10 .. v18}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1452
    .local v10, "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 1454
    .end local v6    # "brCmd":Ljava/lang/String;
    .end local v9    # "userJID":Ljava/lang/String;
    .end local v10    # "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%light"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1456
    .local v11, "lightCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1322"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1457
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@getDeviceStatus."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1458
    .restart local v9    # "userJID":Ljava/lang/String;
    new-instance v10, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v16, v0

    const-string v17, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v18, v0

    move-object v12, v9

    move-object/from16 v13, p0

    invoke-direct/range {v10 .. v18}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1459
    .restart local v10    # "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 1462
    .end local v9    # "userJID":Ljava/lang/String;
    .end local v10    # "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v11    # "lightCmd":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v3, :cond_5

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check#total%timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .restart local v2    # "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%brmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1465
    .restart local v6    # "brCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1466
    .restart local v5    # "allCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1332"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1467
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v15, 0xb156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v21, v0

    move-object v12, v1

    move-object v13, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, p0

    invoke-direct/range {v12 .. v21}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;-><init>(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 1468
    .restart local v1    # "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;->start()V

    .line 1471
    .end local v1    # "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1GetInfoThread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v5    # "allCmd":Ljava/lang/String;
    .end local v6    # "brCmd":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1472
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%light"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    .restart local v2    # "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "======1339"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1474
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const v17, 0xb156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v20

    move-object v12, v1

    move-object v13, v2

    move-object/from16 v19, p0

    invoke-direct/range {v12 .. v20}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 1475
    .local v1, "sgt":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 13
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x6f

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1494
    if-nez p1, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1498
    .local v10, "message":Landroid/os/Message;
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1499
    .local v12, "msgs":[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isActivityOpen:Z

    if-eqz v0, :cond_0

    array-length v0, v12

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    aget-object v1, v12, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    const-string v0, "lack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    iput v5, v10, Landroid/os/Message;->arg1:I

    .line 1505
    iput-object p1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1506
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1507
    :cond_2
    const-string v0, "rack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    iput v5, v10, Landroid/os/Message;->arg1:I

    .line 1509
    iput-object p1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1510
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1511
    :cond_3
    const-string v0, "tack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wan_phone%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, "allCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/Smart2GetInfoUtil;->getSmart2Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kankunit/smartplugcronus/model/DeviceModel;)Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    move-result-object v8

    .line 1514
    .local v8, "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    const/16 v0, 0x71

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1515
    iput-object v8, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1516
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1517
    .end local v4    # "allCmd":Ljava/lang/String;
    .end local v8    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    :cond_4
    const-string v0, "back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1518
    const/16 v0, 0xd3

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1519
    iput-object p1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1520
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1521
    :cond_5
    const-string v0, "version_ack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    const-string v0, "%#%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1523
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 1524
    .local v11, "msg":Landroid/os/Message;
    iput v2, v11, Landroid/os/Message;->what:I

    .line 1525
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1528
    .end local v11    # "msg":Landroid/os/Message;
    :cond_6
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->softV:Ljava/lang/String;

    .line 1529
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hardV:Ljava/lang/String;

    .line 1530
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1531
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "hardV"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hardV:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v0, "softV"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->softV:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v0, "mac"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v0, "pwd"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v0, "ddinfo_name"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1537
    .local v9, "intent":Landroid/content/Intent;
    const-class v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1538
    invoke-virtual {v9, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1539
    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1540
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method private doTimerAndDelayAnimations()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1188
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1192
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 1195
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    .line 1198
    new-instance v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_4

    .line 1206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1208
    :cond_4
    return-void
.end method

.method private getFastTimeInfo()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x1d4c0

    .line 1119
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v1, "df":Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1121
    .local v5, "now":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1122
    .local v0, "date":Ljava/util/Date;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->deviceTime:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v6, ""

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->deviceTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1123
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->deviceTime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1125
    :cond_0
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v3, v6, v8

    .line 1126
    .local v3, "l":J
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Phone time faster"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "minutes will cause timed task that cannot be executed accurately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;

    .line 1137
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "l":J
    .end local v5    # "now":Ljava/util/Date;
    :goto_0
    return-void

    .line 1128
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "df":Ljava/text/DateFormat;
    .restart local v3    # "l":J
    .restart local v5    # "now":Ljava/util/Date;
    :cond_1
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    .line 1129
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Phone time slow"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "minutes will cause timed task that cannot be executed accurately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "l":J
    .end local v5    # "now":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1131
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "df":Ljava/text/DateFormat;
    .restart local v3    # "l":J
    .restart local v5    # "now":Ljava/util/Date;
    :cond_2
    :try_start_1
    const-string v6, "ok"

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private infoThread()V
    .locals 2

    .prologue
    .line 1332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1333
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1334
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1335
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    .line 274
    const-string v2, "pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    .line 275
    const-string v2, "isOpen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "openFlag":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    :cond_0
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    .line 283
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 287
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v5, "open"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 291
    return-void

    .line 279
    :cond_2
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    .line 290
    goto :goto_1
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 242
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v2, :cond_0

    .line 243
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 250
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-eqz v2, :cond_1

    .line 251
    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 259
    :goto_1
    sget-boolean v2, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    sget-object v3, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_2
    return-void

    .line 245
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020161

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 255
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 264
    :cond_2
    const v2, 0x7f020163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private initView()V
    .locals 8

    .prologue
    const v3, 0x7f030055

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 294
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initBg()V

    .line 295
    const v2, 0x7f07017e

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 296
    .local v0, "root":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 305
    :cond_0
    :goto_0
    const v2, 0x7f07018d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->smart_bg:Landroid/widget/LinearLayout;

    .line 306
    const v2, 0x7f0700d4

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 307
    const v2, 0x7f07017b

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sput-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    .line 308
    const v2, 0x7f070191

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timelistBtn:Landroid/widget/TextView;

    .line 309
    const v2, 0x7f070192

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;

    .line 310
    const v2, 0x7f07017a

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/util/AutoTextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    .line 311
    const v2, 0x7f070179

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    .line 312
    const v2, 0x7f07018e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_electricty:Landroid/widget/TextView;

    .line 313
    const v2, 0x7f07018f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    .line 314
    const v2, 0x7f070190

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f070194

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_yk:Landroid/widget/TextView;

    .line 316
    const v2, 0x7f070193

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f07017d

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    .line 318
    const v2, 0x7f070178

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;

    .line 320
    const-string v2, "user_info"

    invoke-virtual {p0, v2, v5}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 321
    .local v1, "userInfo":Landroid/content/SharedPreferences;
    const-string v2, "hasMusic"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    .line 322
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    if-eqz v2, :cond_5

    .line 323
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020322

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 327
    :goto_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 342
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->smart_bg:Landroid/widget/LinearLayout;

    const v3, 0x7f020158

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 343
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_electricty:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_1
    :goto_2
    return-void

    .line 298
    .end local v1    # "userInfo":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030057

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030056

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 325
    .restart local v1    # "userInfo":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;

    const v3, 0x7f020321

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 345
    :cond_6
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 346
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->smart_bg:Landroid/widget/LinearLayout;

    const v3, 0x7f02015e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 347
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_electricty:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "delayTime"    # Ljava/lang/String;
    .param p2, "delayState"    # Ljava/lang/String;

    .prologue
    .line 1211
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v15, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v15, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1214
    .local v11, "dt":Ljava/util/Date;
    move-object v8, v11

    .line 1215
    .local v8, "cur":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 1216
    .local v9, "curTime":J
    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1217
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 1219
    :cond_0
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 1220
    .local v12, "dtTime":J
    cmp-long v1, v9, v12

    if-ltz v1, :cond_1

    cmp-long v1, v9, v12

    if-nez v1, :cond_3

    .line 1221
    :cond_1
    sub-long v3, v12, v9

    .line 1222
    .local v3, "t":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    if-eqz v1, :cond_2

    .line 1223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->cancel()V

    .line 1224
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    .line 1226
    :cond_2
    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;JJLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    .line 1227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dc:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$DelayCount;->start()Lcom/kankunit/smartplugcronus/util/CountDownTimerUtil;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    .end local v3    # "t":J
    .end local v9    # "curTime":J
    .end local v12    # "dtTime":J
    :cond_3
    :goto_0
    return-void

    .line 1229
    :catch_0
    move-exception v14

    .line 1230
    .local v14, "e":Ljava/text/ParseException;
    invoke-virtual {v14}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1140
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-eqz v4, :cond_2

    .line 1142
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1143
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f02016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1144
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1145
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1153
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1155
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1156
    const v4, 0x7f020168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1157
    .local v2, "deviceTimer_ico":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1158
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timelistBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1167
    :goto_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "y"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->showMiniDelay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1169
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1170
    const v4, 0x7f020156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1171
    .local v1, "delay_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v1, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1172
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1181
    :goto_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "allen_close"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1182
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    :cond_1
    return-void

    .line 1148
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "delay_icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "deviceTimer_ico":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1149
    .restart local v3    # "res":Landroid/content/res/Resources;
    const v4, 0x7f02016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1150
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1151
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1162
    :cond_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1163
    const v4, 0x7f020167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1164
    .restart local v2    # "deviceTimer_ico":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1165
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timelistBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1175
    :cond_4
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1176
    const v4, 0x7f020155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1177
    .restart local v1    # "delay_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v1, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1297
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1486
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isActivityOpen:Z

    if-nez v4, :cond_0

    .line 767
    const/4 v4, 0x0

    .line 1114
    :goto_0
    return v4

    .line 769
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 770
    .local v18, "backMsg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v5, 0x143

    if-ne v4, v5, :cond_2

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%check%request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "======712"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 781
    const/4 v8, 0x0

    .line 782
    .local v8, "b":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 783
    const/4 v8, 0x1

    .line 785
    :cond_1
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v7, 0xb156

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 786
    .local v2, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 796
    .end local v2    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v8    # "b":Z
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 800
    :cond_3
    const-string v4, "There is no device discovery information"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 801
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 788
    :cond_4
    const-string v10, "xx@getDeviceStatus.kankun-smartplug.com"

    .line 789
    .local v10, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%check%relay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 790
    .local v11, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "======722"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v15

    .line 793
    .local v15, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const-string v14, ""

    const-string v16, "getDeviceStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    invoke-virtual/range {v9 .. v17}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    goto/16 :goto_1

    .line 803
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v15    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_7

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    if-eqz v4, :cond_6

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 806
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    .line 808
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 809
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_0

    .line 1114
    :cond_8
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 814
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_9

    .line 815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 817
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 818
    :cond_a
    const-string v4, "open"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 822
    .local v27, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-eqz v4, :cond_14

    .line 823
    const v4, 0x7f02016f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 824
    .local v20, "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 834
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_b
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 835
    .local v24, "msgs":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v24, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 838
    const-string v4, "rack"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "wan_device"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "lan_device"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 839
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device openclose back=======818=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    if-eqz v4, :cond_d

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 842
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    .line 844
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v28

    .line 845
    .local v28, "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    const-string v4, "close"

    const-string v5, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 848
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v4, :cond_16

    .line 849
    const-string v4, "open"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 851
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020162

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "open"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 862
    .end local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_e
    :goto_6
    const-string v4, "retry"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 863
    const-string v4, "Socket has been reset"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 865
    :cond_f
    const-string v4, "rack"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "wan_server"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "lan_device"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 866
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device openclose back=======842=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 868
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v28

    .line 872
    .restart local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const-string v4, "close"

    const-string v5, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 873
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v4, :cond_18

    .line 874
    const-string v4, "open"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 876
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020162

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "open"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 887
    .end local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_12
    :goto_8
    const-string v4, "lack"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 888
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    .line 889
    const-string v4, "open"

    const-string v5, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->light_state_isOpen:Z

    .line 890
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->light_state_isOpen:Z

    if-eqz v4, :cond_1a

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 893
    .restart local v27    # "res":Landroid/content/res/Resources;
    const v4, 0x7f020166

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 894
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "open"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setLightStatus(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_2

    .line 818
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "msgs":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 829
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_14
    const v4, 0x7f02016e

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 830
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 847
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v24    # "msgs":[Ljava/lang/String;
    .restart local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_15
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 855
    :cond_16
    const-string v4, "closed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 857
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020161

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "close"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_6

    .line 872
    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 880
    :cond_18
    const-string v4, "closed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 882
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020161

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "close"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setStatus(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_8

    .line 889
    .end local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 900
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 901
    .restart local v27    # "res":Landroid/content/res/Resources;
    const v4, 0x7f020165

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 902
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v5, "close"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setLightStatus(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto/16 :goto_2

    .line 910
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "msgs":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_1b

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 913
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    const-string v4, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 915
    .restart local v24    # "msgs":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v24, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "pack"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 918
    const-string v4, "rack"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 919
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initUI()V

    .line 923
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 926
    .end local v24    # "msgs":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v28

    .line 927
    .restart local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const-string v4, "close"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    .line 928
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v4, :cond_21

    .line 929
    const-string v4, "open"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 931
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020162

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 937
    :goto_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 939
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    .line 941
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 942
    :cond_1e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    .line 943
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    .line 944
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    .line 946
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;

    .line 947
    .local v22, "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    if-nez v22, :cond_22

    .line 948
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 927
    .end local v22    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    :cond_20
    const/4 v4, 0x1

    goto :goto_a

    .line 933
    :cond_21
    const-string v4, "closed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 935
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const v5, 0x7f020161

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_b

    .line 950
    .restart local v22    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    :cond_22
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getMiniDelayStr()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->miniDelayStr:Ljava/lang/String;

    .line 951
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getTimerListLength()I

    move-result v4

    sput v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    .line 952
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getTimerList()[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_23

    .line 954
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getBrState()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirectBr:Ljava/lang/String;

    .line 956
    :cond_23
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v29, "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_c
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v23

    if-lt v0, v4, :cond_2a

    .line 983
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    .line 984
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    array-length v4, v4

    sput v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    .line 985
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getDeviceTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->deviceTime:Ljava/lang/String;

    .line 986
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getSoftV()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->softV:Ljava/lang/String;

    .line 987
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getHardV()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hardV:Ljava/lang/String;

    .line 988
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getDelayTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    .line 989
    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getShowMiniDelay()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->showMiniDelay:Ljava/lang/String;

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_24

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "allen_close"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayTime:Ljava/lang/String;

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayState:Ljava/lang/String;

    .line 995
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_25

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-nez v4, :cond_26

    .line 996
    :cond_25
    const-string v4, "open"

    invoke-virtual/range {v22 .. v22}, Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;->getBrState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    .line 999
    :cond_26
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getMinTime([Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/TimerModel;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_27

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getDataTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->dataTime:Ljava/lang/String;

    .line 1006
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_29

    .line 1007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_28

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "allen_close"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1008
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v4, :cond_30

    const-string v4, "y"

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->showTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_29
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->updateUI()V

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getFastTimeInfo()V

    .line 1017
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    .line 1018
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->doTimerAndDelayAnimations()V

    goto/16 :goto_2

    .line 958
    :cond_2a
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    if-eqz v4, :cond_2b

    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#1024#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 959
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->lightTimerInfo:Ljava/lang/String;

    .line 961
    :cond_2b
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    if-eqz v4, :cond_2c

    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#1024#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#1025#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 962
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_2c
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    if-eqz v4, :cond_2d

    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#1025#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#unset#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 965
    const-class v4, Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 969
    .restart local v27    # "res":Landroid/content/res/Resources;
    const-string v4, "yyyy-MM-dd-HH:mm:ss"

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DateUtil;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 970
    .local v26, "nowTime":Ljava/lang/String;
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v23

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v19, v4, v5

    .line 971
    .local v19, "backTime":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2e

    .line 972
    const v4, 0x7f020163

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 973
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 974
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 957
    .end local v19    # "backTime":Ljava/lang/String;
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v26    # "nowTime":Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_2d
    :goto_10
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c

    .line 976
    .restart local v19    # "backTime":Ljava/lang/String;
    .restart local v26    # "nowTime":Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_2e
    const v4, 0x7f020164

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 977
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 978
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 996
    .end local v19    # "backTime":Ljava/lang/String;
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v26    # "nowTime":Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 1008
    :cond_30
    const-string v4, "n"

    goto/16 :goto_e

    .line 1010
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayState:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->showTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1022
    .end local v22    # "dif":Lcom/kankunit/smartplugcronus/model/DeviceInfoModel;
    .end local v23    # "i":I
    .end local v28    # "shortModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v29    # "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_32

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1025
    :cond_32
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    .line 1026
    const-string v4, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1027
    .restart local v24    # "msgs":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v24, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1030
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-nez v4, :cond_8

    .line 1031
    const-string v4, "open"

    const-string v5, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 1035
    .restart local v27    # "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-eqz v4, :cond_34

    .line 1036
    const v4, 0x7f02016f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1037
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1044
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrClick:Z

    if-eqz v4, :cond_8

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0244

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1046
    .local v21, "dialogInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-nez v4, :cond_35

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0246

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2710

    new-instance v6, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v4, v1, v5, v6}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 1069
    :goto_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrClick:Z

    goto/16 :goto_2

    .line 1031
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "dialogInfo":Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_33
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 1040
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_34
    const v4, 0x7f02016e

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1041
    .restart local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 1056
    .restart local v21    # "dialogInfo":Ljava/lang/String;
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0245

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 1060
    .local v25, "newMac":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0247

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0248

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1062
    .end local v25    # "newMac":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a98

    new-instance v6, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v4, v1, v5, v6}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    goto/16 :goto_13

    .line 1074
    .end local v20    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "dialogInfo":Ljava/lang/String;
    .end local v24    # "msgs":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isActivityOpen:Z

    if-eqz v4, :cond_8

    .line 1077
    :cond_37
    const-string v30, ""

    .line 1078
    .local v30, "timerStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3a

    .line 1079
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1080
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setVisibility(I)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1085
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1089
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1090
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1092
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_3c

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "allen_close"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1093
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setVisibility(I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_3f

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setVisibility(I)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->tm:Lcom/kankunit/smartplugcronus/model/TimerModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/TimerModel;->getWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "allen_close"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1103
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isTimerShow:Z

    if-eqz v4, :cond_40

    const/4 v4, 0x0

    :goto_14
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isTimerShow:Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setVisibility(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isTimerShow:Z

    if-eqz v5, :cond_41

    .end local v30    # "timerStr":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1103
    .restart local v30    # "timerStr":Ljava/lang/String;
    :cond_40
    const/4 v4, 0x1

    goto :goto_14

    .line 1106
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    move-object/from16 v30, v0

    goto :goto_15

    .line 812
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x6f -> :sswitch_0
        0x70 -> :sswitch_1
        0x71 -> :sswitch_2
        0xd3 -> :sswitch_3
    .end sparse-switch
.end method

.method protected initBg()V
    .locals 5

    .prologue
    .line 362
    const v3, 0x7f070177

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 363
    .local v2, "timerset_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 364
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016a

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016b

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 370
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 1561
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 1562
    .local v0, "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hongmi_header_title:Landroid/widget/TextView;

    .line 1563
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hongmi_header_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$12;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$12;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1570
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1571
    .local v1, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$13;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$13;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1578
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1579
    .local v2, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1580
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$14;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$14;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 46
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    :try_start_0
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v33, "bundle":Landroid/os/Bundle;
    new-instance v37, Landroid/content/Intent;

    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v37, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 762
    .end local v33    # "bundle":Landroid/os/Bundle;
    .end local v37    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 382
    .restart local v33    # "bundle":Landroid/os/Bundle;
    .restart local v37    # "intent":Landroid/content/Intent;
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z

    if-eqz v8, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_open_loading:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    sget-object v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 387
    const-string v44, ""

    .line 388
    .local v44, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    if-eqz v8, :cond_1

    .line 389
    const-string v44, "close"

    .line 394
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%request"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "cmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%confirm#"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, "%request"

    .line 398
    .local v6, "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v8, 0xb156

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 399
    .local v3, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 415
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v5    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v6    # "confirmAfterCmd":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    .line 416
    new-instance v45, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;

    invoke-direct/range {v45 .. v46}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    .line 425
    .local v45, "timerTast":Ljava/util/TimerTask;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeroutTimer:Ljava/util/Timer;

    const-wide/16 v17, 0x2ee0

    move-object/from16 v0, v45

    move-wide/from16 v1, v17

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 759
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v33    # "bundle":Landroid/os/Bundle;
    .end local v37    # "intent":Landroid/content/Intent;
    .end local v44    # "state":Ljava/lang/String;
    .end local v45    # "timerTast":Ljava/util/TimerTask;
    :catch_0
    move-exception v35

    .line 760
    .local v35, "e":Ljava/lang/Exception;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 391
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v33    # "bundle":Landroid/os/Bundle;
    .restart local v37    # "intent":Landroid/content/Intent;
    .restart local v44    # "state":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v44, "open"

    goto/16 :goto_1

    .line 401
    :cond_2
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-nez v8, :cond_3

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%relay"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .restart local v4    # "cmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "====send=403====="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "kankun-smartplug.com"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, "userJID":Ljava/lang/String;
    new-instance v7, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v8, v4

    move-object/from16 v10, p0

    invoke-direct/range {v7 .. v15}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 406
    .local v7, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_2

    .line 408
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v7    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v9    # "userJID":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%relay"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    .restart local v4    # "cmd":Ljava/lang/String;
    const-string v5, ""

    .line 410
    .restart local v5    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, ""

    .line 411
    .restart local v6    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v15, 0xb156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v18

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v18}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 412
    .restart local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_2

    .line 431
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v6    # "confirmAfterCmd":Ljava/lang/String;
    .end local v44    # "state":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    if-nez v8, :cond_4

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 433
    const-string v8, "==========428"

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-eqz v8, :cond_5

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0204

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 441
    :cond_5
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrClick:Z

    .line 443
    const-string v30, ""

    .line 444
    .local v30, "brState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isBrOpen:Z

    if-eqz v8, :cond_6

    .line 445
    const-string v30, "close"

    .line 450
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_8

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0244

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 452
    .local v34, "dialogInfo":Ljava/lang/String;
    const-string v8, "close"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c01ad

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0246

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x2710

    new-instance v14, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v8, v1, v11, v14}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 471
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%brmode"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    .restart local v4    # "cmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%confirm#"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    .restart local v5    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, "%brmode"

    .line 474
    .restart local v6    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v15, 0xb156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v16, v0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 475
    .restart local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 447
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v6    # "confirmAfterCmd":Ljava/lang/String;
    .end local v34    # "dialogInfo":Ljava/lang/String;
    :cond_6
    const-string v30, "open"

    goto/16 :goto_3

    .line 462
    .restart local v34    # "dialogInfo":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c01ac

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0245

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x3a98

    new-instance v14, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v8, v1, v11, v14}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    goto/16 :goto_4

    .line 477
    .end local v34    # "dialogInfo":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "loading"

    const/16 v14, 0x2ee0

    new-instance v17, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v8, v11, v14, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 483
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-nez v8, :cond_9

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%brmode"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .restart local v4    # "cmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "kankun-smartplug.com"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 486
    .restart local v9    # "userJID":Ljava/lang/String;
    new-instance v7, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v8, v4

    move-object/from16 v10, p0

    invoke-direct/range {v7 .. v15}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 487
    .restart local v7    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 489
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v7    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v9    # "userJID":Ljava/lang/String;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%brmode"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .restart local v4    # "cmd":Ljava/lang/String;
    const-string v5, ""

    .line 491
    .restart local v5    # "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, ""

    .line 492
    .restart local v6    # "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v15, 0xb156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v18

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v18}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 493
    .restart local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 500
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "confirmBeforeCmd":Ljava/lang/String;
    .end local v6    # "confirmAfterCmd":Ljava/lang/String;
    .end local v30    # "brState":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    const-string v11, "ir_module"

    move-object/from16 v0, p0

    invoke-static {v0, v8, v11}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 501
    .local v39, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v39, :cond_a

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 502
    :cond_a
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .restart local v37    # "intent":Landroid/content/Intent;
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 507
    :cond_b
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .restart local v37    # "intent":Landroid/content/Intent;
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v8, "isDirect"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v11

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v8, "flag"

    const-string v11, "ir_module"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 518
    .end local v39    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :sswitch_3
    const-string v8, "initInfo"

    .line 519
    const-string v11, "protectFlag"

    .line 518
    move-object/from16 v0, p0

    invoke-static {v0, v8, v11}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 520
    .local v41, "protectFlag":Ljava/lang/String;
    const-string v8, "yes"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 521
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_10

    .line 522
    :cond_c
    new-instance v40, Landroid/content/Intent;

    const-class v8, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v40, "pIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_d

    .line 525
    const-string v8, "devicetype"

    const-string v11, "blank"

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 534
    const-string v8, "initInfo"

    const-string v11, "protectFlag"

    const-string v14, "yes"

    move-object/from16 v0, p0

    invoke-static {v0, v8, v11, v14}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x3

    if-ne v8, v11, :cond_e

    .line 527
    const-string v8, "devicetype"

    const-string v11, "white"

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 528
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_f

    .line 529
    const-string v8, "devicetype"

    const-string v11, "k2"

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 531
    :cond_f
    const-string v8, "devicetype"

    const-string v11, "k1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 539
    .end local v40    # "pIntent":Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 540
    .local v42, "res":Landroid/content/res/Resources;
    sget-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    if-eqz v8, :cond_13

    .line 541
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    sget-object v11, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 542
    new-instance v43, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Landroid/content/res/Resources;)V

    .line 564
    .local v43, "save":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0241

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "The phone charge protection have been enabled in other devices, if you enable it on this device it will cause the original device charging protection to be invalid, do you want to continue?"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v8, v11, v1}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 566
    .end local v43    # "save":Landroid/content/DialogInterface$OnClickListener;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_12

    .line 567
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%alarm#1025#y#1#n#2015-1-1-10:10:00#y#0#unset%timer"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 568
    .restart local v4    # "cmd":Ljava/lang/String;
    const v15, 0xb156

    .line 569
    .local v15, "port":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%confirm#"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 570
    .local v12, "beforeCmd":Ljava/lang/String;
    const-string v13, "%timer"

    .line 571
    .local v13, "afterCmd":Ljava/lang/String;
    new-instance v10, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move/from16 v16, v0

    move-object v11, v4

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 572
    .local v10, "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 573
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "~~~````"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    .end local v10    # "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v12    # "beforeCmd":Ljava/lang/String;
    .end local v13    # "afterCmd":Ljava/lang/String;
    .end local v15    # "port":I
    :goto_6
    const v8, 0x7f020163

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 585
    .local v32, "br_icon2":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 586
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/kankunit/smartplugcronus/service/ProtectService;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->stopService(Landroid/content/Intent;)Z

    .line 587
    const v8, 0x7f020163

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 588
    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v14

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v17

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v8, v11, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 589
    sget-object v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v8, v11, v0, v14, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 575
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v32    # "br_icon2":Landroid/graphics/drawable/Drawable;
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "kankun-smartplug.com"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 576
    .restart local v9    # "userJID":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 577
    .local v20, "phoneMac":Ljava/lang/String;
    const-string v8, ":"

    const-string v11, "-"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%alarm#1025#y#1#n#2015-1-1-10:10:10#y#0#unset#relay%timer"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .restart local v4    # "cmd":Ljava/lang/String;
    new-instance v16, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v24, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object/from16 v19, p0

    invoke-direct/range {v16 .. v24}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 580
    .local v16, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "~~~````"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 592
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v9    # "userJID":Ljava/lang/String;
    .end local v16    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v20    # "phoneMac":Ljava/lang/String;
    :cond_13
    const/4 v8, 0x1

    sput-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 593
    const/4 v8, 0x1

    sput-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirst:Z

    .line 594
    new-instance v38, Landroid/content/Intent;

    const-class v8, Lcom/kankunit/smartplugcronus/service/ProtectService;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v38, "intent_protect":Landroid/content/Intent;
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v8, "direct"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v8, "userIp"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 600
    const v8, 0x7f020164

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 601
    .local v31, "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v14

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v17

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v8, v11, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 602
    sget-object v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v8, v11, v0, v14, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 606
    .end local v31    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v38    # "intent_protect":Landroid/content/Intent;
    .end local v41    # "protectFlag":Ljava/lang/String;
    .end local v42    # "res":Landroid/content/res/Resources;
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v8, :cond_14

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 611
    :cond_14
    const-string v8, "fastFlag"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v8, "type"

    const-string v11, "timer"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v8, "num"

    sget-object v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    array-length v11, v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v8, "isDirect"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_7
    sget-object v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    array-length v8, v8

    move/from16 v0, v36

    if-lt v0, v8, :cond_15

    .line 620
    const-class v8, Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 621
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 618
    :cond_15
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v11, v11, v36

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 626
    .end local v36    # "i":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v8, :cond_16

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 631
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_1a

    .line 632
    :cond_17
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 633
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v8, "miniDelayStr"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->miniDelayStr:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v8, :cond_18

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 637
    :cond_18
    const-string v8, "delay_open_time_value"

    const-string v11, "10"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v8, "delay_close_time_value"

    const-string v11, "30"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v8, "openState"

    const/4 v11, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    const-string v8, "closeState"

    const/4 v11, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v8, "isOpenUp"

    const/4 v11, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    const-string v8, "delay_repeat_value"

    const-string v11, "Never"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 644
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 645
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 646
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 648
    :cond_19
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 649
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 650
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 655
    :cond_1a
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 656
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "fastFlag"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v8, "delayTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayLongTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v17

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 658
    const-string v8, "isOpen"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isOpen:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v8, "isDirect"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 662
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    if-eqz v8, :cond_1b

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delay:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 663
    :cond_1b
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 664
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 665
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 668
    :cond_1c
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 669
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 675
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v8, :cond_1d

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 677
    const-string v8, "==========616"

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 681
    :cond_1d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 682
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 684
    :cond_1e
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 685
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "name"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v8, "title"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v8, "type"

    const-string v11, "deviceInfo"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 689
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 690
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 691
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 694
    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    if-nez v8, :cond_1f

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 698
    :cond_1f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 699
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 701
    :cond_20
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v8}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_21

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v8

    if-nez v8, :cond_22

    .line 702
    :cond_21
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 703
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "hardV"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hardV:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v8, "softV"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->softV:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 707
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 708
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 711
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c024a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "loading"

    const/16 v14, 0x2cec

    new-instance v17, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v8, v11, v14, v1}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 717
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wan_phone%"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%check#version%request"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 718
    .local v22, "lightCmd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "======653"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 719
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "@getDeviceInfo."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "kankun-smartplug.com"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 720
    .restart local v9    # "userJID":Ljava/lang/String;
    new-instance v21, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-object/from16 v27, v0

    const-string v28, "getDeviceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v29, v0

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    invoke-direct/range {v21 .. v29}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 721
    .local v21, "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual/range {v21 .. v21}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 725
    .end local v9    # "userJID":Ljava/lang/String;
    .end local v21    # "s":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v22    # "lightCmd":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 726
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 728
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    if-nez v8, :cond_24

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 730
    const-string v8, "==========669"

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c0249

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0c0203

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v8, v11, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 735
    :cond_24
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 736
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v8, "fastFlag"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->fastInfo:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v8, "lightTimerInfo"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->lightTimerInfo:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v8, "isDirect"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    const-string v8, "light_state_isOpen"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->light_state_isOpen:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 742
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 743
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 744
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 745
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 748
    :sswitch_9
    new-instance v33, Landroid/os/Bundle;

    .end local v33    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 749
    .restart local v33    # "bundle":Landroid/os/Bundle;
    const-string v8, "pwd"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v8, "mac"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v8, "isDirect"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    new-instance v37, Landroid/content/Intent;

    .end local v37    # "intent":Landroid/content/Intent;
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 753
    .restart local v37    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/kankunit/smartplugcronus/view/ElectricityChartActivity;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 754
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 755
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07013b -> :sswitch_6
        0x7f07013c -> :sswitch_7
        0x7f07017b -> :sswitch_0
        0x7f07018e -> :sswitch_9
        0x7f07018f -> :sswitch_1
        0x7f070190 -> :sswitch_3
        0x7f070191 -> :sswitch_4
        0x7f070192 -> :sswitch_5
        0x7f070193 -> :sswitch_8
        0x7f070194 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x1388

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 176
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initData()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 179
    new-instance v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkStatusTask:Ljava/util/TimerTask;

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkStatusTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 189
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 191
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    .line 193
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->setContentView(I)V

    .line 195
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->sp:Landroid/media/SoundPool;

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->sp:Landroid/media/SoundPool;

    const v1, 0x7f060004

    invoke-virtual {v0, p0, v1, v9}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music:I

    .line 198
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initView()V

    .line 199
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initUI()V

    .line 201
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 202
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 203
    .local v8, "view":Landroid/view/View;
    const v0, 0x7f07013b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 207
    const v0, 0x7f07013c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 212
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x7f020138

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 213
    .local v6, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {v6, v11, v11, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 216
    const v0, 0x7f020393

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {v6, v11, v11, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v8, v12, v12, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 222
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget-object v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timelistBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_wifi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_yk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    sget-object v0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_slight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_electricty:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 148
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 149
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 150
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 151
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1366
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->finish()V

    .line 1369
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1633
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 1605
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c024a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "loading"

    const/16 v8, 0x2cec

    new-instance v9, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$15;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$15;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)V

    invoke-static {p0, v4, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 1611
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->light_state_isOpen:Z

    if-eqz v4, :cond_0

    const-string v12, "close"

    .line 1612
    .local v12, "state":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    if-nez v4, :cond_1

    .line 1613
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%light"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->phoneMac:Ljava/lang/String;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1616
    .local v0, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 1611
    .end local v0    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v12    # "state":Ljava/lang/String;
    :cond_0
    const-string v12, "open"

    goto :goto_1

    .line 1618
    .restart local v12    # "state":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%light"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1619
    .restart local v1    # "cmd":Ljava/lang/String;
    const-string v5, ""

    .line 1620
    .local v5, "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, ""

    .line 1621
    .local v6, "confirmAfterCmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->handler:Landroid/os/Handler;

    const v8, 0xb156

    iget-boolean v9, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v11

    move-object v4, v1

    move-object v10, p0

    invoke-direct/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 1622
    .local v3, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 1603
    nop

    :pswitch_data_0
    .packed-switch 0x7f070193
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->finish()V

    .line 171
    :goto_0
    return v6

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 169
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1327
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 1328
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1329
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const v5, 0x7f0c0202

    const/4 v4, 0x0

    .line 1303
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 1304
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 1305
    .local v0, "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1306
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 1312
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetInfoOk:Z

    .line 1313
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetBrOk:Z

    .line 1314
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isGetLightOk:Z

    .line 1315
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkData()V

    .line 1322
    const-string v1, "==========1193"

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1323
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 1324
    return-void

    .line 1308
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isActivityOpen:Z

    .line 1340
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStart()V

    .line 1341
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isActivityOpen:Z

    .line 1347
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->delayText:Ljava/lang/String;

    .line 1348
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info_one:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    if-eqz v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->state_info:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    :cond_2
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 1362
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 1491
    return-void
.end method
