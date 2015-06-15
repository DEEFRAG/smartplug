.class public Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AppleTvControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;,
        Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$waitTextThread;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

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

.field downButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field isWait:Z

.field leftButton:Landroid/widget/ImageButton;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field menuButton:Landroid/widget/ImageButton;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field okButton:Landroid/widget/ImageButton;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 60
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->width:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->height:I

    .line 62
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private emitCode(Ljava/lang/String;)V
    .locals 9
    .param p1, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

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

    .line 407
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

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

    .line 408
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 409
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 469
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
    .line 473
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonName:Ljava/lang/String;

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonEName:Ljava/lang/String;

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonEName:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 449
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

    .line 450
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 454
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 455
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 456
    if-nez v9, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v10

    .line 463
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->doReceive(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 6
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 297
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "sArr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    aget-object v2, v1, v4

    const-string v3, "operate#3031#learn#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 303
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 304
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 306
    :cond_2
    aget-object v2, v1, v4

    const-string v3, "check#3031#learn#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v1, v4

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 309
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 310
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 312
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 313
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    .line 314
    aget-object v2, v1, v4

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    const-string v2, "Learning error"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 318
    :cond_4
    new-instance v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 319
    .local v0, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonId:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 320
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 322
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->code:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 323
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 324
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v2, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 496
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 552
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 553
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0187

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 561
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 568
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 569
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonId:I

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->loadButtonName(I)V

    .line 333
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getCode()I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->code:I

    .line 335
    const-string v3, "x"

    invoke-virtual {p0, v3, v4}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 337
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 338
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 339
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 357
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->buttonEName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->emitCode(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v9, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 105
    const v9, 0x7f030034

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->setContentView(I)V

    .line 106
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 110
    new-instance v9, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->handler:Landroid/os/Handler;

    .line 126
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 127
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 128
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 129
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "controlId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I

    .line 130
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v10, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9, v10, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 131
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

    .line 132
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 134
    const v9, 0x7f0700ee

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mainLayout:Landroid/view/View;

    .line 136
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 137
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0300f6

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    .line 138
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xe6

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f07033c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->waitTextView:Landroid/widget/TextView;

    .line 142
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f070146

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 143
    new-instance v9, Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindowView:Landroid/view/View;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 144
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v10, 0x7f0d00a8

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 146
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020435

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 147
    .local v4, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020424

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 149
    .local v5, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/lit8 v8, v9, 0x2

    .line 150
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    .line 152
    .local v1, "height":I
    const v9, 0x7f0700f1

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 153
    .local v6, "operateLayout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 154
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const v9, 0x7f0700ef

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->menuButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->menuButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v9, 0x7f0700f0

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->stopButton:Landroid/widget/ImageButton;

    .line 163
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v9, 0x7f0700f2

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->upButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->upButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->upButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    const v9, 0x7f0700f3

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->downButton:Landroid/widget/ImageButton;

    .line 169
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->downButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->downButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    const v9, 0x7f0700f4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->leftButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->leftButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->leftButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    const v9, 0x7f0700f5

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->rightButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->rightButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->rightButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    const v9, 0x7f0700f6

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->okButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->okButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->okButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$MyTouchListener;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    const v9, 0x7f0700d4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 182
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300c0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 183
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f07013b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 184
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0201

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 186
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 187
    const v9, 0x7f07013c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 188
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c018c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 190
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 191
    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    invoke-direct {v9, v7, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 192
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 194
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 196
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$3;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 259
    const-string v2, "···"

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 260
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 261
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 263
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    .line 488
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->quit()V

    .line 489
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 490
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->finish()V

    .line 284
    :goto_0
    return v6

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 280
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 281
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 282
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getResources()Landroid/content/res/Resources;

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
    .line 252
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 253
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 240
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 241
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 242
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 396
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

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

    .line 399
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 401
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->doReceive(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 424
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

    .line 425
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 429
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 430
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    if-nez v9, :cond_1

    .line 432
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->startOperate(Ljava/lang/String;)V

    .line 442
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 436
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 440
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
