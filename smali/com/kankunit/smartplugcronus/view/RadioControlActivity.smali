.class public Lcom/kankunit/smartplugcronus/view/RadioControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RadioControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;,
        Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;
    }
.end annotation


# instance fields
.field addButton:Landroid/widget/ImageButton;

.field autoButton:Landroid/widget/ImageButton;

.field autoButton1:Landroid/widget/ImageButton;

.field autoButton2:Landroid/widget/ImageButton;

.field autoButton3:Landroid/widget/ImageButton;

.field autoButton4:Landroid/widget/ImageButton;

.field autoLayout:Landroid/widget/RelativeLayout;

.field autodefineButton:Landroid/widget/ImageButton;

.field private bitmap:Landroid/graphics/Bitmap;

.field button0:Landroid/widget/ImageButton;

.field button1:Landroid/widget/ImageButton;

.field button2:Landroid/widget/ImageButton;

.field button3:Landroid/widget/ImageButton;

.field button4:Landroid/widget/ImageButton;

.field button5:Landroid/widget/ImageButton;

.field button6:Landroid/widget/ImageButton;

.field button7:Landroid/widget/ImageButton;

.field button8:Landroid/widget/ImageButton;

.field button9:Landroid/widget/ImageButton;

.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelButton:Landroid/widget/Button;

.field cancelImage:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field closevoiceButton:Landroid/widget/ImageButton;

.field private code:I

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field downButton:Landroid/widget/ImageButton;

.field eqButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field minuButton:Landroid/widget/ImageButton;

.field moduleButton:Landroid/widget/ImageButton;

.field numLayout:Z

.field openButton:Landroid/widget/ImageButton;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field rptButton:Landroid/widget/ImageButton;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field stopButton:Landroid/widget/ImageButton;

.field upButton:Landroid/widget/ImageButton;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field waitTextView:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->width:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->height:I

    .line 70
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->numLayout:Z

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 511
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

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

    .line 514
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 515
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 516
    return-void
.end method

