.class public Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RemoteControlPanelIRActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$waitTextThread;
    }
.end annotation


# instance fields
.field airControl:Landroid/view/View;

.field appleTvControl:Landroid/view/View;

.field private b:Z

.field cancelButton:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field curtainControl:Landroid/view/View;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field garageControl:Landroid/view/View;

.field ghControl:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field miControl:Landroid/view/View;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field radioControl:Landroid/view/View;

.field tmallControl:Landroid/view/View;

.field tvControl:Landroid/view/View;

.field universalControl:Landroid/view/View;

.field waitPressView:Landroid/view/View;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->b:Z

    .line 86
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->b:Z

    return-void
.end method


# virtual methods
.method public checkLearn(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 425
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

    .line 426
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%check#3031#learnyun%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 430
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 431
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 432
    if-nez v9, :cond_0

    .line 433
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->checkLearn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v10

    .line 438
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 444
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->doReceive(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 23
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v20, "%"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 450
    .local v17, "sArr":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/16 v20, 0x3

    aget-object v20, v17, v20

    const-string v21, "operate#3031#learnyun"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 458
    :cond_2
    const/16 v20, 0x3

    aget-object v20, v17, v20

    const-string v21, "check#3031#learnyun#match"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->dismiss()V

    .line 465
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    .line 466
    const/16 v20, 0x3

    aget-object v20, v17, v20

    const-string v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 467
    .local v16, "lArr":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/String;

    .line 468
    .local v8, "brands":[Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    .line 469
    .local v7, "brandTypes":[Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 470
    const/4 v14, 0x4

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v14, v0, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->b:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 478
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->b:Z

    .line 479
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 480
    .local v18, "showList":[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v20

    if-lt v14, v0, :cond_4

    .line 488
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0175

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 490
    new-instance v11, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v11}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 491
    .local v11, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    new-instance v9, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v8, v11, v7}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;[Ljava/lang/CharSequence;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;[Ljava/lang/CharSequence;)V

    .line 506
    .local v9, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0239

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c023b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 517
    .local v13, "dialog":Landroid/app/Dialog;
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 471
    .end local v9    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v11    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v13    # "dialog":Landroid/app/Dialog;
    .end local v18    # "showList":[Ljava/lang/CharSequence;
    :cond_3
    aget-object v20, v16, v14

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "b":[Ljava/lang/String;
    add-int/lit8 v20, v14, -0x4

    const/16 v21, 0x0

    aget-object v21, v4, v21

    aput-object v21, v8, v20

    .line 473
    add-int/lit8 v20, v14, -0x4

    const/16 v21, 0x1

    aget-object v21, v4, v21

    aput-object v21, v7, v20

    .line 470
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 481
    .end local v4    # "b":[Ljava/lang/String;
    .restart local v18    # "showList":[Ljava/lang/CharSequence;
    :cond_4
    sget-object v20, Lcom/kankunit/smartplugcronus/service/MessageService;->airMap:Ljava/util/Map;

    aget-object v21, v8, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 482
    .local v19, "v":Ljava/lang/String;
    if-nez v19, :cond_5

    .line 483
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v21, v8, v14

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v7, v14

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v14

    .line 480
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 485
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v7, v14

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v14

    goto :goto_3

    .line 518
    .end local v14    # "i":I
    .end local v18    # "showList":[Ljava/lang/CharSequence;
    .end local v19    # "v":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 519
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v16, v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "arr":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v5, v3, v20

    .line 521
    .local v5, "brandName":Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v6, v3, v20

    .line 522
    .local v6, "brandType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->saveAirControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 523
    .local v12, "controlId":I
    new-instance v15, Landroid/content/Intent;

    const-class v20, Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v15, "intent2":Landroid/content/Intent;
    const-string v20, "controlId"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 527
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v5    # "brandName":Ljava/lang/String;
    .end local v6    # "brandType":Ljava/lang/String;
    .end local v12    # "controlId":I
    .end local v15    # "intent2":Landroid/content/Intent;
    :cond_7
    const-string v20, "Unable to identify the remote control"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 623
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 632
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 633
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0180

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$12;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$12;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 641
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$13;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$13;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 648
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 649
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 651
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v5, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 110
    new-instance v4, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;-><init>(Landroid/content/Context;)V

    .line 111
    .local v4, "wd":Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/WifiAdminUtil;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "0K_SP3_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mini_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    :cond_0
    const v5, 0x7f0300c5

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->setContentView(I)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 119
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 120
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 122
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 123
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 124
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 126
    const v5, 0x7f0700ee

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mainLayout:Landroid/view/View;

    .line 128
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 129
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0300f6

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    .line 130
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v5, 0xe6

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    const v6, 0x7f070146

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->cancelButton:Landroid/widget/ImageButton;

    .line 134
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    const v6, 0x7f070144

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, "text1":Landroid/widget/TextView;
    const-string v5, "Press the remote control to open the key to learn"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    const v6, 0x7f07033c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->waitTextView:Landroid/widget/TextView;

    .line 137
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindowView:Landroid/view/View;

    invoke-direct {v5, v6, v8, v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 138
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v6, 0x7f0d00a8

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 140
    new-instance v5, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$1;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->handler:Landroid/os/Handler;

    .line 156
    const v5, 0x7f070330

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->tvControl:Landroid/view/View;

    .line 157
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->tvControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v5, 0x7f070337

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->airControl:Landroid/view/View;

    .line 195
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->airControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v5, 0x7f070331

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->radioControl:Landroid/view/View;

    .line 213
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->radioControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$4;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v5, 0x7f070338

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->miControl:Landroid/view/View;

    .line 249
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->miControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v5, 0x7f07033a

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->universalControl:Landroid/view/View;

    .line 285
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->universalControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v5, 0x7f070333

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->appleTvControl:Landroid/view/View;

    .line 296
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->appleTvControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$7;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0K_SP3_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mini_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 333
    :cond_1
    const v5, 0x7f070335

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->ghControl:Landroid/view/View;

    .line 334
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->ghControl:Landroid/view/View;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$8;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->cancelButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void

    .line 115
    .end local v0    # "a":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "text1":Landroid/widget/TextView;
    :cond_3
    const v5, 0x7f0300c4

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 607
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    .line 609
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 614
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->finish()V

    .line 617
    :cond_0
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 98
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 94
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    .line 389
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

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

    .line 392
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 394
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->doReceive(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public saveAirControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "brand"    # Ljava/lang/String;
    .param p2, "brandType"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0c0183

    const/4 v9, 0x1

    .line 533
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 534
    .local v4, "time":I
    new-instance v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;-><init>()V

    .line 535
    .local v2, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "air_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setDname(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v2, p1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setBrand(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2, p2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setBrandType(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 539
    const v5, 0x7f02008b

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    .line 540
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setMac(Ljava/lang/String;)V

    .line 541
    const-string v5, "open"

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setStatus(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2, v9}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setType(I)V

    .line 543
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v2}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 545
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 546
    .local v0, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    new-instance v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 547
    .local v1, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const v5, 0x7f0201b6

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 548
    const-string v5, "open"

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 550
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v3

    .line 551
    .local v3, "orderNo":I
    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 552
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 553
    const-string v5, "airRemoteControl"

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 556
    const-string v5, "other"

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 557
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v5, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v5

    return v5
.end method

.method public startLearn(Ljava/lang/String;)V
    .locals 11
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 400
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

    .line 401
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#learnyun%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 405
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 406
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 407
    if-nez v9, :cond_1

    .line 408
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->isWait:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startLearn(Ljava/lang/String;)V

    .line 418
    .end local v9    # "b":Z
    :cond_0
    :goto_0
    return-void

    .line 412
    .restart local v9    # "b":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->checkLearn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 416
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
