.class public Lcom/kankunit/smartplugcronus/view/TimerSetActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TimerSetActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private close_layout:Landroid/widget/RelativeLayout;

.field private close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private dayFlag:[Z

.field private fastFlag:Ljava/lang/String;

.field private finishCmd:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasTimer:Z

.field private isDirect:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private open_layout:Landroid/widget/RelativeLayout;

.field private open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private pwd:Ljava/lang/String;

.field private timePicker:Landroid/widget/TimePicker;

.field private timepicker_main:Landroid/widget/RelativeLayout;

.field private timer_repeat_date_1:Landroid/widget/Button;

.field private timer_repeat_date_2:Landroid/widget/Button;

.field private timer_repeat_date_3:Landroid/widget/Button;

.field private timer_repeat_date_4:Landroid/widget/Button;

.field private timer_repeat_date_5:Landroid/widget/Button;

.field private timer_repeat_date_6:Landroid/widget/Button;

.field private timer_repeat_date_7:Landroid/widget/Button;

.field private timerid:Ljava/lang/String;

.field private timerset_close_time:Landroid/widget/TextView;

.field private timerset_open_time:Landroid/widget/TextView;

.field private timerset_set_cancel:Landroid/widget/TextView;

.field private timerset_set_ok:Landroid/widget/TextView;

.field private timerset_set_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->pwd:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->isDirect:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finishCmd:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doSave()V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doBack()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;

    return-object v0
.end method

.method private doBack()V
    .locals 2

    .prologue
    .line 647
    const-string v0, "light"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finish()V

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finish()V

    goto :goto_0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 743
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 744
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 746
    :cond_0
    return-void
.end method

.method private doSave()V
    .locals 15

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c024a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c024b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2cec

    new-instance v11, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$2;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    invoke-static {p0, v4, v7, v9, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 156
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "set%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "cmd":Ljava/lang/String;
    const v5, 0xb156

    .line 159
    .local v5, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%confirm#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "beforeCmd":Ljava/lang/String;
    const-string v3, "%timer"

    .line 161
    .local v3, "afterCmd":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->handler:Landroid/os/Handler;

    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->isDirect:Z

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 162
    .local v0, "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 187
    .end local v0    # "s1backMsg":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v2    # "beforeCmd":Ljava/lang/String;
    .end local v3    # "afterCmd":Ljava/lang/String;
    .end local v5    # "port":I
    :goto_0
    return-void

    .line 165
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

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

    .line 166
    .local v8, "userJID":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v7, "-"

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "set#relay%timer"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "cmd":Ljava/lang/String;
    const-string v4, "light"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    const-string v4, "relay"

    const-string v7, "light"

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_1
    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    new-instance v6, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->handler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v13, ""

    iget-object v14, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v7, v1

    move-object v9, p0

    invoke-direct/range {v6 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 175
    .local v6, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method

.method private iniUpdataData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closetime"    # Ljava/lang/String;
    .param p3, "repartDate"    # Ljava/lang/String;
    .param p4, "openEn"    # Ljava/lang/String;
    .param p5, "closeEn"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->hasTimer:Z

    if-nez v3, :cond_0

    const-string v3, "update"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 308
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 309
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 310
    .local v1, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 311
    .local v2, "minute":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    if-ge v1, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v3, 0xa

    if-ge v2, v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/16 v3, 0xc

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 313
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 314
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 315
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    if-ge v1, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v3, 0xa

    if-ge v2, v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 317
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 320
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    :cond_0
    const-string v3, "n"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 321
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 326
    :goto_4
    const-string v3, "n"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 327
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 331
    :goto_5
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 332
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 333
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 334
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 344
    :goto_6
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 346
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 347
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 353
    :goto_7
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 354
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 355
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 356
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    :goto_8
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 363
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 364
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 365
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 371
    :goto_9
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 372
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 373
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 374
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 380
    :goto_a
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 381
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 382
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 383
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 389
    :goto_b
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 390
    :cond_6
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 391
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 392
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 398
    :goto_c
    return-void

    .line 311
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "hour":I
    .restart local v2    # "minute":I
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 315
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_3

    .line 323
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    :cond_b
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 329
    :cond_c
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 335
    :cond_d
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 336
    :cond_e
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    const v4, 0x7f0203d7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 338
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_6

    .line 340
    :cond_f
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 342
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_6

    .line 349
    :cond_10
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 350
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 351
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_7

    .line 358
    :cond_11
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 359
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 360
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_8

    .line 367
    :cond_12
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 368
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 369
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_9

    .line 376
    :cond_13
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 377
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 378
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_a

    .line 385
    :cond_14
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 386
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 387
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_b

    .line 394
    :cond_15
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    const v4, 0x7f0203d6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 395
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 396
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_c
.end method

.method private updateTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closetime"    # Ljava/lang/String;
    .param p3, "repartDate"    # Ljava/lang/String;
    .param p4, "openEn"    # Ljava/lang/String;
    .param p5, "closeEn"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-direct/range {p0 .. p5}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->iniUpdataData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 3
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 684
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 709
    :goto_0
    return-void

    .line 686
    :sswitch_0
    if-eqz p2, :cond_0

    .line 687
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 696
    :sswitch_1
    if-eqz p2, :cond_1

    .line 697
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070098 -> :sswitch_0
        0x7f07009c -> :sswitch_1
    .end sparse-switch
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 722
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    return-void
.end method

.method public getCmd()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const-wide v12, 0x408ff00000000000L    # 1022.0

    .line 401
    const-string v0, "alarm#"

    .line 402
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    .line 403
    .local v3, "id":I
    const/4 v4, 0x0

    .line 404
    .local v4, "index":I
    sget v10, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-eqz v10, :cond_4

    .line 406
    :cond_0
    sget-object v10, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "data":[Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v1, v14

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 408
    const/4 v4, 0x0

    .line 409
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    .line 413
    :goto_0
    sget v10, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-ne v4, v10, :cond_0

    .line 420
    .end local v1    # "data":[Ljava/lang/String;
    :goto_1
    const-string v10, "update"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "light"

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 421
    :cond_1
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerid:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 423
    :cond_2
    const-string v9, ""

    .line 424
    .local v9, "repeatCmd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 425
    .local v6, "n":I
    const/4 v5, 0x0

    .line 426
    .local v5, "isRepart":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v10, 0x7

    if-lt v2, v10, :cond_5

    .line 440
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v5}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, "onTimeStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v5, v8}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getDate(ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, "offTimeStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#y#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 447
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#y#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_3
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 452
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#y#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_4
    if-nez v5, :cond_b

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_5
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finishCmd:Ljava/lang/String;

    .line 463
    return-object v0

    .line 411
    .end local v2    # "i":I
    .end local v5    # "isRepart":Z
    .end local v6    # "n":I
    .end local v7    # "offTimeStr":Ljava/lang/String;
    .end local v8    # "onTimeStr":Ljava/lang/String;
    .end local v9    # "repeatCmd":Ljava/lang/String;
    .restart local v1    # "data":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 417
    .end local v1    # "data":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    goto/16 :goto_1

    .line 427
    .restart local v2    # "i":I
    .restart local v5    # "isRepart":Z
    .restart local v6    # "n":I
    .restart local v9    # "repeatCmd":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_6

    if-nez v5, :cond_6

    .line 428
    const/4 v5, 0x1

    .line 429
    if-nez v2, :cond_8

    .line 430
    const/16 v6, 0x8

    .line 435
    :cond_6
    :goto_6
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_7

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 426
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 432
    :cond_8
    add-int/lit8 v6, v2, 0x1

    goto :goto_6

    .line 449
    .restart local v7    # "offTimeStr":Ljava/lang/String;
    .restart local v8    # "onTimeStr":Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#n#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 454
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#n#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 460
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 468
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 470
    :pswitch_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_1

    .line 471
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 473
    :cond_1
    const-string v4, "light"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finish()V

    goto :goto_0

    .line 477
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "update"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-lt v0, v4, :cond_5

    .line 487
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finishCmd:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    .line 489
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    array-length v4, v4

    sput v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    .line 513
    :cond_4
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finish()V

    goto :goto_0

    .line 480
    :cond_5
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 481
    .local v3, "tid":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finishCmd:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 482
    .local v2, "saveTid":I
    if-eq v3, v2, :cond_3

    .line 485
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "i":I
    .end local v2    # "saveTid":I
    .end local v3    # "tid":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-ge v0, v4, :cond_4

    .line 492
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerid:Ljava/lang/String;

    sget-object v5, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 493
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finishCmd:Ljava/lang/String;

    aput-object v5, v4, v0

    .line 491
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 516
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_0

    .line 517
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initBg()V
    .locals 5

    .prologue
    .line 250
    const v3, 0x7f070091

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 251
    .local v2, "timerset_mainbg":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 252
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201af

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 258
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 750
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 751
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 759
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 767
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 768
    new-instance v3, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    return-void
.end method

.method protected initView()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v4, 0x1

    const/16 v8, 0xc

    const/16 v7, 0xa

    .line 263
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->initBg()V

    .line 264
    const v3, 0x7f070263

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_layout:Landroid/widget/RelativeLayout;

    .line 265
    const v3, 0x7f070288

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_layout:Landroid/widget/RelativeLayout;

    .line 266
    const v3, 0x7f07009f

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    .line 267
    const v3, 0x7f070098

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 268
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 269
    const v3, 0x7f07009c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 270
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 271
    const v3, 0x7f0700a3

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    .line 272
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 273
    const v3, 0x7f07026a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    .line 274
    const v3, 0x7f070270

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    .line 275
    const v3, 0x7f07026f

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    .line 276
    const v3, 0x7f07026e

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    .line 277
    const v3, 0x7f07026d

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    .line 278
    const v3, 0x7f07026c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    .line 279
    const v3, 0x7f07026b

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    .line 280
    const v3, 0x7f0700a0

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_cancel:Landroid/widget/TextView;

    .line 281
    const v3, 0x7f0700a1

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    .line 282
    const v3, 0x7f0700a2

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_ok:Landroid/widget/TextView;

    .line 283
    const v3, 0x7f070390

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    .line 284
    const v3, 0x7f070391

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    .line 286
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 287
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x2

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->add(II)V

    .line 288
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 289
    .local v1, "hour":I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 290
    .local v2, "minute":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 292
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 293
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 294
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 296
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 297
    return-void

    .line 290
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 294
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f090010

    const v9, 0x7f0203d7

    const v6, 0x7f0203d6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 644
    :goto_0
    return-void

    .line 531
    :sswitch_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 532
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 536
    :sswitch_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 542
    :sswitch_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4, v7}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 543
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "opentime":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 547
    .local v1, "hour":I
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 548
    .local v2, "minute":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 549
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 554
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "opentime":Ljava/lang/String;
    :sswitch_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4, v7}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 555
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "clsoetime":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 559
    .restart local v1    # "hour":I
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 560
    .restart local v2    # "minute":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 561
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 565
    .end local v0    # "clsoetime":Ljava/lang/String;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    :sswitch_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_0

    .line 566
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aput-boolean v7, v4, v8

    .line 568
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 571
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aput-boolean v8, v4, v8

    .line 572
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 576
    :sswitch_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 577
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 578
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x2

    aput-boolean v7, v4, v5

    .line 579
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 581
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x2

    aput-boolean v8, v4, v5

    .line 583
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 587
    :sswitch_6
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_2

    .line 588
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 589
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x3

    aput-boolean v7, v4, v5

    .line 590
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 592
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 593
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x3

    aput-boolean v8, v4, v5

    .line 594
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 598
    :sswitch_7
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x4

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    .line 599
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 600
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x4

    aput-boolean v7, v4, v5

    .line 601
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 604
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x4

    aput-boolean v8, v4, v5

    .line 605
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 609
    :sswitch_8
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_4

    .line 610
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 611
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x5

    aput-boolean v7, v4, v5

    .line 612
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 614
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 615
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x5

    aput-boolean v8, v4, v5

    .line 616
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 620
    :sswitch_9
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_5

    .line 621
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 622
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x6

    aput-boolean v7, v4, v5

    .line 623
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 625
    :cond_5
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 626
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    const/4 v5, 0x6

    aput-boolean v8, v4, v5

    .line 627
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 631
    :sswitch_a
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_6

    .line 632
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 633
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aput-boolean v7, v4, v7

    .line 634
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 637
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->dayFlag:[Z

    aput-boolean v8, v4, v7

    .line 638
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x7f0700a0 -> :sswitch_1
        0x7f0700a2 -> :sswitch_0
        0x7f070263 -> :sswitch_2
        0x7f07026a -> :sswitch_a
        0x7f07026b -> :sswitch_4
        0x7f07026c -> :sswitch_5
        0x7f07026d -> :sswitch_6
        0x7f07026e -> :sswitch_7
        0x7f07026f -> :sswitch_8
        0x7f070270 -> :sswitch_9
        0x7f070288 -> :sswitch_3
        0x7f070390 -> :sswitch_2
        0x7f070391 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 190
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->setContentView(I)V

    .line 192
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->handler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 198
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 200
    const-string v0, "mac"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    .line 201
    const-string v0, "pwd"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->pwd:Ljava/lang/String;

    .line 202
    const-string v0, "isDirect"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->isDirect:Z

    .line 203
    const-string v0, "hasTimer"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->hasTimer:Z

    .line 204
    const-string v0, "timerid"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerid:Ljava/lang/String;

    .line 205
    const-string v0, "fastFlag"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 207
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->initView()V

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_switchButton:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_ok:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timer_repeat_date_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const-string v0, "openTime"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "openTime":Ljava/lang/String;
    const-string v0, "closetime"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "closetime":Ljava/lang/String;
    const-string v0, "repartDate"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "repartDate":Ljava/lang/String;
    const-string v0, "openEn"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "openEn":Ljava/lang/String;
    const-string v0, "closeEn"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "closeEn":Ljava/lang/String;
    const-string v0, "flag"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    .line 233
    const-string v0, "update"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "light"

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->flag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->updateTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 671
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doBack()V

    .line 674
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

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doBack()V

    .line 127
    :goto_0
    return v3

    .line 117
    :cond_0
    const-string v1, "ok"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doSave()V

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TimerSetActivity;)V

    .line 125
    .local v0, "save":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->fastFlag:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 101
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 96
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->finish()V

    .line 679
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 680
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/16 v4, 0xa

    .line 713
    const-string v0, "On time"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_open_time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge p2, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge p3, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :goto_2
    return-void

    .line 714
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 716
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->timerset_close_time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge p2, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge p3, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 737
    return-void
.end method
