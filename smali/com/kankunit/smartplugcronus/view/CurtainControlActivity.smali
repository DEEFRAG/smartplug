.class public Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "CurtainControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;
    }
.end annotation


# instance fields
.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelImage:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field closeButton:Landroid/widget/ImageButton;

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

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:I

.field moduleButton:Landroid/widget/ImageButton;

.field openButton:Landroid/widget/ImageButton;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field stopButton:Landroid/widget/ImageButton;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    return v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 368
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

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

    .line 371
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3035#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 372
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 373
    return-void
.end method

.method private emitDelete(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 486
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

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

    .line 489
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3035#deletekey#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 490
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 491
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 494
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private loadButtonName(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonName:Ljava/lang/String;

    .line 501
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 413
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

    .line 414
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 418
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 419
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 420
    if-nez v9, :cond_0

    .line 421
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v10

    .line 427
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 433
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->doReceive(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 439
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "sArr":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    aget-object v4, v3, v6

    const-string v5, "operate#3035#learn#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 445
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 446
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 448
    :cond_2
    aget-object v4, v3, v6

    const-string v5, "check#3035#learn#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v6

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v3, v6

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 451
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 452
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 454
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 455
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 456
    aget-object v4, v3, v6

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    const-string v4, "Learning error"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remoteControlId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and buttonEName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 461
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 468
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 469
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 470
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 471
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 472
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 473
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 474
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 476
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getIsLearn()I

    move-result v4

    if-nez v4, :cond_5

    .line 477
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setModel(I)V

    .line 478
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setIsLearn(I)V

    .line 479
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v4, v5}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 481
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->moduleButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 461
    .end local v1    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 462
    .local v0, "cModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    if-eq v5, v6, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->emitDelete(I)V

    .line 466
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v0}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 520
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 273
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 275
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

    .line 276
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%operate#"

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

    .line 277
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

    .line 278
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 547
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0189

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 556
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 564
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonId:I

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->loadButtonName(I)V

    .line 336
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getCode()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    .line 337
    const-string v5, "x"

    invoke-virtual {p0, v5, v9}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 338
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "x"

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 339
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 340
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 341
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 343
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and buttonEName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 344
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 349
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mainLayout:Landroid/view/View;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 350
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 351
    new-instance v5, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;->start()V

    .line 352
    new-instance v5, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;->start()V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_2
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 355
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->emitCode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 97
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    new-instance v3, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v3, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 103
    const v3, 0x7f030049

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->setContentView(I)V

    .line 104
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 106
    const v3, 0x7f0700ee

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mainLayout:Landroid/view/View;

    .line 108
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300f6

    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    .line 110
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xe6

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 112
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    const v4, 0x7f07033c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->waitTextView:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    const v4, 0x7f070146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 115
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindowView:Landroid/view/View;

    invoke-direct {v3, v4, v5, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 116
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v4, 0x7f0d00a8

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 117
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->handler:Landroid/os/Handler;

    .line 132
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 134
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 135
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 136
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 137
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "controlId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    .line 138
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 139
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 141
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getModel()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    .line 143
    const v3, 0x7f0700da

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 144
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    const v3, 0x7f070141

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    .line 147
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    const v3, 0x7f0700f0

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->stopButton:Landroid/widget/ImageButton;

    .line 150
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    const v3, 0x7f0700d4

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 154
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c0

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f07013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 156
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 158
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 159
    const v3, 0x7f07013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 160
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c018c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 162
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 163
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 164
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 166
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 168
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v3, 0x7f070142

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->moduleButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->moduleButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->model:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 216
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->openButton:Landroid/widget/ImageButton;

    const v4, 0x7f02012c

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 217
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->closeButton:Landroid/widget/ImageButton;

    const v4, 0x7f020129

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getIsLearn()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 220
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->moduleButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    :cond_1
    const v3, 0x7f070143

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 225
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 303
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 304
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 306
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 309
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 512
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->quit()V

    .line 513
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 514
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->buttonId:I

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->loadButtonName(I)V

    .line 531
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getCode()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    .line 532
    const-string v3, "x"

    invoke-virtual {p0, v3, v6}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 533
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 534
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 535
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 536
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 538
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mainLayout:Landroid/view/View;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 539
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 540
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;->start()V

    .line 541
    new-instance v3, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$waitTextThread;->start()V

    .line 542
    return v7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->finish()V

    .line 329
    :goto_0
    return v6

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 325
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 327
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getResources()Landroid/content/res/Resources;

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
    .line 296
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 297
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 298
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 282
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 283
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 284
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 360
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

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

    .line 363
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3035#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 365
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->doReceive(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 388
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

    .line 389
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 393
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 394
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    if-nez v9, :cond_1

    .line 396
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->startOperate(Ljava/lang/String;)V

    .line 406
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 404
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
