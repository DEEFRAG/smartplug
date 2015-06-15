.class public Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "UpdateFirewareDetailActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private checkStatusTimer:Ljava/util/Timer;

.field private dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private fire_new_version:Landroid/widget/TextView;

.field private fire_now_version:Landroid/widget/TextView;

.field private fire_sm:Landroid/widget/TextView;

.field private fireware_title:Landroid/widget/TextView;

.field private fireware_update_btn:Landroid/widget/ImageButton;

.field private firewarenew:Ljava/lang/String;

.field private firewareold:Ljava/lang/String;

.field private firewaretype:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isOpen:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private pwd:Ljava/lang/String;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->isOpen:Z

    return v0
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 7
    .param p1, "backStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x7d0

    .line 203
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->isOpen:Z

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v0, "mini_w"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mini_b"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :cond_2
    const-string v0, "%check#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "k2"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 210
    .local v6, "message":Landroid/os/Message;
    const/16 v0, 0x1bc

    iput v0, v6, Landroid/os/Message;->what:I

    .line 211
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 214
    .end local v6    # "message":Landroid/os/Message;
    :cond_3
    new-instance v1, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)V

    .line 222
    .local v1, "checkStatusTask":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->doBack(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 229
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 267
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 231
    :sswitch_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%firmware"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->mac:Ljava/lang/String;

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

    move-result-object v2

    .line 235
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 236
    .local v0, "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto :goto_0

    .line 239
    .end local v0    # "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v12    # "phoneMac":Ljava/lang/String;
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "backStr":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v11, v3, v6

    .line 241
    .local v11, "num":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Completed"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    const-string v3, "ok"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    const-string v4, "Device reboot in ..."

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 245
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->timer:Ljava/util/Timer;

    .line 246
    new-instance v10, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$5;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)V

    .line 256
    .local v10, "checkStatusTask":Ljava/util/TimerTask;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->timer:Ljava/util/Timer;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v3, v10, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 260
    .end local v9    # "backStr":Ljava/lang/String;
    .end local v10    # "checkStatusTask":Ljava/util/TimerTask;
    .end local v11    # "num":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 261
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 262
    const-string v3, "Upgrade complete"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x14d -> :sswitch_0
        0x1bc -> :sswitch_1
        0x22b -> :sswitch_2
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const v8, 0xfde8

    const/4 v7, 0x1

    const v6, 0x7f0c0249

    .line 131
    const-string v3, "n"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "You have no permission to upgrade the socket"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 175
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewarenew:Ljava/lang/String;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewareold:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "none"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewareold:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    const-string v3, "No new version"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewareold:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    const-string v3, "k2"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c024d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)V

    invoke-static {p0, v3, v4, v8, v6}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 157
    :goto_1
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->checkStatusTimer:Ljava/util/Timer;

    .line 158
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 160
    const-string v10, ""

    .line 162
    .local v10, "url":Ljava/lang/String;
    const-string v3, "k2"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    const-string v10, "http://kankunit.com/k2/k2.bin%firmware"

    .line 171
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->mac:Ljava/lang/String;

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

    move-result-object v2

    .line 173
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 174
    .local v0, "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 145
    .end local v0    # "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v9    # "phoneMac":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_3
    const-string v3, "k2"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c024e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)V

    invoke-static {p0, v3, v4, v8, v6}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    goto/16 :goto_1

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c024a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x14c08

    new-instance v7, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$3;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;)V

    invoke-static {p0, v3, v4, v6, v7}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    goto/16 :goto_1

    .line 164
    .restart local v9    # "phoneMac":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_5
    const-string v3, "mini_w"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    const-string v10, "http://www.kankunit.com/k2/user2.bin%firmware"

    .line 166
    goto/16 :goto_2

    :cond_6
    const-string v3, "mini_b"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    const-string v10, "http://www.kankunit.com/k2/minikpro/user2.bin%firmware"

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v5, 0x7f030074

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->setContentView(I)V

    .line 76
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v5, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 77
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->handler:Landroid/os/Handler;

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 81
    const-string v5, "firewareold"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewareold:Ljava/lang/String;

    .line 82
    const-string v5, "firewarenew"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewarenew:Ljava/lang/String;

    .line 83
    const-string v5, "firewaretype"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    .line 84
    const-string v5, "sm"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "sm":Ljava/lang/String;
    const-string v5, "firewaretitle"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "firewaretitle":Ljava/lang/String;
    const-string v5, "mac"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->mac:Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 88
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->pwd:Ljava/lang/String;

    .line 89
    const v5, 0x7f0701ef

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_title:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f0701f1

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_new_version:Landroid/widget/TextView;

    .line 91
    const v5, 0x7f0701f0

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_now_version:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f0701f2

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_sm:Landroid/widget/TextView;

    .line 93
    const v5, 0x7f0701f3

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_update_btn:Landroid/widget/ImageButton;

    .line 94
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_update_btn:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 98
    .local v3, "res":Landroid/content/res/Resources;
    const-string v5, "k2"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewaretype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const v5, 0x7f020088

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_title:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_title:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_new_version:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewarenew:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_now_version:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->firewareold:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fire_sm:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 103
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v5, 0x7f020086

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->fireware_title:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->finish()V

    .line 126
    :cond_0
    return v2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->isOpen:Z

    .line 62
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStart()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->isOpen:Z

    .line 68
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 69
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "backStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;->doBack(Ljava/lang/String;)V

    .line 189
    return-void
.end method
