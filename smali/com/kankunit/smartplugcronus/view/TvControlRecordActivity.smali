.class public Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;,
        Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$PlayThread;,
        Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$sendMessageThread;
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

.field private code:I

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field downButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field homeButton:Landroid/widget/ImageButton;

.field isPlay:Z

.field isRecord:Z

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field minu2Button:Landroid/widget/ImageButton;

.field minuButton:Landroid/widget/ImageButton;

.field numLayout:Z

.field okButton:Landroid/widget/ImageButton;

.field open2Button:Landroid/widget/ImageButton;

.field openButton:Landroid/widget/ImageButton;

.field playButton:Landroid/widget/ImageButton;

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

.field upButton:Landroid/widget/ImageButton;

.field waitPressLayout:Landroid/widget/RelativeLayout;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 61
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->width:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->height:I

    .line 66
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isWait:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    .line 80
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isPlay:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->mac:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->numLayout:Z

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    return-void
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 526
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 529
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 530
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 531
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 598
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
    .line 602
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 603
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addRecordButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "buttonName"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "buttonId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public check(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 571
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

    .line 572
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 576
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 577
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 578
    if-nez v1, :cond_0

    .line 579
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 370
    const-string v3, "msgBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "body":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "sArr":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    aget-object v3, v2, v5

    const-string v4, "operate#3031#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 378
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 379
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 381
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

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 384
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 385
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isWait:Z

    .line 388
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 389
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 391
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->code:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 392
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 616
    return-void
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 12

    .prologue
    .line 446
    const-string v5, ""

    .line 447
    .local v5, "recordIdx":Ljava/lang/String;
    const/4 v2, 0x0

    .line 448
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 464
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v10, v11}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 465
    .local v7, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 466
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 474
    return-object v5

    .line 449
    .end local v7    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 450
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "buttonName":Ljava/lang/String;
    const-string v10, "buttonId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    .local v0, "buttonId":I
    const-string v10, "time"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 456
    .local v8, "time":J
    add-int/lit8 v2, v2, 0x1

    .line 457
    new-instance v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 458
    .local v6, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 459
    iget v10, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 460
    invoke-virtual {v6, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v6, v8, v9}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V

    .line 462
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v10, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
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

    .line 468
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

    .line 469
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v3, v10, :cond_2

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 430
    const-string v3, ""

    .line 431
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 439
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 442
    :cond_0
    return-object v3

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 433
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "begin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
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
    .line 674
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 675
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0181

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 683
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 690
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 691
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 692
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    return-void
.end method

