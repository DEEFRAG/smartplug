.class public Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "BodyInductionActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

.field private body_bar_title:Landroid/widget/ImageView;

.field private body_lasttime:Landroid/widget/TextView;

.field private body_push_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private body_timer:Landroid/widget/TextView;

.field private body_timer_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private body_timer_layout:Landroid/widget/RelativeLayout;

.field private bodychat_layout:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private hongmi_header_title:Landroid/widget/TextView;

.field private isOK:Z

.field private mac:Ljava/lang/String;

.field private mainview:Landroid/widget/HorizontalScrollView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myBarDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pushState:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

.field private task:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;

.field private timer_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->isOK:Z

    .line 62
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->timer:Ljava/util/Timer;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->isOK:Z

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pushState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->bodychat_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getResources()Landroid/content/res/Resources;

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
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 277
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_1

    .line 278
    const-string v3, "Receive data"

    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 297
    :cond_0
    :goto_0
    return v9

    .line 281
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e6

    if-ne v3, v4, :cond_2

    .line 282
    const-string v3, "Draw failure"

    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 285
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x143

    if-ne v3, v4, :cond_3

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%near%push_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "nearCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@queryRtTime."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "nearUserJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v4, ""

    const-string v7, "queryRtTime"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 289
    .local v0, "nearThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 291
    .end local v0    # "nearThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "nearCmd":Ljava/lang/String;
    .end local v2    # "nearUserJID":Ljava/lang/String;
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 292
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_lasttime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 301
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    const-string v4, "rt_module"

    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 302
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_0
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->hongmi_header_title:Landroid/widget/TextView;

    .line 307
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->hongmi_header_title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 317
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 327
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02046c

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 329
    new-instance v3, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 349
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "typeFlag"

    const-string v3, "body"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x7f07012e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 103
    const-string v0, "mac"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    .line 104
    const-string v0, "pwd"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;

    .line 105
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->setContentView(I)V

    .line 108
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->handler:Landroid/os/Handler;

    .line 110
    const v0, 0x7f070125

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    .line 111
    const v0, 0x7f07012a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_push_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 112
    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mainview:Landroid/widget/HorizontalScrollView;

    .line 113
    const v0, 0x7f070122

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_lasttime:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f07012e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->timer_btn:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->timer_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f070124

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->bodychat_layout:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f070120

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar_title:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f07012b

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_timer_layout:Landroid/widget/RelativeLayout;

    .line 119
    const v0, 0x7f07012d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_timer_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 120
    const v0, 0x7f07012c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_timer:Landroid/widget/TextView;

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar_title:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_0
    new-instance v0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->task:Ljava/util/TimerTask;

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_push_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 158
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar_title:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 74
    const-string v2, "Change the name"

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f02046c

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 75
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 76
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 77
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 165
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->bodychat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->finish()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->bodychat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->finish()V

    .line 97
    :goto_0
    return v4

    .line 87
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "type"

    const-string v3, "rt_plugs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "name"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 272
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 234
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    const-string v4, "rt_module"

    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 235
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loading..."

    const/16 v9, 0x1f40

    new-instance v10, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$3;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-static {p0, v3, v4, v9, v10}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myBarDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%get_rt_data%rt_requst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@queryRt."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v4, ""

    const-string v7, "queryRt"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 254
    .local v0, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%check%push_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "stateCmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@getBaiduPushStatus."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "stateUserJID":Ljava/lang/String;
    new-instance v6, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const-string v10, ""

    const-string v13, "getBaiduPushStatus"

    iget-object v14, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v9, p0

    move-object v11, v5

    move-object v12, v5

    invoke-direct/range {v6 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 259
    .local v6, "stateThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 261
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mainview:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$4;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 267
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 268
    return-void

    .line 239
    .end local v0    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v6    # "stateThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v7    # "stateCmd":Ljava/lang/String;
    .end local v8    # "stateUserJID":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 175
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 176
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x3

    const/4 v9, 0x1

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rt_ack"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "count":I
    :goto_0
    const/4 v10, 0x5

    if-lt v2, v10, :cond_6

    .line 207
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myBarDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v10, :cond_1

    .line 208
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myBarDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 211
    .end local v2    # "count":I
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "bsgMsg":Ljava/lang/String;
    const-string v10, "rt_time_ack"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    const-string v10, "%"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v13

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "datas":[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v3, v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v13

    .line 215
    .local v5, "lastdata":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "lasttime":Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 217
    .local v7, "msg":Landroid/os/Message;
    iput v9, v7, Landroid/os/Message;->what:I

    .line 218
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    .end local v3    # "datas":[Ljava/lang/String;
    .end local v5    # "lastdata":Ljava/lang/String;
    .end local v6    # "lasttime":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2
    const-string v10, "push_ack"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 222
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v10, :cond_3

    .line 223
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 226
    :cond_3
    const-string v10, "%"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v13

    iput-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pushState:Ljava/lang/String;

    .line 227
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_push_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pushState:Ljava/lang/String;

    const-string v12, "open"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {v10, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 228
    iput-boolean v9, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->isOK:Z

    .line 230
    :cond_5
    return-void

    .line 193
    .end local v1    # "bsgMsg":Ljava/lang/String;
    .restart local v2    # "count":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 194
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->body_bar:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "body"

    invoke-virtual {v10, v11, v12}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mDraw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 195
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 200
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v4

    .line 202
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