.method private emitDelete(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 519
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

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

    .line 522
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#deletekey#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 523
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 524
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 584
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
    .line 588
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 589
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 564
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

    .line 565
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 569
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 570
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    if-nez v9, :cond_0

    .line 572
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v10

    .line 578
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->doReceive(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 395
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "sArr":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    aget-object v4, v3, v6

    const-string v5, "operate#3031#learn#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 401
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 402
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 404
    :cond_2
    aget-object v4, v3, v6

    const-string v5, "check#3031#learn#"

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

    .line 406
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 407
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 408
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 411
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 412
    aget-object v4, v3, v6

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 413
    const-string v4, "Learning error"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 416
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remoteControlId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and buttonEName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 417
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 424
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 425
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 426
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 428
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 429
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 430
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 417
    .end local v1    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 418
    .local v0, "cModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    if-eq v5, v6, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->emitDelete(I)V

    .line 422
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v0}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 610
    return-void
.end method

.method public emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V
    .locals 9
    .param p1, "model"    # Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 329
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 331
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

    .line 332
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

    .line 333
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

    .line 334
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 689
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 690
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 698
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 705
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 706
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonId:I

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->loadButtonName(I)V

    .line 439
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->numLayout:Z

    if-eqz v5, :cond_0

    .line 440
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    const-string v6, "Custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 466
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getCode()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    .line 445
    const-string v5, "x"

    invoke-virtual {p0, v5, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 446
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "x"

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 448
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 449
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 451
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and buttonEName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 452
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 457
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mainLayout:Landroid/view/View;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 458
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 459
    new-instance v5, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;->start()V

    .line 460
    new-instance v5, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;->start()V

    goto :goto_0

    .line 462
    :cond_3
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 463
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->emitCode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v9, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 114
    const v9, 0x7f0300ba

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->setContentView(I)V

    .line 115
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 117
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 119
    new-instance v9, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->handler:Landroid/os/Handler;

    .line 135
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 136
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 137
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "controlId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    .line 139
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v10, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9, v10, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 140
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

    .line 141
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 143
    const v9, 0x7f0700ee

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mainLayout:Landroid/view/View;

    .line 145
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 146
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0300f6

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    .line 147
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xe6

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 149
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f07033c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->waitTextView:Landroid/widget/TextView;

    .line 151
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f070146

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 152
    new-instance v9, Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindowView:Landroid/view/View;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 153
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v10, 0x7f0d00a8

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 155
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020435

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 156
    .local v4, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020424

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 158
    .local v5, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/lit8 v8, v9, 0x2

    .line 159
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    .line 161
    .local v1, "height":I
    const v9, 0x7f0700f1

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 162
    .local v6, "operateLayout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 163
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const v9, 0x7f07020a

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton:Landroid/widget/ImageButton;

    .line 168
    const v9, 0x7f070211

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    .line 169
    const v9, 0x7f070143

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 170
    const v9, 0x7f07021a

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->cancelButton:Landroid/widget/Button;

    .line 172
    const v9, 0x7f0700da

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    const v9, 0x7f070322

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->eqButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->eqButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->eqButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    const v9, 0x7f070323

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->moduleButton:Landroid/widget/ImageButton;

    .line 179
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->moduleButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->moduleButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    const v9, 0x7f070324

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->closevoiceButton:Landroid/widget/ImageButton;

    .line 183
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->closevoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->closevoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    const v9, 0x7f070325

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->rptButton:Landroid/widget/ImageButton;

    .line 186
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->rptButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->rptButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    const v9, 0x7f0700e8

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->addButton:Landroid/widget/ImageButton;

    .line 190
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->addButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->addButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->addButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    const v9, 0x7f07020b

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minuButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minuButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minuButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minuButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    const v9, 0x7f0700f2

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->upButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->upButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->upButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->upButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    const v9, 0x7f0700f3

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->downButton:Landroid/widget/ImageButton;

    .line 202
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->downButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->downButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->downButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    const v9, 0x7f0700f0

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->stopButton:Landroid/widget/ImageButton;

    .line 206
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    const v9, 0x7f0701a5

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button1:Landroid/widget/ImageButton;

    .line 209
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    const v9, 0x7f0701a6

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button2:Landroid/widget/ImageButton;

    .line 212
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    const v9, 0x7f070212

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button3:Landroid/widget/ImageButton;

    .line 215
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    const v9, 0x7f070213

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button4:Landroid/widget/ImageButton;

    .line 218
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 220
    const v9, 0x7f070214

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button5:Landroid/widget/ImageButton;

    .line 221
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button5:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button5:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 223
    const v9, 0x7f070215

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button6:Landroid/widget/ImageButton;

    .line 224
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button6:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button6:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 226
    const v9, 0x7f070216

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button7:Landroid/widget/ImageButton;

    .line 227
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button7:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button7:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    const v9, 0x7f070217

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button8:Landroid/widget/ImageButton;

    .line 230
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button8:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button8:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 232
    const v9, 0x7f070218

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button9:Landroid/widget/ImageButton;

    .line 233
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button9:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button9:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    const v9, 0x7f070219

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button0:Landroid/widget/ImageButton;

    .line 236
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button0:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->button0:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    const v9, 0x7f070326

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton1:Landroid/widget/ImageButton;

    .line 239
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    const v9, 0x7f070327

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton2:Landroid/widget/ImageButton;

    .line 242
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    const v9, 0x7f070328

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton3:Landroid/widget/ImageButton;

    .line 245
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 247
    const v9, 0x7f070329

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton4:Landroid/widget/ImageButton;

    .line 248
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 251
    const v9, 0x7f0700d4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 252
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300c0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 253
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f07013b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 254
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0201

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 256
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 257
    const v9, 0x7f07013c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 258
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c018c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 260
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 261
    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    invoke-direct {v9, v7, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 262
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 264
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 266
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$3;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->autoButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->cancelButton:Landroid/widget/Button;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 358
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 359
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 360
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 362
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 603
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->quit()V

    .line 604
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 605
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonId:I

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->loadButtonName(I)V

    .line 668
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->numLayout:Z

    if-eqz v3, :cond_0

    .line 669
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->buttonName:Ljava/lang/String;

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    :goto_0
    return v7

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getCode()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    .line 674
    const-string v3, "x"

    invoke-virtual {p0, v3, v6}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 676
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 677
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 678
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 680
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mainLayout:Landroid/view/View;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 681
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    .line 682
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;->start()V

    .line 683
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$waitTextThread;->start()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->finish()V

    .line 382
    :goto_0
    return v6

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 378
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 379
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 380
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getResources()Landroid/content/res/Resources;

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
    .line 350
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 351
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 338
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 339
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 340
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 344
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 503
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

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

    .line 506
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 508
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->doReceive(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 539
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

    .line 540
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 544
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 545
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 546
    if-nez v9, :cond_1

    .line 547
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->startOperate(Ljava/lang/String;)V

    .line 557
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 555
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