.method public isExist()Z
    .locals 5

    .prologue
    .line 590
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remoteControlId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and buttonEName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 591
    .local v0, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 592
    :cond_0
    const/4 v1, 0x0

    .line 594
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 498
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isRecord:Z

    if-nez v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonId:I

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->loadButtonName(I)V

    .line 503
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->numLayout:Z

    if-eqz v5, :cond_2

    .line 504
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonName:Ljava/lang/String;

    const-string v6, "Custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    :cond_2
    const-string v5, "x"

    invoke-virtual {p0, v5, v9}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 509
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "x"

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 510
    .local v0, "b":Z
    if-eqz v0, :cond_3

    .line 511
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 512
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 515
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remoteControlId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and buttonEName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 516
    .local v2, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 517
    :cond_4
    const-string v5, "Button did not Learn"

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 519
    :cond_5
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 520
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->emitCode(I)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    new-instance v13, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 106
    const v13, 0x7f0300ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->setContentView(I)V

    .line 107
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 111
    new-instance v13, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->handler:Landroid/os/Handler;

    .line 145
    new-instance v13, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v13}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "controlId"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->mac:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020435

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 153
    .local v6, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020424

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 155
    .local v7, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int/lit8 v12, v13, 0x2

    .line 156
    .local v12, "width":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/lit8 v2, v13, 0x2

    .line 158
    .local v2, "height":I
    const v13, 0x7f0700f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    .local v9, "operateLayout":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 160
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    const v13, 0x7f07020a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton:Landroid/widget/ImageButton;

    .line 165
    const v13, 0x7f070211

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoLayout:Landroid/widget/RelativeLayout;

    .line 166
    const v13, 0x7f070143

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->waitPressLayout:Landroid/widget/RelativeLayout;

    .line 167
    const v13, 0x7f07021a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->cancelButton:Landroid/widget/Button;

    .line 168
    const v13, 0x7f070146

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 170
    const v13, 0x7f0700da

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v13, 0x7f070208

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->homeButton:Landroid/widget/ImageButton;

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->homeButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v13, 0x7f070209

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->avButton:Landroid/widget/ImageButton;

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->avButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v13, 0x7f0700e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->addButton:Landroid/widget/ImageButton;

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->addButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v13, 0x7f07020b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minuButton:Landroid/widget/ImageButton;

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minuButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v13, 0x7f07020c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->open2Button:Landroid/widget/ImageButton;

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->open2Button:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v13, 0x7f07020e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->backButton:Landroid/widget/ImageButton;

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->backButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v13, 0x7f07020f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->add2Button:Landroid/widget/ImageButton;

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->add2Button:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->add2Button:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    const v13, 0x7f070210

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minu2Button:Landroid/widget/ImageButton;

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minu2Button:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->minu2Button:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    const v13, 0x7f0700f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    const v13, 0x7f0700f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    const v13, 0x7f0700f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v13, 0x7f0701a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button1:Landroid/widget/ImageButton;

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button1:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v13, 0x7f0701a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button2:Landroid/widget/ImageButton;

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button2:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v13, 0x7f070212

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button3:Landroid/widget/ImageButton;

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button3:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v13, 0x7f070213

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button4:Landroid/widget/ImageButton;

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button4:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v13, 0x7f070214

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button5:Landroid/widget/ImageButton;

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button5:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v13, 0x7f070215

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button6:Landroid/widget/ImageButton;

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button6:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v13, 0x7f070216

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button7:Landroid/widget/ImageButton;

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button7:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v13, 0x7f070217

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button8:Landroid/widget/ImageButton;

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button8:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v13, 0x7f070218

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button9:Landroid/widget/ImageButton;

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button9:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v13, 0x7f070219

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button0:Landroid/widget/ImageButton;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->button0:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v13, 0x7f070326

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton1:Landroid/widget/ImageButton;

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton1:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v13, 0x7f070327

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton2:Landroid/widget/ImageButton;

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton2:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v13, 0x7f070328

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton3:Landroid/widget/ImageButton;

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton3:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v13, 0x7f070329

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton4:Landroid/widget/ImageButton;

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton4:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v13, 0x7f0700ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 228
    const v13, 0x7f0700ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "recordIdx"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "recordIdx"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "recordIdx":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "idx":[Ljava/lang/String;
    array-length v14, v4

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v14, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v14, 0x7f0200b8

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 288
    .end local v4    # "idx":[Ljava/lang/String;
    .end local v10    # "recordIdx":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->autoButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->cancelButton:Landroid/widget/Button;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v14, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-void

    .line 276
    .restart local v4    # "idx":[Ljava/lang/String;
    .restart local v10    # "recordIdx":Ljava/lang/String;
    :cond_1
    aget-object v3, v4, v13

    .line 277
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v16, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 278
    .local v11, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "buttonName"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v15, "buttonId"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v15, "time"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 401
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 404
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 405
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 410
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->finish()V

    .line 412
    const/4 v1, 0x1

    .line 424
    :goto_0
    return v1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 416
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 418
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->finish()V

    .line 424
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 492
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 493
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 494
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 480
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 481
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 482
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 486
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 622
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 546
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

    .line 547
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%operate#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 551
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 552
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 553
    if-nez v1, :cond_1

    .line 554
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 564
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local v1    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v1    # "b":Z
    :catch_0
    move-exception v2

    .line 562
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
