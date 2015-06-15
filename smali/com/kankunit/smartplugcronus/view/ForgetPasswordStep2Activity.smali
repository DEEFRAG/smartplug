.class public Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "ForgetPasswordStep2Activity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isAbleSendAgain:I

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private nextstep:Landroid/widget/Button;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private sendAgainTextView:Landroid/widget/TextView;

.field private sendFlag:I

.field private telephone:Ljava/lang/String;

.field private telephoneEditText:Landroid/widget/EditText;

.field private toptv:Landroid/widget/TextView;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->userid:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendFlag:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->isAbleSendAgain:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephoneEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->isAbleSendAgain:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->isAbleSendAgain:I

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendFlag:I

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->userid:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0701fc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephoneEditText:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f070201

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0701ff

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->toptv:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->toptv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f070200

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->nextstep:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->nextstep:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendAgainTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 226
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "msg==========="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 231
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "res"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "string":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendFlag:I

    if-ne v3, v6, :cond_1

    .line 236
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    .end local v0    # "jObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "string":Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    .restart local v0    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0    # "jObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 252
    :cond_2
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->sendFlag:I

    if-ne v3, v7, :cond_5

    .line 253
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 241
    .restart local v0    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "not exist"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 244
    :cond_4
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "too much"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 255
    .end local v0    # "jObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "string":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public initHandle()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$3;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->handler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 193
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$4;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 202
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$5;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 210
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 214
    if-eqz p3, :cond_0

    .line 215
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->finish()V

    .line 218
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 139
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 140
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->telephone:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->userid:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->initView()V

    .line 144
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->initHandle()V

    .line 146
    new-instance v0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$timeThread;->start()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->finish()V

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 60
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 55
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 56
    return-void
.end method
