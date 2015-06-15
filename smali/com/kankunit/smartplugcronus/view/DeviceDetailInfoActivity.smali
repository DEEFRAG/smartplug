.class public Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DeviceDetailInfoActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private checkStatusTimer:Ljava/util/Timer;

.field private ddinfo_img:Landroid/widget/TextView;

.field private ddinfo_update_text:Landroid/widget/RelativeLayout;

.field private dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private handler:Landroid/os/Handler;

.field private isOpen:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private pwd:Ljava/lang/String;

.field private softV:Ljava/lang/String;

.field private sversion:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field private update_yc:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->checkStatusTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->isOpen:Z

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->softV:Ljava/lang/String;

    return-object v0
.end method

.method private doBack(Ljava/lang/String;)V
    .locals 8
    .param p1, "backStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v4, 0x3

    .line 308
    const-string v0, "firmware_ack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 312
    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->sversion:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->softV:Ljava/lang/String;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->sversion:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->hasNewVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 315
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    .end local v7    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 319
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 320
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 323
    .end local v7    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 324
    :cond_4
    const-string v0, "%check#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 327
    .local v6, "message":Landroid/os/Message;
    const/16 v0, 0x1bc

    iput v0, v6, Landroid/os/Message;->what:I

    .line 328
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 331
    .end local v6    # "message":Landroid/os/Message;
    :cond_5
    new-instance v1, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V

    .line 341
    .local v1, "checkStatusTask":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->checkStatusTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "bsgMsg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->doBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 207
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 289
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 209
    :sswitch_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%firmware"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

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

    .line 213
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 214
    .local v0, "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto :goto_0

    .line 217
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

    .line 218
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

    .line 219
    .local v11, "num":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

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

    .line 220
    const-string v3, "ok"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    const-string v4, "Device reboot in..."

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->checkStatusTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 223
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->timer:Ljava/util/Timer;

    .line 224
    new-instance v10, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V

    .line 234
    .local v10, "checkStatusTask":Ljava/util/TimerTask;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->timer:Ljava/util/Timer;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v3, v10, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 238
    .end local v9    # "backStr":Ljava/lang/String;
    .end local v10    # "checkStatusTask":Ljava/util/TimerTask;
    .end local v11    # "num":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 239
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dialgo:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 240
    const-string v3, "The upgrade is complete"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 243
    :sswitch_3
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 246
    :sswitch_4
    new-instance v13, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;

    invoke-direct {v13, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V

    .line 284
    .local v13, "save":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c024f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->sversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0250

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v13}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x14d -> :sswitch_0
        0x1bc -> :sswitch_1
        0x22b -> :sswitch_2
    .end sparse-switch
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 304
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 101
    const-string v10, "mac"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

    .line 102
    const-string v10, "pwd"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;

    .line 103
    const-string v10, "hardV"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "hardV":Ljava/lang/String;
    const-string v10, "softV"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->softV:Ljava/lang/String;

    .line 105
    const-string v10, "ddinfo_name"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "ddinfo_name":Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v10, 0x7f030054

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 110
    new-instance v10, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v10, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 111
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handler:Landroid/os/Handler;

    .line 113
    const v10, 0x7f07018a

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->ddinfo_update_text:Landroid/widget/RelativeLayout;

    .line 114
    const v10, 0x7f07018b

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->update_yc:Landroid/widget/ImageButton;

    .line 116
    const v10, 0x7f07017f

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 117
    .local v9, "topbar":Landroid/widget/ImageView;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xc

    if-ge v10, v11, :cond_1

    .line 118
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_0
    const v10, 0x7f070180

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "ddinfo_img":Landroid/widget/TextView;
    const v10, 0x7f070183

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "ddinfo_hardV":Landroid/widget/TextView;
    const v10, 0x7f070186

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 134
    .local v6, "ddinfo_softV":Landroid/widget/TextView;
    const v10, 0x7f070189

    invoke-virtual {p0, v10}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 136
    .local v4, "ddinfo_mac":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->softV:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 144
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 145
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 146
    const v10, 0x7f020135

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v0, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;

    invoke-static {v10}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v10

    if-nez v10, :cond_4

    .line 158
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->ddinfo_update_text:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    :goto_2
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->update_yc:Landroid/widget/ImageButton;

    new-instance v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void

    .line 120
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "ddinfo_hardV":Landroid/widget/TextView;
    .end local v3    # "ddinfo_img":Landroid/widget/TextView;
    .end local v4    # "ddinfo_mac":Landroid/widget/TextView;
    .end local v6    # "ddinfo_softV":Landroid/widget/TextView;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    .restart local v2    # "ddinfo_hardV":Landroid/widget/TextView;
    .restart local v3    # "ddinfo_img":Landroid/widget/TextView;
    .restart local v4    # "ddinfo_mac":Landroid/widget/TextView;
    .restart local v6    # "ddinfo_softV":Landroid/widget/TextView;
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 149
    const v10, 0x7f020136

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 152
    .end local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const v10, 0x7f020137

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .restart local v0    # "br_icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 160
    :cond_4
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->ddinfo_update_text:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->finish()V

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->finish()V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 80
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->isOpen:Z

    .line 64
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStart()V

    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->isOpen:Z

    .line 70
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 71
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->doBack(Ljava/lang/String;)V

    .line 204
    return-void
.end method
