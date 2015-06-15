.class public Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DelaySettingActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private daynum:Landroid/widget/TextView;

.field private delayTime:J

.field private fastFlag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hournum:Landroid/widget/TextView;

.field private isDirect:Z

.field private isOpen:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private minnum:Landroid/widget/TextView;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field private pwd:Ljava/lang/String;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_editClick:Landroid/view/View$OnClickListener;

.field private scene_control_menu_update:Landroid/widget/TextView;

.field private scene_control_menu_updateClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 211
    new-instance v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_editClick:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_updateClick:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->updateDelay()V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->deleteDelay()V

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private deleteDelay()V
    .locals 13

    .prologue
    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%alarm#1023#y#2013#y#2013#y#0#unset%timer"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%confirm#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "confirmBeforeCmd":Ljava/lang/String;
    const-string v3, "%timer"

    .line 190
    .local v3, "confirmAfterCmd":Ljava/lang/String;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 191
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->handler:Landroid/os/Handler;

    const v5, 0xb156

    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->isDirect:Z

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 192
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 209
    .end local v0    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "userJID":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v7, "-"

    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%alarm#1023#y#2013#y#2013#y#0#unset#relay%timer"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    .line 200
    .local v10, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v4, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->handler:Landroid/os/Handler;

    const-string v11, ""

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v4 .. v12}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 201
    .local v4, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto :goto_0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 290
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    :cond_0
    return-void
.end method

.method private initDate()V
    .locals 13

    .prologue
    const-wide/32 v11, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const/16 v10, 0xa

    .line 162
    iget-wide v6, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    div-long v0, v6, v11

    .line 163
    .local v0, "days":J
    iget-wide v6, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    rem-long/2addr v6, v11

    div-long v2, v6, v8

    .line 164
    .local v2, "hours":J
    iget-wide v6, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 165
    .local v4, "minutes":J
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->daynum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v10, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->hournum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v10, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->minnum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v10, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void

    .line 165
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 166
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 167
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->daynum:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->hournum:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->minnum:Landroid/widget/TextView;

    .line 159
    return-void
.end method

.method private updateDelay()V
    .locals 5

    .prologue
    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "fastFlag"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->fastFlag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "delayTime"

    iget-wide v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 174
    const-string v2, "isOpen"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->isOpen:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "delayTime"

    iget-wide v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 178
    const-string v2, "updateFlag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/AddDelayTaskActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->finish()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 296
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 297
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 305
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 313
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 314
    new-instance v3, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v4, 0x7f030051

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 113
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->handler:Landroid/os/Handler;

    .line 114
    new-instance v4, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v4, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 115
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->initView()V

    .line 117
    const v4, 0x7f0700d4

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 118
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300cb

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f07013b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 120
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 122
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 123
    const v4, 0x7f07013c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    .line 124
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 128
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f020146

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    const v4, 0x7f02013c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v10, v10, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    .line 136
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 138
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 140
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_editClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_update:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu_updateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 145
    const-string v4, "delayTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->delayTime:J

    .line 146
    const-string v4, "mac"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->mac:Ljava/lang/String;

    .line 147
    const-string v4, "pwd"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pwd:Ljava/lang/String;

    .line 148
    const-string v4, "fastFlag"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->fastFlag:Ljava/lang/String;

    .line 149
    const-string v4, "isDirect"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->isDirect:Z

    .line 150
    const-string v4, "isOpen"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->isOpen:Z

    .line 152
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->initDate()V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 84
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 85
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 86
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 87
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->finish()V

    .line 106
    :goto_0
    return v6

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 104
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->getResources()Landroid/content/res/Resources;

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
    .line 70
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 66
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->finish()V

    .line 264
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 265
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelaySettingActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 284
    return-void
.end method
