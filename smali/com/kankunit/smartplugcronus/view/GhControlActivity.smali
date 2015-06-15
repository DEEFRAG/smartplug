.class public Lcom/kankunit/smartplugcronus/view/GhControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "GhControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;,
        Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/GhControlActivity$waitTextThread;
    }
.end annotation


# instance fields
.field add2Button:Landroid/widget/ImageButton;

.field addButton:Landroid/widget/ImageButton;

.field autoButton:Landroid/widget/ImageButton;

.field autoButton1:Landroid/widget/ImageButton;

.field autoButton2:Landroid/widget/ImageButton;

.field autoButton3:Landroid/widget/ImageButton;

.field autoButton4:Landroid/widget/ImageButton;

.field autoLayout:Landroid/widget/RelativeLayout;

.field autodefineButton:Landroid/widget/ImageButton;

.field avButton:Landroid/widget/ImageButton;

.field backButton:Landroid/widget/ImageButton;

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

.field private code:I

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field downButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field homeButton:Landroid/widget/ImageButton;

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field minu2Button:Landroid/widget/ImageButton;

.field minuButton:Landroid/widget/ImageButton;

.field numLayout:Z

.field okButton:Landroid/widget/ImageButton;

.field open2Button:Landroid/widget/ImageButton;

.field openButton:Landroid/widget/ImageButton;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field upButton:Landroid/widget/ImageButton;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field waitTextView:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 64
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->width:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->height:I

    .line 69
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->numLayout:Z

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/GhControlActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 477
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

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

    .line 480
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 482
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 483
    return-void
.end method

