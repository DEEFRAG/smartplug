.class public Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "ShowMasterRCRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$PlayThread;,
        Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$sendMessageThread;
    }
.end annotation


# instance fields
.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelButton:Landroid/widget/Button;

.field cancelImage:Landroid/widget/ImageButton;

.field private code:I

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private handler:Landroid/os/Handler;

.field isPlay:Z

.field isRecord:Z

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field private mainView:Landroid/widget/FrameLayout;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field paramButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/customview/ParamButton;",
            ">;"
        }
    .end annotation
.end field

.field playButton:Landroid/widget/ImageButton;

.field private port:I

.field recordButton:Landroid/widget/ImageButton;

.field private recordList:Ljava/util/List;
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

.field waitPressLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isWait:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    .line 78
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isPlay:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

    .line 89
    const/16 v0, 0xbd7

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->port:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->paramButtons:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    return-void
.end method

.method private createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "b"    # Z

    .prologue
    const v4, 0x7f0a0102

    .line 260
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v0, "fl":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ax is----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ay is----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 264
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 265
    new-instance v1, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;-><init>(Landroid/content/Context;)V

    .line 266
    .local v1, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v1, p3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v1, p7}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamBool(Z)V

    .line 268
    if-eqz p7, :cond_0

    .line 269
    invoke-virtual {v1, p5}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTextColor(I)V

    .line 272
    :cond_0
    invoke-virtual {p0, p4}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBackgroundResource(I)V

    .line 273
    invoke-virtual {v1, p5}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {v1, p6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBtnId(I)V

    .line 276
    return-object v1
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 484
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

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

    .line 487
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 489
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 472
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 12

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/high16 v1, 0x43ec0000    # 472.0f

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "------ddddd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    const v0, 0x7f070143

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 99
    const v0, 0x7f070146

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mainView:Landroid/widget/FrameLayout;

    .line 110
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "controlId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->port:I

    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 115
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;->getMasterRemoteControlPannelByCpid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    .line 116
    .local v10, "mrcpmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 124
    return-void

    .line 117
    :cond_0
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .line 118
    .local v9, "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getCpid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v1

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v2

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getIcon()I

    move-result v4

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v6

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v11

    .line 120
    .local v11, "pb":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v11, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mainView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->paramButtons:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addRecordButton(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_0

    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "buttonName"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v2, "buttonId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    return-void

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move-object v0, p1

    .line 316
    check-cast v0, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 317
    .local v0, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "buttonName"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "buttonId"

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public check(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 534
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 535
    if-nez v1, :cond_0

    .line 536
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 537
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 431
    const-string v3, "msgBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "body":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "sArr":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    aget-object v3, v2, v5

    const-string v4, "operate#3031#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 440
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    :cond_2
    aget-object v3, v2, v5

    const-string v4, "check#3031#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v5

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 445
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 446
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 447
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isWait:Z

    .line 449
    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 453
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 454
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 456
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->code:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 457
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 458
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 555
    return-void
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 12

    .prologue
    .line 372
    const-string v5, ""

    .line 373
    .local v5, "recordIdx":Ljava/lang/String;
    const/4 v2, 0x0

    .line 374
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 390
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v10, v11}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 391
    .local v7, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 392
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 400
    return-object v5

    .line 375
    .end local v7    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 376
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "buttonName":Ljava/lang/String;
    const-string v10, "buttonId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 378
    .local v0, "buttonId":I
    const-string v10, "time"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 382
    .local v8, "time":J
    add-int/lit8 v2, v2, 0x1

    .line 383
    new-instance v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 384
    .local v6, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 385
    iget v10, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 386
    invoke-virtual {v6, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v6, v8, v9}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V

    .line 388
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v10, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "buttonId":I
    .end local v1    # "buttonName":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    .end local v8    # "time":J
    .restart local v7    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 394
    .restart local v6    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v3, v10, :cond_2

    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getResource(I)I
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 602
    const v0, 0x7f020450

    .line 603
    .local v0, "paramInt":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const v1, 0x7f020338

    if-ne p1, v1, :cond_2

    .line 604
    :cond_0
    const v0, 0x7f020450

    .line 650
    :cond_1
    :goto_0
    return v0

    .line 605
    :cond_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const v1, 0x7f02033b

    if-ne p1, v1, :cond_4

    .line 606
    :cond_3
    const v0, 0x7f020453

    .line 607
    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const v1, 0x7f020348

    if-ne p1, v1, :cond_6

    .line 608
    :cond_5
    const v0, 0x7f020460

    .line 609
    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const v1, 0x7f02033e

    if-ne p1, v1, :cond_8

    .line 610
    :cond_7
    const v0, 0x7f020456

    .line 611
    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-eq p1, v1, :cond_9

    const v1, 0x7f020335

    if-ne p1, v1, :cond_a

    .line 612
    :cond_9
    const v0, 0x7f02044d

    .line 613
    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-eq p1, v1, :cond_b

    const v1, 0x7f02034b

    if-ne p1, v1, :cond_c

    .line 614
    :cond_b
    const v0, 0x7f020463

    .line 615
    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    if-eq p1, v1, :cond_d

    const v1, 0x7f020351

    if-ne p1, v1, :cond_e

    .line 616
    :cond_d
    const v0, 0x7f020469

    .line 617
    goto :goto_0

    :cond_e
    const/16 v1, 0x8

    if-eq p1, v1, :cond_f

    const v1, 0x7f020345

    if-ne p1, v1, :cond_10

    .line 618
    :cond_f
    const v0, 0x7f02045d

    .line 619
    goto :goto_0

    :cond_10
    const/16 v1, 0x9

    if-eq p1, v1, :cond_11

    const v1, 0x7f02034e

    if-ne p1, v1, :cond_12

    .line 620
    :cond_11
    const v0, 0x7f020466

    .line 621
    goto :goto_0

    :cond_12
    const/16 v1, 0xa

    if-eq p1, v1, :cond_13

    const v1, 0x7f020327

    if-ne p1, v1, :cond_14

    .line 622
    :cond_13
    const v0, 0x7f02043f

    .line 623
    goto :goto_0

    :cond_14
    const/16 v1, 0xb

    if-eq p1, v1, :cond_15

    const v1, 0x7f020328

    if-ne p1, v1, :cond_16

    .line 624
    :cond_15
    const v0, 0x7f020440

    .line 625
    goto :goto_0

    :cond_16
    const/16 v1, 0xc

    if-eq p1, v1, :cond_17

    const v1, 0x7f02032d

    if-ne p1, v1, :cond_18

    .line 626
    :cond_17
    const v0, 0x7f020445

    .line 627
    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd

    if-eq p1, v1, :cond_19

    const v1, 0x7f02032e

    if-ne p1, v1, :cond_1a

    .line 628
    :cond_19
    const v0, 0x7f020446

    .line 629
    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xe

    if-eq p1, v1, :cond_1b

    const v1, 0x7f02032f

    if-ne p1, v1, :cond_1c

    .line 630
    :cond_1b
    const v0, 0x7f020447

    .line 631
    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xf

    if-eq p1, v1, :cond_1d

    const v1, 0x7f020330

    if-ne p1, v1, :cond_1e

    .line 632
    :cond_1d
    const v0, 0x7f020448

    .line 633
    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x10

    if-eq p1, v1, :cond_1f

    const v1, 0x7f020331

    if-ne p1, v1, :cond_20

    .line 634
    :cond_1f
    const v0, 0x7f020449

    .line 635
    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x11

    if-eq p1, v1, :cond_21

    const v1, 0x7f020332

    if-ne p1, v1, :cond_22

    .line 636
    :cond_21
    const v0, 0x7f02044a

    .line 637
    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x12

    if-eq p1, v1, :cond_23

    const v1, 0x7f020333

    if-ne p1, v1, :cond_24

    .line 638
    :cond_23
    const v0, 0x7f02044b

    .line 639
    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x13

    if-eq p1, v1, :cond_25

    const v1, 0x7f020334

    if-ne p1, v1, :cond_26

    .line 640
    :cond_25
    const v0, 0x7f02044c

    .line 641
    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x14

    if-eq p1, v1, :cond_27

    const v1, 0x7f020329

    if-ne p1, v1, :cond_28

    .line 642
    :cond_27
    const v0, 0x7f020441

    .line 643
    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x15

    if-eq p1, v1, :cond_29

    const v1, 0x7f02032a

    if-ne p1, v1, :cond_2a

    .line 644
    :cond_29
    const v0, 0x7f020442

    .line 645
    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x16

    if-eq p1, v1, :cond_2b

    const v1, 0x7f02032b

    if-ne p1, v1, :cond_2c

    .line 646
    :cond_2b
    const v0, 0x7f020443

    .line 647
    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x17

    if-eq p1, v1, :cond_2d

    const v1, 0x7f02032c

    if-ne p1, v1, :cond_1

    .line 648
    :cond_2d
    const v0, 0x7f020444

    goto/16 :goto_0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 356
    const-string v3, ""

    .line 357
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 365
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 368
    :cond_0
    return-object v3

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 359
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "begin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 357
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 564
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 565
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 573
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 580
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 581
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 582
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    return-void
.end method

.method public isExist()Z
    .locals 5

    .prologue
    .line 464
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remoteControlId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and buttonEName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 465
    .local v0, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 466
    :cond_0
    const/4 v1, 0x0

    .line 468
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 406
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isRecord:Z

    if-nez v6, :cond_0

    .line 427
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string v6, "x"

    invoke-virtual {p0, v6, v10}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 410
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "x"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 411
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 412
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 413
    .local v5, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v5    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    move-object v3, p1

    .line 415
    check-cast v3, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 416
    .local v3, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonId:I

    .line 417
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonName:Ljava/lang/String;

    .line 418
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonName:Ljava/lang/String;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonEName:Ljava/lang/String;

    .line 419
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "remoteControlId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and buttonId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->buttonId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 420
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 421
    :cond_2
    const-string v6, "Button did not Learn"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    :cond_3
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 424
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->emitCode(I)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->addRecordButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v5, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 152
    const v5, 0x7f0300d8

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->setContentView(I)V

    .line 153
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 154
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 155
    new-instance v5, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->handler:Landroid/os/Handler;

    .line 194
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 195
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 196
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "controlId"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    .line 197
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v5, v7, v8}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 199
    const v5, 0x7f0700ec

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 200
    const v5, 0x7f0700ed

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 201
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 203
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$4;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "recordIdx"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "recordIdx"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "recordIdx":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "idx":[Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 253
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200b8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 254
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 257
    .end local v1    # "idx":[Ljava/lang/String;
    .end local v3    # "recordIdx":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->initView()V

    .line 258
    return-void

    .line 245
    .restart local v1    # "idx":[Ljava/lang/String;
    .restart local v3    # "recordIdx":Ljava/lang/String;
    :cond_1
    aget-object v0, v1, v5

    .line 246
    .local v0, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v8, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v6, v0, v8}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 247
    .local v4, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "buttonName"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v6, "buttonId"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v6, "time"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 328
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 330
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 331
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 332
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isWait:Z

    .line 548
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->quit()V

    .line 549
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 550
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->finish()V

    .line 338
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 342
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->finish()V

    .line 350
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 141
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 128
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 129
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 130
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public quit()V
    .locals 5

    .prologue
    .line 476
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%operate#3031#quit%uart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "message":Ljava/lang/String;
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 560
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%operate#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 509
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 510
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 511
    if-nez v1, :cond_1

    .line 512
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 521
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 516
    .restart local v1    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    .end local v1    # "b":Z
    :catch_0
    move-exception v2

    .line 519
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
