.class public Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AddDelayTaskActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private accelerationVal:I

.field private dayNumLeftBtn:Landroid/widget/ImageButton;

.field private dayNumRightBtn:Landroid/widget/ImageButton;

.field private dayNumTv:Landroid/widget/TextView;

.field private delayTime:J

.field private delaytime:Landroid/widget/TextView;

.field private fastFlag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hourNumLeftBtn:Landroid/widget/ImageButton;

.field private hourNumRightBtn:Landroid/widget/ImageButton;

.field private hourNumTv:Landroid/widget/TextView;

.field private isDirect:Z

.field private isOpen:Ljava/lang/Boolean;

.field private isTouchDown:Z

.field private mac:Ljava/lang/String;

.field private minNumLeftBtn:Landroid/widget/ImageButton;

.field private minNumRightBtn:Landroid/widget/ImageButton;

.field private minNumTv:Landroid/widget/TextView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pwd:Ljava/lang/String;

.field private startDayNum:I

.field private startHourNum:I

.field private startMinNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 50
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    .line 51
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    .line 52
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isOpen:Ljava/lang/Boolean;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->fastFlag:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->doSave()V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isTouchDown:Z

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 500
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    :cond_0
    return-void
.end method

.method private doSave()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 144
    const-string v4, "00"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "00"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "00"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c01cc

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c024a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c024b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2ee0

    new-instance v11, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$2;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    invoke-static {p0, v4, v7, v9, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 154
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v12, :cond_1

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "set%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "cmd":Ljava/lang/String;
    const v5, 0xb156

    .line 158
    .local v5, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%confirm#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "beforeCmd":Ljava/lang/String;
    const-string v3, "%timer"

    .line 160
    .local v3, "afterCmd":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;

    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isDirect:Z

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 161
    .local v0, "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "beforeCmd":Ljava/lang/String;
    .end local v3    # "afterCmd":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "userJID":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v7, "-"

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "set#relay%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1    # "cmd":Ljava/lang/String;
    new-instance v6, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v13, ""

    iget-object v14, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v7, v1

    move-object v9, p0

    invoke-direct/range {v6 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 169
    .local v6, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method

.method private getCmd()Ljava/lang/String;
    .locals 9

    .prologue
    .line 179
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "df":Ljava/text/DateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 181
    .local v3, "nowDate":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "nowDateStr":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v0, v6, [I

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v6

    .line 183
    .local v0, "amount":[I
    const-string v6, "yyyy-MM-dd-HH:mm:ss"

    invoke-static {v4, v6, v0}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->addDate(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "delayTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x18

    mul-int/lit8 v6, v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int v5, v6, v7

    .line 185
    .local v5, "pyl":I
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alarm#1023#y#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#n#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#y#0#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    :goto_0
    return-object v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alarm#1023#y#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#y#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#n#0#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private initDate()V
    .locals 11

    .prologue
    .line 215
    iget-wide v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delayTime:J

    const-wide/32 v9, 0x5265c00

    div-long v0, v7, v9

    .line 216
    .local v0, "days":J
    iget-wide v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delayTime:J

    const-wide/32 v9, 0x5265c00

    rem-long/2addr v7, v9

    const-wide/32 v9, 0x36ee80

    div-long v3, v7, v9

    .line 217
    .local v3, "hours":J
    iget-wide v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delayTime:J

    const-wide/32 v9, 0x36ee80

    rem-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    div-long v5, v7, v9

    .line 218
    .local v5, "minutes":J
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    const-wide/16 v9, 0xa

    cmp-long v7, v0, v9

    if-gez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    const-wide/16 v9, 0xa

    cmp-long v7, v3, v9

    if-gez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    const-wide/16 v9, 0xa

    cmp-long v7, v5, v9

    if-gez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    .line 224
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    if-nez v7, :cond_6

    .line 225
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014c

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 229
    :goto_3
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    const/16 v8, 0x63

    if-ne v7, v8, :cond_7

    .line 230
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020151

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 234
    :goto_4
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    if-nez v7, :cond_8

    .line 235
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014c

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 239
    :goto_5
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_9

    .line 240
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020151

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 244
    :goto_6
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    if-nez v7, :cond_a

    .line 245
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014c

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 249
    :goto_7
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_b

    .line 250
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020151

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 255
    :goto_8
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c017a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "dltime":Ljava/lang/String;
    const-string v7, "0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_0
    const-string v7, "0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_1
    const-string v7, "0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_2
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delaytime:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void

    .line 218
    .end local v2    # "dltime":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 219
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 220
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 227
    :cond_6
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014b

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 232
    :cond_7
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020150

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 237
    :cond_8
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014b

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 242
    :cond_9
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020150

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 247
    :cond_a
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    const v8, 0x7f02014b

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 252
    :cond_b
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    const v8, 0x7f020150

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_8
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 473
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 489
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f020151

    const v7, 0x7f020150

    const v4, 0x7f02014c

    const v5, 0x7f02014b

    const/4 v6, 0x1

    .line 366
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 368
    .local v0, "arg1":I
    sparse-switch v0, :sswitch_data_0

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "dltime":Ljava/lang/String;
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_0
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    :cond_1
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delaytime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/4 v3, 0x0

    return v3

    .line 370
    .end local v1    # "dltime":Ljava/lang/String;
    :sswitch_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->finish()V

    goto/16 :goto_0

    .line 377
    :sswitch_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_4

    .line 378
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 380
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 383
    :sswitch_2
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    if-lez v3, :cond_5

    .line 384
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    .line 386
    :cond_5
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    if-nez v3, :cond_6

    .line 387
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 389
    :cond_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    :cond_7
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    .end local v2    # "numTxt":Ljava/lang/String;
    :sswitch_3
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    const/16 v4, 0x63

    if-ge v3, v4, :cond_8

    .line 396
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    .line 398
    :cond_8
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    const/16 v4, 0x63

    if-ne v3, v4, :cond_9

    .line 399
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 401
    :cond_9
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startDayNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .restart local v2    # "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    :cond_a
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 407
    .end local v2    # "numTxt":Ljava/lang/String;
    :sswitch_4
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    if-lez v3, :cond_b

    .line 408
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    .line 410
    :cond_b
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    if-nez v3, :cond_c

    .line 411
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 413
    :cond_c
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .restart local v2    # "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    :cond_d
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 419
    .end local v2    # "numTxt":Ljava/lang/String;
    :sswitch_5
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_e

    .line 420
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    .line 422
    :cond_e
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_f

    .line 423
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 425
    :cond_f
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startHourNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .restart local v2    # "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    :cond_10
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 431
    .end local v2    # "numTxt":Ljava/lang/String;
    :sswitch_6
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    if-lez v3, :cond_11

    .line 432
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    .line 434
    :cond_11
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    if-nez v3, :cond_12

    .line 435
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 437
    :cond_12
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .restart local v2    # "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    :cond_13
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 443
    .end local v2    # "numTxt":Ljava/lang/String;
    :sswitch_7
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    const/16 v4, 0x3b

    if-ge v3, v4, :cond_14

    .line 444
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    .line 446
    :cond_14
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_15

    .line 447
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 449
    :cond_15
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->startMinNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .restart local v2    # "numTxt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_16
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x6f -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 506
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 507
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 515
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 523
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 524
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f07014e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    const v0, 0x7f070150

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    const v0, 0x7f070152

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    const v0, 0x7f070156

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    const v0, 0x7f070158

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->dayNumTv:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->hourNumTv:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minNumTv:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delaytime:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 270
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 293
    :pswitch_0
    return-void

    .line 270
    :pswitch_data_0
    .packed-switch 0x7f07014e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    const-string v2, "fastFlag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->fastFlag:Ljava/lang/String;

    .line 197
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    .line 198
    const-string v2, "pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->pwd:Ljava/lang/String;

    .line 199
    const-string v2, "delayTime"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->delayTime:J

    .line 200
    const-string v2, "isOpen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isOpen:Ljava/lang/Boolean;

    .line 201
    const-string v2, "isDirect"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isDirect:Z

    .line 202
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->handler:Landroid/os/Handler;

    .line 203
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 204
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const v2, 0x7f03004e

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->setContentView(I)V

    .line 206
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 207
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v2, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 208
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->initView()V

    .line 209
    const-string v2, "updateFlag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 210
    .local v1, "updateFlag":Z
    if-eqz v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->initDate()V

    .line 213
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 114
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 115
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 116
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 478
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->finish()V

    .line 481
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->finish()V

    .line 139
    :goto_0
    return v3

    .line 125
    :cond_0
    const-string v0, "ok"

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->doSave()V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->fastFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 108
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 104
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 297
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 299
    .local v1, "viewId":I
    if-nez v0, :cond_0

    .line 300
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isTouchDown:Z

    .line 301
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->accelerationVal:I

    .line 302
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;I)V

    .line 355
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity$3;->start()V

    .line 362
    :goto_0
    return v2

    .line 359
    :cond_0
    if-ne v0, v2, :cond_1

    .line 360
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->isTouchDown:Z

    :cond_1
    move v2, v3

    .line 362
    goto :goto_0
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 494
    return-void
.end method