.method private emitCode(Ljava/lang/String;)V
    .locals 9
    .param p1, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

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

    .line 430
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#gehua_tv_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 432
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 543
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
    .line 547
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    .line 554
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 523
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

    .line 524
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 528
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 529
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 530
    if-nez v9, :cond_0

    .line 531
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v10

    .line 537
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->doReceive(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 352
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "sArr":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    aget-object v4, v3, v6

    const-string v5, "operate#3031#learn#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 358
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 359
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
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

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 364
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 365
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 367
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 368
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    .line 369
    aget-object v4, v3, v6

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 370
    const-string v4, "Learning error"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remoteControlId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and buttonEName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 374
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 378
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 379
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 381
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->code:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 382
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    invoke-virtual {v1, v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 383
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v4, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 374
    .end local v1    # "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 375
    .local v0, "cModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v0}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 569
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 649
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 650
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0181

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 658
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 666
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonId:I

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->loadButtonName(I)V

    .line 392
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->numLayout:Z

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getCode()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->code:I

    .line 398
    const-string v3, "x"

    invoke-virtual {p0, v3, v5}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 400
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 401
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 402
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 419
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    const-string v4, "av"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonEName:Ljava/lang/String;

    const-string v4, "tv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    :cond_2
    const-string v3, "Button undefined"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->emitCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v9, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 113
    const v9, 0x7f03007c

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->setContentView(I)V

    .line 114
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 116
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 118
    new-instance v9, Lcom/kankunit/smartplugcronus/view/GhControlActivity$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->handler:Landroid/os/Handler;

    .line 134
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 135
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 136
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 137
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "controlId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    .line 138
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v10, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9, v10, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 139
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

    .line 140
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 142
    const v9, 0x7f0700ee

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mainLayout:Landroid/view/View;

    .line 144
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 145
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0300f6

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    .line 146
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xe6

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f07033c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->waitTextView:Landroid/widget/TextView;

    .line 150
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f070146

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 151
    new-instance v9, Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindowView:Landroid/view/View;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 152
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v10, 0x7f0d00a8

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 154
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020435

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 155
    .local v4, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020424

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 157
    .local v5, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/lit8 v8, v9, 0x2

    .line 158
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    .line 160
    .local v1, "height":I
    const v9, 0x7f0700f1

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 161
    .local v6, "operateLayout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 162
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const v9, 0x7f07020a

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->autoButton:Landroid/widget/ImageButton;

    .line 167
    const v9, 0x7f070211

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->autoLayout:Landroid/widget/RelativeLayout;

    .line 168
    const v9, 0x7f070143

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 169
    const v9, 0x7f07021a

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->cancelButton:Landroid/widget/Button;

    .line 171
    const v9, 0x7f0700da

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v9, 0x7f070208

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->homeButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->homeButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v9, 0x7f070209

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->avButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->avButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v9, 0x7f0700e8

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->addButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->addButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v9, 0x7f07020b

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minuButton:Landroid/widget/ImageButton;

    .line 180
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minuButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v9, 0x7f07020c

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->open2Button:Landroid/widget/ImageButton;

    .line 182
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->open2Button:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v9, 0x7f07020e

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->backButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v9, 0x7f07020f

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->add2Button:Landroid/widget/ImageButton;

    .line 186
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->add2Button:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->add2Button:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    const v9, 0x7f070210

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minu2Button:Landroid/widget/ImageButton;

    .line 189
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minu2Button:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minu2Button:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    const v9, 0x7f0700f2

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->upButton:Landroid/widget/ImageButton;

    .line 192
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->upButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->upButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    const v9, 0x7f0700f3

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->downButton:Landroid/widget/ImageButton;

    .line 195
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->downButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->downButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    const v9, 0x7f0700f6

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->okButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->okButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v9, 0x7f0701a5

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button1:Landroid/widget/ImageButton;

    .line 200
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v9, 0x7f0701a6

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button2:Landroid/widget/ImageButton;

    .line 202
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v9, 0x7f070212

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button3:Landroid/widget/ImageButton;

    .line 204
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v9, 0x7f070213

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button4:Landroid/widget/ImageButton;

    .line 206
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v9, 0x7f070214

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button5:Landroid/widget/ImageButton;

    .line 208
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button5:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v9, 0x7f070215

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button6:Landroid/widget/ImageButton;

    .line 210
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button6:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v9, 0x7f070216

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button7:Landroid/widget/ImageButton;

    .line 212
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button7:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v9, 0x7f070217

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button8:Landroid/widget/ImageButton;

    .line 214
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button8:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v9, 0x7f070218

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button9:Landroid/widget/ImageButton;

    .line 216
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button9:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v9, 0x7f070219

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button0:Landroid/widget/ImageButton;

    .line 218
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->button0:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v9, 0x7f0700d4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 222
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300c0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 223
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f07013b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 224
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0201

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 226
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 227
    const v9, 0x7f07013c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 228
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c018c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 230
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 231
    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    invoke-direct {v9, v7, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 232
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 234
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 236
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->autoButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$4;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->cancelButton:Landroid/widget/Button;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$5;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 316
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 317
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 319
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 320
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    .line 562
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->quit()V

    .line 563
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 564
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonId:I

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->loadButtonName(I)V

    .line 628
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->numLayout:Z

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->buttonName:Ljava/lang/String;

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    :goto_0
    return v7

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getCode()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->code:I

    .line 634
    const-string v3, "x"

    invoke-virtual {p0, v3, v6}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 635
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 636
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 637
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 638
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 640
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mainLayout:Landroid/view/View;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 641
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    .line 642
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;->start()V

    .line 643
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GhControlActivity$waitTextThread;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/GhControlActivity$waitTextThread;->start()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->finish()V

    .line 340
    :goto_0
    return v6

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 334
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 336
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 337
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 338
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getResources()Landroid/content/res/Resources;

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
    .line 309
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 310
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 297
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 298
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 299
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 306
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 469
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

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

    .line 472
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 474
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->doReceive(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 498
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

    .line 499
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 503
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 504
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 505
    if-nez v9, :cond_1

    .line 506
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->startOperate(Ljava/lang/String;)V

    .line 516
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 510
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 514
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
