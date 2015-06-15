.class public Lcom/kankunit/smartplugcronus/view/TmallControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TmallControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/TmallControlActivity$waitTextThread;
    }
.end annotation


# instance fields
.field addvoiceButton:Landroid/widget/ImageButton;

.field autoButton:Landroid/widget/ImageButton;

.field backButton:Landroid/widget/ImageButton;

.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field cancelImage:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field closevoiceButton:Landroid/widget/ImageButton;

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

.field leftButton:Landroid/widget/ImageButton;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field menuButton:Landroid/widget/ImageButton;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field minuvoiceButton:Landroid/widget/ImageButton;

.field okButton:Landroid/widget/ImageButton;

.field openButton:Landroid/widget/ImageButton;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field pop:Landroid/widget/PopupWindow;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field rightButton:Landroid/widget/ImageButton;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field upButton:Landroid/widget/ImageButton;

.field waitTextView:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 55
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->width:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->height:I

    .line 57
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    .line 382
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

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

    .line 385
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%operate#3035#emit#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 386
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 387
    return-void
.end method

.method private getCode()I
    .locals 4

    .prologue
    .line 447
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
    .line 451
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonName:Ljava/lang/String;

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonEName:Ljava/lang/String;

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonEName:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 427
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

    .line 428
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%check#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 432
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 433
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    if-nez v9, :cond_0

    .line 435
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v10

    .line 441
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "body":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->doReceive(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 6
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 285
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "sArr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    aget-object v2, v1, v4

    const-string v3, "operate#3035#learn#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 291
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 292
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 294
    :cond_2
    aget-object v2, v1, v4

    const-string v3, "check#3035#learn#"

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

    .line 295
    :cond_3
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 296
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 297
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 298
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 301
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    .line 302
    aget-object v2, v1, v4

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    const-string v2, "Learning error"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_4
    new-instance v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 307
    .local v0, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonId:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 308
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 310
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->code:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 311
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 312
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v2, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 473
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 482
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 483
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 491
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 499
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonId:I

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->loadButtonName(I)V

    .line 321
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getCode()I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->code:I

    .line 322
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v3, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remoteControlId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and buttonEName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, "codeModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mainLayout:Landroid/view/View;

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    .line 330
    new-instance v2, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;->start()V

    .line 331
    new-instance v2, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$waitTextThread;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$waitTextThread;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$waitTextThread;->start()V

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    .line 334
    .local v0, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->getCodeNo()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->emitCode(I)V

    .line 335
    const-string v2, "have been learned"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v9, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 94
    const v9, 0x7f0300e7

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->setContentView(I)V

    .line 95
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 97
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 99
    new-instance v9, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->handler:Landroid/os/Handler;

    .line 115
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 116
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 117
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 118
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "controlId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    .line 119
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9, v10, v11}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 120
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

    .line 121
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 123
    const v9, 0x7f0700ee

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mainLayout:Landroid/view/View;

    .line 125
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 126
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0300f6

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    .line 127
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xe6

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f07033c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->waitTextView:Landroid/widget/TextView;

    .line 131
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    const v10, 0x7f070146

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 132
    new-instance v9, Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindowView:Landroid/view/View;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 133
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v10, 0x7f0d00a8

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 135
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020435

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 136
    .local v4, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020424

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 138
    .local v5, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/lit8 v8, v9, 0x2

    .line 139
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    .line 141
    .local v1, "height":I
    const v9, 0x7f0700f1

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 142
    .local v6, "operateLayout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const v9, 0x7f0700da

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 151
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->openButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v9, 0x7f07020e

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->backButton:Landroid/widget/ImageButton;

    .line 153
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v9, 0x7f0700ef

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->menuButton:Landroid/widget/ImageButton;

    .line 155
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->menuButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v9, 0x7f070392

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minuvoiceButton:Landroid/widget/ImageButton;

    .line 157
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minuvoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v9, 0x7f07020a

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->autoButton:Landroid/widget/ImageButton;

    .line 159
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->autoButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v9, 0x7f070324

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->closevoiceButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->closevoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v9, 0x7f070208

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->homeButton:Landroid/widget/ImageButton;

    .line 163
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->homeButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v9, 0x7f070393

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->addvoiceButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->addvoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v9, 0x7f0700f2

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->upButton:Landroid/widget/ImageButton;

    .line 168
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->upButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v9, 0x7f0700f3

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->downButton:Landroid/widget/ImageButton;

    .line 170
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->downButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v9, 0x7f0700f6

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->okButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->okButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v9, 0x7f0700f4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->leftButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->leftButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v9, 0x7f0700f5

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->rightButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->rightButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v9, 0x7f0700d4

    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 179
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300cb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 180
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f07013b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 181
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0201

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 183
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 184
    const v9, 0x7f07013c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 185
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c018c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 187
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 188
    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    invoke-direct {v9, v7, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 189
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 191
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 193
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$3;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v10, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 250
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 251
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 253
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    .line 466
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->quit()V

    .line 467
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 468
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->finish()V

    .line 273
    :goto_0
    return v6

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 271
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getResources()Landroid/content/res/Resources;

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
    .line 243
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 244
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 237
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 238
    .local v0, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 374
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

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

    .line 377
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%operate#3035#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 379
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->doReceive(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 402
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

    .line 403
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%operate#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->code:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 407
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 408
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 409
    if-nez v9, :cond_1

    .line 410
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->startOperate(Ljava/lang/String;)V

    .line 420
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 418
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
