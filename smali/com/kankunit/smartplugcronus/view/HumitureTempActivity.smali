.class public Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "HumitureTempActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;
    }
.end annotation


# instance fields
.field private backmsg:Ljava/lang/String;

.field private currenttemp:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private hum_chat_layout:Landroid/widget/LinearLayout;

.field private isDirect:Z

.field private list_have:Landroid/widget/RelativeLayout;

.field private list_none:Landroid/widget/RelativeLayout;

.field private mac:Ljava/lang/String;

.field private mainview:Landroid/widget/HorizontalScrollView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private nowTemp:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

.field private temp_remotelist:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

.field private temp_ts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->backmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->nowTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v1, "tp_ack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->backmsg:Ljava/lang/String;

    .line 237
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 205
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    .line 206
    new-instance v1, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    .line 207
    .local v1, "dt":Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;->start()V

    .line 209
    .end local v1    # "dt":Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$drawLinThread;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 210
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 214
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "bsgMsg":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_2

    const-string v3, "tp_ack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->backmsg:Ljava/lang/String;

    .line 217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 218
    .local v2, "message":Landroid/os/Message;
    iput v5, p1, Landroid/os/Message;->what:I

    .line 219
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 268
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 269
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 279
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 289
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f030086

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->handler:Landroid/os/Handler;

    .line 84
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v2, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 85
    const v2, 0x7f07023d

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    .line 86
    const v2, 0x7f0701c7

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->currenttemp:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f07023e

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_ts:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f070123

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mainview:Landroid/widget/HorizontalScrollView;

    .line 89
    const v2, 0x7f070240

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_remotelist:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    .line 90
    const v2, 0x7f070241

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_none:Landroid/widget/RelativeLayout;

    .line 91
    const v2, 0x7f07023f

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_have:Landroid/widget/RelativeLayout;

    .line 92
    const v2, 0x7f070235

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    .line 93
    const v2, 0x7f07022b

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .local v1, "topbar":Landroid/widget/ImageView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 95
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    .line 102
    const-string v2, "pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->pwd:Ljava/lang/String;

    .line 103
    const-string v2, "isDirect"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->isDirect:Z

    .line 104
    const-string v2, "nowTemp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->nowTemp:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->nowTemp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->nowTemp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->currenttemp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->currenttemp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->nowTemp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 97
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 108
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->currenttemp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->finish()V

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v2, 0x8

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->finish()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 200
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 22

    .prologue
    .line 130
    invoke-super/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loading..."

    const/16 v8, 0x2710

    new-instance v9, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 138
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@queryTemperature."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "userJID":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "queryTemperature"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 142
    .local v2, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 149
    .end local v2    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v4    # "userJID":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    const-string v7, "ir_module"

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/kankunit/smartplugcronus/dao/DevicePluginDao;->getDeviceByMacAndPlugName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 150
    .local v20, "plug":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v21

    .line 151
    .local v21, "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v14, "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 153
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v6

    if-lt v15, v6, :cond_2

    .line 161
    .end local v15    # "i":I
    :cond_0
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_have:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_none:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_ts:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c021a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_2
    new-instance v16, Lcom/kankunit/smartplugcronus/adapter/TempRemoteAdapter;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/kankunit/smartplugcronus/adapter/TempRemoteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 172
    .local v16, "listItemAdapter_task":Lcom/kankunit/smartplugcronus/adapter/TempRemoteAdapter;
    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/adapter/TempRemoteAdapter;->notifyDataSetChanged()V

    .line 173
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_remotelist:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance v17, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    .line 187
    .local v17, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_remotelist:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mainview:Landroid/widget/HorizontalScrollView;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 195
    invoke-static/range {p0 .. p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 196
    return-void

    .line 144
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v14    # "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v16    # "listItemAdapter_task":Lcom/kankunit/smartplugcronus/adapter/TempRemoteAdapter;
    .end local v17    # "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    .end local v20    # "plug":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    .end local v21    # "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v19

    .line 146
    .local v19, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v5, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->handler:Landroid/os/Handler;

    const v10, 0xb156

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->isDirect:Z

    invoke-virtual/range {v19 .. v19}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v13

    move-object v6, v3

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v13}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 147
    .local v5, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 154
    .end local v5    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v19    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v14    # "electrict_power_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v15    # "i":I
    .restart local v20    # "plug":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DevicePluginModel;>;"
    .restart local v21    # "remotes":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_2
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "temp_item"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v7, "controlId"

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 166
    .end local v15    # "i":I
    .end local v18    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_have:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->list_none:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->temp_ts:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0219

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 231
    return-void
.end method
