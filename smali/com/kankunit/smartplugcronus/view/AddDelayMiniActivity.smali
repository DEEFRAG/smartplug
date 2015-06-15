.class public Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AddDelayMiniActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private delay_close_layout:Landroid/widget/RelativeLayout;

.field private delay_close_time:Landroid/widget/TextView;

.field private delay_close_time_value:Ljava/lang/String;

.field private delay_mini_after_closetxt:Landroid/widget/TextView;

.field private delay_mini_after_opentxt:Landroid/widget/TextView;

.field private delay_mini_closetxt:Landroid/widget/TextView;

.field private delay_mini_opentxt:Landroid/widget/TextView;

.field private delay_mini_repeat:Landroid/widget/TextView;

.field private delay_open_layout:Landroid/widget/RelativeLayout;

.field private delay_open_time:Landroid/widget/TextView;

.field private delay_open_time_value:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isCheck:[Z

.field private isOpenUp:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private miniDelayStr:Ljava/lang/String;

.field private mini_delay_change:Landroid/widget/ImageView;

.field private mini_layout:Landroid/widget/RelativeLayout;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private pwd:Ljava/lang/String;

.field private timePicker:Landroid/widget/TimePicker;

.field private timepicker_main:Landroid/widget/RelativeLayout;

.field private timerset_set_cancel:Landroid/widget/TextView;

.field private timerset_set_ok:Landroid/widget/TextView;

.field private timerset_set_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->doSave()V

    return-void
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 593
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 595
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    :cond_0
    return-void
.end method

.method private doSave()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 215
    const-string v3, "0 Minutes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0 Minutes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c01cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 238
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getCmd()Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "mainCmd":Ljava/lang/String;
    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    .line 221
    const-string v3, "fail"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c01cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c024a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c024b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2ee0

    new-instance v8, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V

    invoke-static {p0, v3, v5, v7, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mac:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "userJID":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v5, "-"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "set#relay%timer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 236
    .local v6, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->handler:Landroid/os/Handler;

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 237
    .local v0, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method

.method private getCmd()Ljava/lang/String;
    .locals 13

    .prologue
    .line 240
    const-string v11, "yyyy-MM-dd-HH:mm:ss"

    invoke-static {v11}, Lcom/kankunit/smartplugcronus/util/DateUtil;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "nowDate":Ljava/lang/String;
    const-string v9, "n"

    .line 242
    .local v9, "open_en":Ljava/lang/String;
    const-string v3, "n"

    .line 243
    .local v3, "close_en":Ljava/lang/String;
    const-string v10, "0"

    .line 244
    .local v10, "repeatStr":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    array-length v11, v11

    if-lt v4, v11, :cond_2

    .line 254
    :goto_1
    const-string v6, ""

    .line 255
    .local v6, "openPYL":Ljava/lang/String;
    const-string v0, ""

    .line 256
    .local v0, "closePYL":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    if-eqz v11, :cond_6

    .line 257
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 258
    const-string v9, "y"

    .line 260
    :cond_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 261
    const-string v3, "y"

    .line 263
    :cond_1
    const-string v11, "y"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "y"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 267
    .local v7, "openPYLLong":J
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long v1, v11, v7

    .line 268
    .local v1, "closePYLLong":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .end local v1    # "closePYLLong":J
    .end local v7    # "openPYLLong":J
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "alarm#1023#y#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 245
    .end local v0    # "closePYL":Ljava/lang/String;
    .end local v6    # "openPYL":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    aget-boolean v11, v11, v4

    if-eqz v11, :cond_4

    .line 246
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 247
    const-string v10, "9999"

    .line 248
    goto/16 :goto_1

    .line 250
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 251
    goto/16 :goto_1

    .line 244
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 270
    .restart local v0    # "closePYL":Ljava/lang/String;
    .restart local v6    # "openPYL":Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    goto/16 :goto_2

    .line 274
    :cond_6
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 275
    const-string v3, "y"

    .line 277
    :cond_7
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 278
    const-string v9, "y"

    .line 280
    :cond_8
    const-string v11, "y"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "y"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 281
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 284
    .restart local v1    # "closePYLLong":J
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long v7, v11, v1

    .line 285
    .restart local v7    # "openPYLLong":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    goto/16 :goto_2

    .line 287
    .end local v1    # "closePYLLong":J
    .end local v7    # "openPYLLong":J
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->gettime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2
.end method

.method private gettime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 294
    const-string v2, "Hours"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "PYLs":[Ljava/lang/String;
    const-string v0, "0"

    .line 296
    .local v0, "PYL":Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_0

    .line 297
    aget-object v2, v1, v6

    const-string v3, "Minutes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v6

    .line 301
    :goto_0
    return-object v0

    .line 299
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    aget-object v4, v1, v4

    const-string v5, "Minutes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initData()V
    .locals 17

    .prologue
    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 127
    const-string v12, "mac"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mac:Ljava/lang/String;

    .line 128
    const-string v12, "pwd"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->pwd:Ljava/lang/String;

    .line 129
    const-string v12, "delay_open_time_value"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time_value:Ljava/lang/String;

    .line 130
    const-string v12, "delay_close_time_value"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time_value:Ljava/lang/String;

    .line 131
    const-string v12, "isOpenUp"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    .line 132
    const-string v12, "delay_repeat_value"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    if-nez v12, :cond_0

    .line 134
    const/16 v12, 0x19

    new-array v12, v12, [Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    .line 135
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    array-length v12, v12

    if-lt v6, v12, :cond_2

    .line 139
    .end local v6    # "i":I
    :cond_0
    const-string v12, "openState"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 140
    .local v8, "openState":Z
    const-string v12, "closeState"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 141
    .local v3, "closeState":Z
    const-string v12, "update"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 142
    .local v11, "update":Z
    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    if-eqz v11, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    if-eqz v12, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time_value:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 145
    .local v10, "opentime":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time_value:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, "closetime":I
    new-instance v12, Ljava/lang/StringBuilder;

    sub-int v13, v5, v10

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time_value:Ljava/lang/String;

    .line 153
    .end local v5    # "closetime":I
    .end local v10    # "opentime":I
    :cond_1
    :goto_1
    if-eqz v8, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 159
    :goto_2
    if-eqz v3, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 165
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time_value:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time_value:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "openTimeTemp":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "closeTimeTemp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v7

    .line 172
    .local v7, "openEnTemp":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v2

    .line 173
    .local v2, "closeEnTemp":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    if-nez v12, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_opentxt:Landroid/widget/TextView;

    const-string v13, "Shut down"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_closetxt:Landroid/widget/TextView;

    const-string v13, "Turn on"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    const-string v13, "Then close"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    const-string v13, "After opening"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12, v7}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 193
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->setRepeatText([Z)V

    .line 194
    return-void

    .line 136
    .end local v2    # "closeEnTemp":Z
    .end local v3    # "closeState":Z
    .end local v4    # "closeTimeTemp":Ljava/lang/String;
    .end local v7    # "openEnTemp":Z
    .end local v8    # "openState":Z
    .end local v9    # "openTimeTemp":Ljava/lang/String;
    .end local v11    # "update":Z
    .restart local v6    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v6

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 148
    .end local v6    # "i":I
    .restart local v3    # "closeState":Z
    .restart local v8    # "openState":Z
    .restart local v11    # "update":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time_value:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 149
    .restart local v10    # "opentime":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time_value:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 150
    .restart local v5    # "closetime":I
    new-instance v12, Ljava/lang/StringBuilder;

    sub-int v13, v5, v10

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time_value:Ljava/lang/String;

    goto/16 :goto_1

    .line 156
    .end local v5    # "closetime":I
    .end local v10    # "opentime":I
    :cond_4
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 162
    :cond_5
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 183
    .restart local v2    # "closeEnTemp":Z
    .restart local v4    # "closeTimeTemp":Ljava/lang/String;
    .restart local v7    # "openEnTemp":Z
    .restart local v9    # "openTimeTemp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_opentxt:Landroid/widget/TextView;

    const-string v13, "Turn on"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_closetxt:Landroid/widget/TextView;

    const-string v13, "Shut down"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    const-string v13, "After opening"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12, v7}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    const-string v13, "Then close"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v12, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto/16 :goto_4
.end method

.method private initUI()V
    .locals 6

    .prologue
    .line 428
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    if-eqz v4, :cond_0

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "openTimeTemp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "closeTimeTemp":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v2

    .line 432
    .local v2, "openEnTemp":Z
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v0

    .line 433
    .local v0, "closeEnTemp":Z
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_opentxt:Landroid/widget/TextView;

    const-string v5, "Shut down"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_closetxt:Landroid/widget/TextView;

    const-string v5, "Turn on"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    const-string v5, "Then close"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 438
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    const-string v5, "After opening"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 455
    :goto_0
    return-void

    .line 442
    .end local v0    # "closeEnTemp":Z
    .end local v1    # "closeTimeTemp":Ljava/lang/String;
    .end local v2    # "openEnTemp":Z
    .end local v3    # "openTimeTemp":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .restart local v3    # "openTimeTemp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .restart local v1    # "closeTimeTemp":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v2

    .line 445
    .restart local v2    # "openEnTemp":Z
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v0

    .line 446
    .restart local v0    # "closeEnTemp":Z
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_opentxt:Landroid/widget/TextView;

    const-string v5, "Turn on"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_closetxt:Landroid/widget/TextView;

    const-string v5, "Shut down"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    const-string v5, "After opening"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 451
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    const-string v5, "Then close"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mini_delay_change:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_opentxt:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_closetxt:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mini_layout:Landroid/widget/RelativeLayout;

    .line 95
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_layout:Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_layout:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    .line 98
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 100
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_cancel:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0700a2

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_ok:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 107
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 109
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mini_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_ok:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->mini_delay_change:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private setRepeatText([Z)V
    .locals 2
    .param p1, "isChecks"    # [Z

    .prologue
    .line 469
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getMiniRepeat([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 5
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    const v4, 0x7f0c01af

    const v3, 0x7f0c01ae

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 556
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 558
    :sswitch_0
    if-eqz p2, :cond_1

    .line 559
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    const-string v0, "Then close"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 572
    :sswitch_1
    if-eqz p2, :cond_3

    .line 573
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    const-string v0, "Then close"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto/16 :goto_0

    .line 556
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
    .line 501
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 319
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 320
    .local v2, "what":I
    packed-switch v2, :pswitch_data_0

    .line 341
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 322
    :pswitch_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 325
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "isCheck"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 327
    const-string v3, "openTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "closeTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "miniDelayStr"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "openState"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->open_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string v3, "closeState"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->close_timer_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 335
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->setResult(ILandroid/content/Intent;)V

    .line 336
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->finish()V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 473
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 474
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 482
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 490
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 491
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 459
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 460
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 461
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isCheck"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    .line 463
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->setRepeatText([Z)V

    .line 466
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v13, 0x7f0c01af

    const v12, 0x7f0c01ae

    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 425
    :goto_0
    :pswitch_0
    return-void

    .line 351
    :pswitch_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v7, v10}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v7, v10}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_0

    .line 361
    :pswitch_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c024a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Switch..."

    const/16 v11, 0x1f4

    new-instance v12, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$2;

    invoke-direct {v12, p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;)V

    invoke-static {p0, v9, v10, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 366
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->initUI()V

    .line 367
    iget-boolean v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    if-eqz v9, :cond_0

    :goto_1
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isOpenUp:Z

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    .line 372
    :pswitch_4
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v9, v7}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 373
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    const-string v9, "Then close"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_opentxt:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 375
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "opentime":Ljava/lang/String;
    const-string v9, "Hours"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "times":[Ljava/lang/String;
    array-length v9, v6

    if-ne v9, v8, :cond_2

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "hour":I
    aget-object v8, v6, v7

    const-string v9, "Minutes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 388
    .local v4, "minute":I
    :goto_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 389
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 377
    .end local v2    # "hour":I
    .end local v4    # "minute":I
    .end local v5    # "opentime":Ljava/lang/String;
    .end local v6    # "times":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 385
    .restart local v5    # "opentime":Ljava/lang/String;
    .restart local v6    # "times":[Ljava/lang/String;
    :cond_2
    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 386
    .restart local v2    # "hour":I
    aget-object v8, v6, v8

    const-string v9, "Minutes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "minute":I
    goto :goto_3

    .line 394
    .end local v2    # "hour":I
    .end local v4    # "minute":I
    .end local v5    # "opentime":Ljava/lang/String;
    .end local v6    # "times":[Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v9, v7}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 395
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timepicker_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    const-string v9, "Then close"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 397
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "clsoetime":Ljava/lang/String;
    const-string v9, "Hours"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 403
    .restart local v6    # "times":[Ljava/lang/String;
    array-length v9, v6

    if-ne v9, v8, :cond_4

    .line 404
    const/4 v2, 0x0

    .line 405
    .restart local v2    # "hour":I
    aget-object v8, v6, v7

    const-string v9, "Minutes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 410
    .restart local v4    # "minute":I
    :goto_5
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 411
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 399
    .end local v1    # "clsoetime":Ljava/lang/String;
    .end local v2    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "times":[Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 407
    .restart local v1    # "clsoetime":Ljava/lang/String;
    .restart local v6    # "times":[Ljava/lang/String;
    :cond_4
    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    .restart local v2    # "hour":I
    aget-object v8, v6, v8

    const-string v9, "Minutes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "minute":I
    goto :goto_5

    .line 414
    .end local v1    # "clsoetime":Ljava/lang/String;
    .end local v2    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "times":[Ljava/lang/String;
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "isCheck"

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->isCheck:[Z

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 417
    const-class v7, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 418
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v3, v8}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x7f070093
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->initData()V

    .line 84
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->handler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 199
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 200
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 201
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->finish()V

    .line 211
    :goto_0
    return v2

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->doSave()V

    goto :goto_0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v3, 0x1

    .line 507
    const-string v0, "Then close"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_mini_after_closetxt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    const-string v0, "Turn on time"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    if-nez p2, :cond_1

    .line 510
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    const-string v0, "0 Minutes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    const-string v1, "1 Minute"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 552
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :cond_2
    if-nez p2, :cond_3

    .line 520
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :goto_2
    const-string v0, "0 Minutes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    const-string v1, "1 Minute"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_1

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 530
    :cond_4
    const-string v0, "On Time"

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timerset_set_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 531
    if-nez p2, :cond_5

    .line 532
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_3
    const-string v0, "0 Minutes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    const-string v1, "1 Minute"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 534
    :cond_5
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_close_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 541
    :cond_6
    if-nez p2, :cond_7

    .line 542
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_4
    const-string v0, "0 Minutes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    const-string v1, "1 Minute"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->delay_open_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 315
    return-void
.end method
