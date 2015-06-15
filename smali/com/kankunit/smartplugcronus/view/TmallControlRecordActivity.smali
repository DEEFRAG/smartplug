.class public Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TmallControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$PlayThread;,
        Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$waitTextThread;
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

.field closevoiceButton:Landroid/widget/ImageButton;

.field private code:I

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field downButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field height:I

.field homeButton:Landroid/widget/ImageButton;

.field isPlay:Z

.field isRecord:Z

.field isWait:Z

.field leftButton:Landroid/widget/ImageButton;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field menuButton:Landroid/widget/ImageButton;

.field minuvoiceButton:Landroid/widget/ImageButton;

.field okButton:Landroid/widget/ImageButton;

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

.field rightButton:Landroid/widget/ImageButton;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field upButton:Landroid/widget/ImageButton;

.field waitTextView:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 47
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->width:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->height:I

    .line 49
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    .line 63
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isPlay:Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->mac:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private emitCode(I)V
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 519
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 522
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%nopassword%operate#3031#emit#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%uart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "message":Ljava/lang/String;
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
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

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

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonName:Ljava/lang/String;

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addRecordButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "buttonName"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "buttonId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public check(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 564
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

    .line 565
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%nopassword%check#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 569
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 570
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    if-nez v1, :cond_0

    .line 572
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 387
    const-string v3, "msgBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "body":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 389
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "sArr":[Ljava/lang/String;
    aget-object v3, v2, v5

    const-string v4, "operate#3031#learn#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 392
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 393
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
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

    .line 396
    :cond_1
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 397
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 399
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 401
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 402
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    .line 403
    aget-object v3, v2, v5

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    :cond_2
    :goto_0
    return-void

    .line 406
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;-><init>()V

    .line 407
    .local v1, "codeModel":Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonId(I)V

    .line 408
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonEName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonEName(Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setButtonName(Ljava/lang/String;)V

    .line 410
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->code:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setCodeNo(I)V

    .line 411
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->setRemoteControlId(I)V

    .line 412
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getRecordIdx()Ljava/lang/String;
    .locals 12

    .prologue
    .line 434
    const-string v5, ""

    .line 435
    .local v5, "recordIdx":Ljava/lang/String;
    const/4 v2, 0x0

    .line 436
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 452
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v11, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-virtual {v10, v11}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 453
    .local v7, "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 454
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 461
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 462
    return-object v5

    .line 437
    .end local v7    # "recordModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneRecordModel;>;"
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 438
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "buttonName"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "buttonName":Ljava/lang/String;
    const-string v10, "buttonId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 440
    .local v0, "buttonId":I
    const-string v10, "time"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 444
    .local v8, "time":J
    add-int/lit8 v2, v2, 0x1

    .line 445
    new-instance v6, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    invoke-direct {v6}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;-><init>()V

    .line 446
    .local v6, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonId(I)V

    .line 447
    iget v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    invoke-virtual {v6, v10}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setControlId(I)V

    .line 448
    invoke-virtual {v6, v1}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setButtonName(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v6, v8, v9}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->setPressTime(J)V

    .line 450
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v10, v6}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 455
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

    .line 456
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

    .line 457
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v3, v10, :cond_2

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    const-string v3, ""

    .line 419
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 427
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 430
    :cond_0
    return-object v3

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 421
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "begin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 419
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
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
    .line 609
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 610
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 618
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 625
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 626
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isRecord:Z

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->buttonId:I

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->loadButtonName(I)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->addRecordButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v19, 0x7f0300e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->setContentView(I)V

    .line 89
    invoke-static/range {p0 .. p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    new-instance v19, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->handler:Landroid/os/Handler;

    .line 127
    new-instance v19, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "controlId"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-class v21, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual/range {v19 .. v21}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->mac:Ljava/lang/String;

    .line 133
    const v19, 0x7f0700ee

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->mainLayout:Landroid/view/View;

    .line 135
    const-string v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 136
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f0300f6

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 138
    .local v5, "a":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0xe6

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f07033c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->waitTextView:Landroid/widget/TextView;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f070146

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 142
    new-instance v19, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindowView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x1

    invoke-direct/range {v19 .. v23}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const v20, 0x7f0d00a8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020435

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 146
    .local v11, "mBitmap1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020424

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 148
    .local v12, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int/lit8 v18, v19, 0x2

    .line 149
    .local v18, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int/lit8 v6, v19, 0x2

    .line 151
    .local v6, "height":I
    const v19, 0x7f0700f1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 152
    .local v14, "operateLayout":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 153
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const v19, 0x7f0700da

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v19, 0x7f07020e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->backButton:Landroid/widget/ImageButton;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->backButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v19, 0x7f0700ef

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->menuButton:Landroid/widget/ImageButton;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->menuButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v19, 0x7f070392

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->minuvoiceButton:Landroid/widget/ImageButton;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->minuvoiceButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v19, 0x7f07020a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->autoButton:Landroid/widget/ImageButton;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->autoButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v19, 0x7f070324

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->closevoiceButton:Landroid/widget/ImageButton;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->closevoiceButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v19, 0x7f070208

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->homeButton:Landroid/widget/ImageButton;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->homeButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v19, 0x7f070393

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->addvoiceButton:Landroid/widget/ImageButton;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->addvoiceButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v19, 0x7f0700f2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->upButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v19, 0x7f0700f3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->downButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v19, 0x7f0700f6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->okButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v19, 0x7f0700f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->leftButton:Landroid/widget/ImageButton;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->leftButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v19, 0x7f0700f5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->rightButton:Landroid/widget/ImageButton;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->rightButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v19, 0x7f0700ec

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 189
    const v19, 0x7f0700ed

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "recordIdx"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "recordIdx"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, "recordIdx":Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "idx":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x7f0200b8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 247
    .end local v8    # "idx":[Ljava/lang/String;
    .end local v15    # "recordIdx":Ljava/lang/String;
    :cond_0
    const v19, 0x7f0700d4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f0300cb

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 249
    .local v17, "view":Landroid/view/View;
    const v19, 0x7f07013b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0201

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setClickable(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 253
    const v19, 0x7f07013c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c018c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setClickable(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 257
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

    iput-object v0, v1, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->pop:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->scene_control_menu_info:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->cancelImage:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void

    .line 235
    .end local v17    # "view":Landroid/view/View;
    .restart local v8    # "idx":[Ljava/lang/String;
    .restart local v15    # "recordIdx":Ljava/lang/String;
    :cond_1
    aget-object v7, v8, v19

    .line 236
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v21, v0

    const-class v22, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;

    .line 237
    .local v16, "recordModel":Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "buttonName"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v21, "buttonId"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getButtonId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v21, "time"

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->getPressTime()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->recordList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 360
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    .line 603
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 604
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->finish()V

    .line 368
    const/4 v1, 0x1

    .line 380
    :goto_0
    return v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 372
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 374
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->finish()V

    .line 380
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 353
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 346
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 347
    .local v0, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 349
    return-void
.end method

.method public quit()V
    .locals 5

    .prologue
    .line 511
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 514
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%nopassword%operate#3031#quit%uart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "message":Ljava/lang/String;
    return-void
.end method

.method public startOperate(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 539
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

    .line 540
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%nopassword%operate#3031#learn#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getDname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 544
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 545
    .local v1, "b":Z
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 546
    if-nez v1, :cond_1

    .line 547
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->isWait:Z

    if-eqz v5, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 557
    .end local v1    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v1    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->check(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v1    # "b":Z
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
