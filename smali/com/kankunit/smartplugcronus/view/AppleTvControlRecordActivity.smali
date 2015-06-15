.class public Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AppleTvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;,
        Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$PlayThread;,
        Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$waitTextThread;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelImage:Landroid/widget/ImageButton;

.field private code:I

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field downButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field isPlay:Z

.field isRecord:Z

.field isWait:Z

.field leftButton:Landroid/widget/ImageButton;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field menuButton:Landroid/widget/ImageButton;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field okButton:Landroid/widget/ImageButton;

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

.field rightButton:Landroid/widget/ImageButton;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field stopButton:Landroid/widget/ImageButton;

.field upButton:Landroid/widget/ImageButton;

.field waitTextView:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 62
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->width:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->height:I

    .line 64
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isPlay:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mac:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private emitCode(Ljava/lang/String;)V
    .locals 9
    .param p1, "buttonName"    # Ljava/lang/String;

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

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mac:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#apple_tv_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 516
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 619
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
    .line 623
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonName:Ljava/lang/String;

    .line 626
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 630
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addRecordButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "buttonName"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "buttonEname"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "buttonId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method public check(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 599
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

    .line 600
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 604
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 605
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 606
    if-nez v1, :cond_0

    .line 607
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 412
    const-string v3, "msgBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "body":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "sArr":[Ljava/lang/String;
    aget-object v3, v2, v5

    const-string v4, "operate#3031#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 417
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 418
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 420
    :cond_0
    aget-object v3, v2, v5

    const-string v4, "check#3031#learn#"

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

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 423
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 424
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 426
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 427
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    .line 428
    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    :cond_2
    :goto_0
    return-void

    .line 431
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 432
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 433
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 435
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->code:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 436
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 437
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 646
    return-void
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 13

    .prologue
    .line 459
    const-string v6, ""

    .line 460
    .local v6, "recordIdx":Ljava/lang/String;
    const/4 v3, 0x0

    .line 461
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_0

    .line 479
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v12, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v11, v12}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 480
    .local v8, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v8, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 481
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_1

    .line 489
    return-object v6

    .line 462
    .end local v8    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 463
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "buttonName"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "buttonName":Ljava/lang/String;
    const-string v11, "buttonEname"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "buttonEname":Ljava/lang/String;
    const-string v11, "buttonId"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 466
    .local v1, "buttonId":I
    const-string v11, "time"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 470
    .local v9, "time":J
    add-int/lit8 v3, v3, 0x1

    .line 471
    new-instance v7, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 472
    .local v7, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v7, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 473
    iget v11, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    invoke-virtual {v7, v11}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 474
    invoke-virtual {v7, v2}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v7, v0}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonEname(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v7, v9, v10}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V

    .line 477
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v11, v7}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 461
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "buttonEname":Ljava/lang/String;
    .end local v1    # "buttonId":I
    .end local v2    # "buttonName":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    .end local v9    # "time":J
    .restart local v8    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 483
    .restart local v7    # "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v4, v11, :cond_2

    .line 485
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 443
    const-string v3, ""

    .line 444
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 452
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 455
    :cond_0
    return-object v3

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 446
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "begin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
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
    .line 704
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 705
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0187

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 713
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 720
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 721
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 722
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 495
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isRecord:Z

    if-nez v3, :cond_0

    .line 508
    :goto_0
    return-void

    .line 498
    :cond_0
    const-string v3, "x"

    invoke-virtual {p0, v3, v4}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 500
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 501
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 502
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 504
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonId:I

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->loadButtonName(I)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    .line 507
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->emitCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    new-instance v19, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 111
    const v19, 0x7f030035

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->setContentView(I)V

    .line 112
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 116
    new-instance v19, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->handler:Landroid/os/Handler;

    .line 150
    new-instance v19, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "controlId"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-class v21, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual/range {v19 .. v21}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mac:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mac:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 157
    const v19, 0x7f0700ee

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mainLayout:Landroid/view/View;

    .line 159
    const-string v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 160
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f0300f6

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 162
    .local v5, "a":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0xe6

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f07033c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->waitTextView:Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f070146

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 166
    new-instance v19, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x1

    invoke-direct/range {v19 .. v23}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const v20, 0x7f0d00a8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020435

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 170
    .local v11, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020424

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 172
    .local v12, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int/lit8 v18, v19, 0x2

    .line 173
    .local v18, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int/lit8 v6, v19, 0x2

    .line 175
    .local v6, "height":I
    const v19, 0x7f0700f1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 176
    .local v14, "operateLayout":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 177
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const v19, 0x7f0700ef

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->menuButton:Landroid/widget/ImageButton;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->menuButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v19, 0x7f0700f0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->stopButton:Landroid/widget/ImageButton;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->stopButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v19, 0x7f0700f2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    const v19, 0x7f0700f3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    const v19, 0x7f0700f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->leftButton:Landroid/widget/ImageButton;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->leftButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->leftButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    const v19, 0x7f0700f5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->rightButton:Landroid/widget/ImageButton;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->rightButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->rightButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    const v19, 0x7f0700f6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    const v19, 0x7f0700ec

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 205
    const v19, 0x7f0700ed

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "recordIdx"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "recordIdx"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, "recordIdx":Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "idx":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x7f0200b8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 263
    .end local v8    # "idx":[Ljava/lang/String;
    .end local v15    # "recordIdx":Ljava/lang/String;
    :cond_0
    const v19, 0x7f0700d4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f0300cb

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 265
    .local v17, "view":Landroid/view/View;
    const v19, 0x7f07013b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0201

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setClickable(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 269
    const v19, 0x7f07013c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c018c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setClickable(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 273
    new-instance v19, Landroid/widget/PopupWindow;

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void

    .line 251
    .end local v17    # "view":Landroid/view/View;
    .restart local v8    # "idx":[Ljava/lang/String;
    .restart local v15    # "recordIdx":Ljava/lang/String;
    :cond_1
    aget-object v7, v8, v19

    .line 252
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    const-class v22, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 253
    .local v16, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "buttonName"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v21, "buttonId"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v21, "time"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->recordList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 382
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 384
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 386
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    .line 638
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->quit()V

    .line 639
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 640
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->finish()V

    .line 393
    const/4 v1, 0x1

    .line 405
    :goto_0
    return v1

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 397
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 399
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 404
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->finish()V

    .line 405
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 375
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 376
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 362
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 363
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 364
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 368
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method public quit()V
    .locals 5

    .prologue
    .line 553
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 556
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%operate#3031#quit%uart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "message":Ljava/lang/String;
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 652
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 574
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

    .line 575
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%operate#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 579
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 580
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 581
    if-nez v1, :cond_1

    .line 582
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 583
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 592
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v1    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    .end local v1    # "b":Z
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
