.class public Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "HumitureHumActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;
    }
.end annotation


# instance fields
.field private backmsg:Ljava/lang/String;

.field private currenttemp:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private hum_chat_layout:Landroid/widget/LinearLayout;

.field private mainview:Landroid/widget/HorizontalScrollView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private nowHum:Ljava/lang/String;

.field private temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->backmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->backmsg:Ljava/lang/String;

    .line 171
    const-string v1, "tp_ack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 141
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    .line 142
    new-instance v1, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V

    .line 143
    .local v1, "dt":Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;->start()V

    .line 145
    .end local v1    # "dt":Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$drawLinThread;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 146
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 150
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "bsgMsg":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_2

    const-string v3, "tp_ack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->backmsg:Ljava/lang/String;

    .line 153
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 154
    .local v2, "message":Landroid/os/Message;
    iput v5, p1, Landroid/os/Message;->what:I

    .line 155
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 202
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 213
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 223
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v6, 0x7f030084

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->setContentView(I)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    new-instance v6, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;

    .line 66
    new-instance v6, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 67
    const v6, 0x7f070236

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    .line 68
    const v6, 0x7f070235

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    .line 69
    const v6, 0x7f0701c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->currenttemp:Landroid/widget/TextView;

    .line 70
    const v6, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    .line 71
    const v6, 0x7f07022b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 72
    .local v18, "topbar":Landroid/widget/ImageView;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-ge v6, v7, :cond_1

    .line 73
    const/16 v6, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :goto_0
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v14, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 79
    const-string v6, "mac"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "mac":Ljava/lang/String;
    const-string v6, "pwd"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, "pwd":Ljava/lang/String;
    const-string v6, "isDirect"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 82
    .local v11, "isDirect":Z
    const-string v6, "nowHum"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x4f

    if-gt v6, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x15

    if-ge v6, v7, :cond_2

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->currenttemp:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->currenttemp:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loading..."

    const/16 v8, 0x2710

    new-instance v9, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 95
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 98
    .local v4, "userJID":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "queryTemperature"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 99
    .local v2, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 106
    .end local v2    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v4    # "userJID":Ljava/lang/String;
    :goto_2
    return-void

    .line 75
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v11    # "isDirect":Z
    .end local v14    # "bundle":Landroid/os/Bundle;
    .end local v15    # "mac":Ljava/lang/String;
    .end local v17    # "pwd":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    .restart local v11    # "isDirect":Z
    .restart local v14    # "bundle":Landroid/os/Bundle;
    .restart local v15    # "mac":Ljava/lang/String;
    .restart local v17    # "pwd":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->currenttemp:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 101
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .restart local v3    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v16

    .line 103
    .local v16, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v5, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->handler:Landroid/os/Handler;

    const v10, 0xb156

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v13

    move-object v6, v3

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v13}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 104
    .local v5, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->finish()V

    .line 119
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

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->hum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->finish()V

    .line 58
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 136
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 167
    return-void
.end method
