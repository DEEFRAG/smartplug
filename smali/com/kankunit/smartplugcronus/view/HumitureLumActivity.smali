.class public Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "HumitureLumActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private currenttemp:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private levellbl:Landroid/widget/TextView;

.field private lum_chat_layout:Landroid/widget/LinearLayout;

.field private mainview:Landroid/widget/HorizontalScrollView;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->lum_chat_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 5
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v3, "tp_ack"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "%%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "count":I
    :goto_0
    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 194
    .end local v1    # "count":I
    :cond_1
    return-void

    .line 177
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 178
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    const-string v4, "lum"

    invoke-virtual {v3, p1, v4}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mDraw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 184
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initLumIco(Ljava/lang/String;)V
    .locals 7
    .param p1, "lum"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0202c3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v2, 0x7f0202bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v2, 0x7f0202c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 135
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v2, 0x7f0202c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v2, 0x7f0202c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 147
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_4
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_5
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    .line 198
    const-string v1, "Receive data"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 212
    :cond_0
    :goto_0
    return v3

    .line 201
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e6

    if-ne v1, v2, :cond_2

    .line 202
    const-string v1, "Draw failed"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "bsgMsg":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    const-string v1, "tp_ack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    const-string v2, "lum"

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mDraw(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 233
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 244
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 254
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v6, 0x7f030085

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->setContentView(I)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    new-instance v6, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->handler:Landroid/os/Handler;

    .line 66
    new-instance v6, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 67
    const v6, 0x7f07023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    .line 68
    const v6, 0x7f07023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->levellbl:Landroid/widget/TextView;

    .line 69
    const v6, 0x7f0701c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->currenttemp:Landroid/widget/TextView;

    .line 70
    const v6, 0x7f07023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->lum_chat_layout:Landroid/widget/LinearLayout;

    .line 71
    const v6, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    .line 72
    const v6, 0x7f07022b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 73
    .local v19, "topbar":Landroid/widget/ImageView;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-ge v6, v7, :cond_0

    .line 74
    const/16 v6, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_0
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v14, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 80
    const-string v6, "mac"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 81
    .local v15, "mac":Ljava/lang/String;
    const-string v6, "pwd"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 82
    .local v18, "pwd":Ljava/lang/String;
    const-string v6, "isDirect"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 83
    .local v11, "isDirect":Z
    const-string v6, "nowLum"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "nowLum":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->initLumIco(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loading..."

    const/16 v8, 0x2710

    new-instance v9, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 91
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
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

    .line 94
    .local v4, "userJID":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "queryTemperature"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 95
    .local v2, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 102
    .end local v2    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v4    # "userJID":Ljava/lang/String;
    :goto_1
    return-void

    .line 76
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v11    # "isDirect":Z
    .end local v14    # "bundle":Landroid/os/Bundle;
    .end local v15    # "mac":Ljava/lang/String;
    .end local v17    # "nowLum":Ljava/lang/String;
    .end local v18    # "pwd":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    .restart local v11    # "isDirect":Z
    .restart local v14    # "bundle":Landroid/os/Bundle;
    .restart local v15    # "mac":Ljava/lang/String;
    .restart local v17    # "nowLum":Ljava/lang/String;
    .restart local v18    # "pwd":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%get_tp_data%temper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v16

    .line 99
    .local v16, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v5, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->handler:Landroid/os/Handler;

    const v10, 0xb156

    invoke-virtual/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v13

    move-object v6, v3

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v13}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 100
    .local v5, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->lum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->finish()V

    .line 115
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
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->temp_line:Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->lum_chat_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->finish()V

    .line 58
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 228
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->mainview:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 223
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 170
    return-void
.end method
