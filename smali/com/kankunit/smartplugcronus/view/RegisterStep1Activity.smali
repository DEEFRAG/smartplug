.class public Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RegisterStep1Activity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# instance fields
.field private bn:Z

.field private fetchauthcodebtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private telephone:Ljava/lang/String;

.field private telephoneEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->bn:Z

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->bn:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephoneEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->fetchauthcodebtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->bn:Z

    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 61
    const v3, 0x7f07032a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 62
    .local v0, "alertButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f07032c

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "registerProtocol":Landroid/widget/TextView;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v3, 0x7f0701fd

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->fetchauthcodebtn:Landroid/widget/Button;

    .line 83
    const v3, 0x7f0701fc

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephoneEditText:Landroid/widget/EditText;

    .line 84
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephoneEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 85
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephoneEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 86
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephoneEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    const v3, 0x7f07032b

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 88
    .local v2, "registerbottomtv":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->fetchauthcodebtn:Landroid/widget/Button;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "msg==========="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 220
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "res"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "string":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/kankunit/smartplugcronus/view/RegisterStep2Activity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "telephone"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->finish()V

    .line 242
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-void

    .line 230
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "exist"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->handler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->handler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "too much"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->handler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public initHandle()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$5;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$5;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->handler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 172
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$6;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 181
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$7;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 189
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 208
    if-eqz p3, :cond_0

    .line 209
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->setResult(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->finish()V

    .line 212
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 140
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 141
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->initView()V

    .line 142
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->initHandle()V

    .line 143
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    const/high16 v0, 0x4000000

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->finish()V

    .line 52
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->finish()V

    .line 58
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 203
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 198
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 199
    return-void
.end method
