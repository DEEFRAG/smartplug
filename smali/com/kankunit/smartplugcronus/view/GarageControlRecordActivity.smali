.class public Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "GarageControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$PlayThread;,
        Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$waitTextThread;
    }
.end annotation


# instance fields
.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelImage:Landroid/widget/ImageButton;

.field closeButton:Landroid/widget/ImageButton;

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

.field mainLayout:Landroid/view/View;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:I

.field moduleButton:Landroid/widget/ImageButton;

.field openButton:Landroid/widget/ImageButton;

.field playButton:Landroid/widget/ImageButton;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

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

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field stopButton:Landroid/widget/ImageButton;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->model:I

    .line 62
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    .line 90
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isPlay:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 490
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 493
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3035#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 494
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 495
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 587
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
    .line 591
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonName:Ljava/lang/String;

    .line 594
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 598
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addRecordButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "buttonName"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "buttonId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public check(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 535
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

    .line 536
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3035#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 540
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 541
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 542
    if-nez v1, :cond_0

    .line 543
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 544
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 557
    const-string v3, "msgBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "body":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "sArr":[Ljava/lang/String;
    aget-object v3, v2, v5

    const-string v4, "operate#3035#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 562
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 563
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 565
    :cond_0
    aget-object v3, v2, v5

    const-string v4, "check#3035#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v5

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 568
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 569
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 572
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    .line 573
    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    :cond_2
    :goto_0
    return-void

    .line 576
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 577
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 578
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 580
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->code:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 581
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 582
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 613
    return-void
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 12

    .prologue
    .line 427
    const-string v5, ""

    .line 428
    .local v5, "recordIdx":Ljava/lang/String;
    const/4 v2, 0x0

    .line 429
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 445
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v10, v11}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 446
    .local v7, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 447
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 455
    return-object v5

    .line 430
    .end local v7    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 431
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "buttonName":Ljava/lang/String;
    const-string v10, "buttonId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 433
    .local v0, "buttonId":I
    const-string v10, "time"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 437
    .local v8, "time":J
    add-int/lit8 v2, v2, 0x1

    .line 438
    new-instance v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 439
    .local v6, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 440
    iget v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 441
    invoke-virtual {v6, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v6, v8, v9}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V

    .line 443
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v10, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
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

    .line 449
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

    .line 450
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v3, v10, :cond_2

    .line 451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 447
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 411
    const-string v3, ""

    .line 412
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 420
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 423
    :cond_0
    return-object v3

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 414
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "begin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
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
    .line 624
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 625
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 633
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 640
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 641
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 642
    new-instance v3, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 461
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isRecord:Z

    if-nez v5, :cond_0

    .line 480
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v5, "x"

    invoke-virtual {p0, v5, v9}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 465
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "x"

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 466
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 467
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 468
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 470
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonId:I

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->loadButtonName(I)V

    .line 472
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and buttonEName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 473
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 474
    :cond_2
    const-string v5, "Button did not Learn"

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 476
    :cond_3
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 477
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->emitCode(I)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    const v8, 0x7f03007b

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->setContentView(I)V

    .line 108
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 109
    new-instance v8, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v8, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 110
    const v8, 0x7f0700ee

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mainLayout:Landroid/view/View;

    .line 112
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 113
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0300f6

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    .line 114
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v8, 0xe6

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 116
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    const v9, 0x7f07033c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->waitTextView:Landroid/widget/TextView;

    .line 118
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    const v9, 0x7f070146

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 119
    new-instance v8, Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindowView:Landroid/view/View;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 120
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v9, 0x7f0d00a8

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 121
    new-instance v8, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->handler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 156
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 157
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 158
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "controlId"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    .line 159
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v9, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v8, v9, v10}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 160
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

    .line 161
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 162
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getModel()I

    move-result v8

    iput v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->model:I

    .line 164
    const v8, 0x7f0700da

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v8, 0x7f070141

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->closeButton:Landroid/widget/ImageButton;

    .line 167
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v8, 0x7f0700f0

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->stopButton:Landroid/widget/ImageButton;

    .line 169
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v8, 0x7f0700ec

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 172
    const v8, 0x7f0700ed

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 175
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$2;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$3;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "recordIdx"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "recordIdx"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "recordIdx":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "idx":[Ljava/lang/String;
    array-length v9, v2

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_1

    .line 226
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v9, 0x7f0200b8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 227
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 230
    .end local v2    # "idx":[Ljava/lang/String;
    .end local v5    # "recordIdx":Ljava/lang/String;
    :cond_0
    const v8, 0x7f0700d4

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 231
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0300cb

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 232
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f07013b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 233
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0201

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 235
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 236
    const v8, 0x7f07013c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 237
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c018c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 239
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 240
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x1

    invoke-direct {v8, v7, v9, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    .line 241
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 243
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 245
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$4;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$5;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v8, 0x7f070142

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->moduleButton:Landroid/widget/ImageButton;

    .line 273
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->moduleButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v8, 0x7f070143

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 276
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void

    .line 218
    .end local v7    # "view":Landroid/view/View;
    .restart local v2    # "idx":[Ljava/lang/String;
    .restart local v5    # "recordIdx":Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v8

    .line 219
    .local v1, "id":Ljava/lang/String;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v10, v1, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 220
    .local v6, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v10, "buttonId"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v10, "time"

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 384
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 386
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 387
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 388
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    .line 605
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->quit()V

    .line 606
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 607
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->finish()V

    .line 395
    const/4 v1, 0x1

    .line 407
    :goto_0
    return v1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 399
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 401
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 406
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->finish()V

    .line 407
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 377
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 364
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 365
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 366
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 373
    return-void
.end method

.method public quit()V
    .locals 5

    .prologue
    .line 482
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 485
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%operate#3035#quit%uart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "message":Ljava/lang/String;
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 619
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 510
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

    .line 511
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%operate#3035#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 515
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 516
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 517
    if-nez v1, :cond_1

    .line 518
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 528
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 522
    .restart local v1    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v1    # "b":Z
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
