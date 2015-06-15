.class public Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "ShowMasterRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;
    }
.end annotation


# instance fields
.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelImage:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field private code:I

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private handler:Landroid/os/Handler;

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field private mainView:Landroid/widget/FrameLayout;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field private port:I

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

    .line 82
    const/16 v0, 0xbd7

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
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

    .line 246
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v0, "fl":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ax is----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ay is----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 250
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    new-instance v1, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;-><init>(Landroid/content/Context;)V

    .line 252
    .local v1, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v1, p3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0, p4}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBackgroundResource(I)V

    .line 254
    invoke-virtual {v1, p7}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamBool(Z)V

    .line 255
    if-eqz p7, :cond_0

    .line 256
    invoke-virtual {v1, p5}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTextColor(I)V

    .line 259
    :cond_0
    invoke-virtual {v1, p5}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {v1, p6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBtnId(I)V

    .line 262
    return-object v1
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 443
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

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

    .line 446
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 447
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 448
    return-void
.end method

.method private emitDelete(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 451
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

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

    .line 454
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#deletekey#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 455
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 456
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 513
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
    .locals 18

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x43ec0000    # 472.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "------ddddd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    const v1, 0x7f0700d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 106
    .local v17, "view":Landroid/view/View;
    const v1, 0x7f07013b

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 111
    const v1, 0x7f07032d

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 112
    .local v16, "updatenameImageView":Landroid/view/View;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    const v1, 0x7f07032e

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 114
    .local v15, "scene_edit":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 119
    const v1, 0x7f07013c

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 124
    const v1, 0x7f0700ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mainLayout:Landroid/view/View;

    .line 126
    const-string v1, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 127
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300f6

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 129
    .local v9, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xe6

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    const v2, 0x7f07033c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->waitTextView:Landroid/widget/TextView;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    const v2, 0x7f070146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 133
    new-instance v1, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindowView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0d00a8

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 136
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v1, 0x7f070143

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mainView:Landroid/widget/FrameLayout;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "controlId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getPort()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    .line 199
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;->getMasterRemoteControlPannelByCpid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v13

    .line 200
    .local v13, "mrcpmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 208
    return-void

    .line 201
    :cond_0
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .line 202
    .local v12, "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getCpid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v2

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v3

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getIcon()I

    move-result v5

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v7

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto()Z

    move-result v8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v14

    .line 204
    .local v14, "pb":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mainView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 495
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 499
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 500
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 501
    if-nez v9, :cond_0

    .line 502
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v10

    .line 507
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->doReceive(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 9
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 322
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "sArr":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    aget-object v4, v3, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "operate#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 328
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 329
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 331
    :cond_2
    aget-object v4, v3, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v7

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v3, v7

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 335
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 338
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 339
    aget-object v4, v3, v7

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    const-string v4, "Learning error"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 343
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remoteControlId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and buttonId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 344
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 351
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 352
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 353
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 354
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 355
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 356
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 357
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 344
    .end local v1    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 345
    .local v0, "cModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    if-eq v5, v6, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->emitDelete(I)V

    .line 349
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v0}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 526
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 364
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 366
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

    .line 367
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

    .line 368
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v8}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 369
    return-void
.end method

.method public getResource(I)I
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 589
    const v0, 0x7f020450

    .line 590
    .local v0, "paramInt":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const v1, 0x7f020338

    if-ne p1, v1, :cond_2

    .line 591
    :cond_0
    const v0, 0x7f020450

    .line 637
    :cond_1
    :goto_0
    return v0

    .line 592
    :cond_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const v1, 0x7f02033b

    if-ne p1, v1, :cond_4

    .line 593
    :cond_3
    const v0, 0x7f020453

    .line 594
    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const v1, 0x7f020348

    if-ne p1, v1, :cond_6

    .line 595
    :cond_5
    const v0, 0x7f020460

    .line 596
    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const v1, 0x7f02033e

    if-ne p1, v1, :cond_8

    .line 597
    :cond_7
    const v0, 0x7f020456

    .line 598
    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-eq p1, v1, :cond_9

    const v1, 0x7f020335

    if-ne p1, v1, :cond_a

    .line 599
    :cond_9
    const v0, 0x7f02044d

    .line 600
    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-eq p1, v1, :cond_b

    const v1, 0x7f02034b

    if-ne p1, v1, :cond_c

    .line 601
    :cond_b
    const v0, 0x7f020463

    .line 602
    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    if-eq p1, v1, :cond_d

    const v1, 0x7f020351

    if-ne p1, v1, :cond_e

    .line 603
    :cond_d
    const v0, 0x7f020469

    .line 604
    goto :goto_0

    :cond_e
    const/16 v1, 0x8

    if-eq p1, v1, :cond_f

    const v1, 0x7f020345

    if-ne p1, v1, :cond_10

    .line 605
    :cond_f
    const v0, 0x7f02045d

    .line 606
    goto :goto_0

    :cond_10
    const/16 v1, 0x9

    if-eq p1, v1, :cond_11

    const v1, 0x7f02034e

    if-ne p1, v1, :cond_12

    .line 607
    :cond_11
    const v0, 0x7f020466

    .line 608
    goto :goto_0

    :cond_12
    const/16 v1, 0xa

    if-eq p1, v1, :cond_13

    const v1, 0x7f020327

    if-ne p1, v1, :cond_14

    .line 609
    :cond_13
    const v0, 0x7f02043f

    .line 610
    goto :goto_0

    :cond_14
    const/16 v1, 0xb

    if-eq p1, v1, :cond_15

    const v1, 0x7f020328

    if-ne p1, v1, :cond_16

    .line 611
    :cond_15
    const v0, 0x7f020440

    .line 612
    goto :goto_0

    :cond_16
    const/16 v1, 0xc

    if-eq p1, v1, :cond_17

    const v1, 0x7f02032d

    if-ne p1, v1, :cond_18

    .line 613
    :cond_17
    const v0, 0x7f020445

    .line 614
    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd

    if-eq p1, v1, :cond_19

    const v1, 0x7f02032e

    if-ne p1, v1, :cond_1a

    .line 615
    :cond_19
    const v0, 0x7f020446

    .line 616
    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xe

    if-eq p1, v1, :cond_1b

    const v1, 0x7f02032f

    if-ne p1, v1, :cond_1c

    .line 617
    :cond_1b
    const v0, 0x7f020447

    .line 618
    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xf

    if-eq p1, v1, :cond_1d

    const v1, 0x7f020330

    if-ne p1, v1, :cond_1e

    .line 619
    :cond_1d
    const v0, 0x7f020448

    .line 620
    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x10

    if-eq p1, v1, :cond_1f

    const v1, 0x7f020331

    if-ne p1, v1, :cond_20

    .line 621
    :cond_1f
    const v0, 0x7f020449

    .line 622
    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x11

    if-eq p1, v1, :cond_21

    const v1, 0x7f020332

    if-ne p1, v1, :cond_22

    .line 623
    :cond_21
    const v0, 0x7f02044a

    .line 624
    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x12

    if-eq p1, v1, :cond_23

    const v1, 0x7f020333

    if-ne p1, v1, :cond_24

    .line 625
    :cond_23
    const v0, 0x7f02044b

    .line 626
    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x13

    if-eq p1, v1, :cond_25

    const v1, 0x7f020334

    if-ne p1, v1, :cond_26

    .line 627
    :cond_25
    const v0, 0x7f02044c

    .line 628
    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x14

    if-eq p1, v1, :cond_27

    const v1, 0x7f020329

    if-ne p1, v1, :cond_28

    .line 629
    :cond_27
    const v0, 0x7f020441

    .line 630
    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x15

    if-eq p1, v1, :cond_29

    const v1, 0x7f02032a

    if-ne p1, v1, :cond_2a

    .line 631
    :cond_29
    const v0, 0x7f020442

    .line 632
    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x16

    if-eq p1, v1, :cond_2b

    const v1, 0x7f02032b

    if-ne p1, v1, :cond_2c

    .line 633
    :cond_2b
    const v0, 0x7f020443

    .line 634
    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x17

    if-eq p1, v1, :cond_2d

    const v1, 0x7f02032c

    if-ne p1, v1, :cond_1

    .line 635
    :cond_2d
    const v0, 0x7f020444

    goto/16 :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 552
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 553
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 561
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 568
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 569
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 373
    move-object v3, p1

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 374
    .local v3, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonId:I

    .line 375
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonName:Ljava/lang/String;

    .line 376
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonName:Ljava/lang/String;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonEName:Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getCode()I

    move-result v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    .line 378
    const-string v6, "x"

    invoke-virtual {p0, v6, v10}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 379
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "x"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 380
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 381
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 382
    .local v5, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 384
    .end local v5    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "remoteControlId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and buttonId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 385
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 390
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mainLayout:Landroid/view/View;

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v8, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 391
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 392
    new-instance v6, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;->start()V

    .line 393
    new-instance v6, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;->start()V

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_2
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 396
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->emitCode(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 217
    const v0, 0x7f0300d7

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->setContentView(I)V

    .line 218
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 219
    new-instance v0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->handler:Landroid/os/Handler;

    .line 235
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 237
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 239
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 240
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "controlId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 243
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->initView()V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 285
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 286
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 287
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 289
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 519
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->quit()V

    .line 520
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 521
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 533
    move-object v1, p1

    check-cast v1, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 534
    .local v1, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v4

    iput v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonId:I

    .line 535
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonName:Ljava/lang/String;

    .line 536
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonName:Ljava/lang/String;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->buttonEName:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getCode()I

    move-result v4

    iput v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    .line 538
    const-string v4, "x"

    invoke-virtual {p0, v4, v7}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 539
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "x"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 540
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 541
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 542
    .local v3, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 544
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mainLayout:Landroid/view/View;

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 545
    iput-boolean v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    .line 546
    new-instance v4, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;->start()V

    .line 547
    new-instance v4, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$waitTextThread;->start()V

    .line 548
    return v8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item id is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->finish()V

    .line 311
    :goto_0
    return v6

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 307
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 309
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getResources()Landroid/content/res/Resources;

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
    .line 278
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 279
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 280
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 267
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 268
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 269
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 435
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

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

    .line 438
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 440
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->doReceive(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 471
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 475
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 476
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 477
    if-nez v9, :cond_1

    .line 478
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->startOperate(Ljava/lang/String;)V

    .line 487
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 485
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
