.class public Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "RegisterStep3Activity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# instance fields
.field private confirmpwdEditText:Landroid/widget/EditText;

.field private finishbtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private passwordEditText:Landroid/widget/EditText;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private telephone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 43
    const-string v0, "xx"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->confirmpwdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f0701fc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->passwordEditText:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f070203

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->confirmpwdEditText:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f070204

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->finishbtn:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->finishbtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "msg==========="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 191
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "res"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "string":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "exist"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->handler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "fail"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->handler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 221
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 202
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 203
    .local v0, "db":Lnet/tsz/afinal/FinalDb;
    const-class v5, Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v0, v5}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 204
    new-instance v4, Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/UserModel;-><init>()V

    .line 205
    .local v4, "userModel":Lcom/kankunit/smartplugcronus/model/UserModel;
    const-string v5, " "

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 206
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setId(I)V

    .line 207
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setNickname(Ljava/lang/String;)V

    .line 208
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setPoints(Ljava/lang/String;)V

    .line 209
    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setSex(Ljava/lang/String;)V

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/model/UserModel;->setUserId(Ljava/lang/String;)V

    .line 211
    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/dao/UserDao;->saveUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 213
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    const-string v5, "userinfo"

    const-string v6, "userid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public initHandle()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->handler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 164
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$3;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 173
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$4;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 181
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f0300bf

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->initView()V

    .line 124
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 125
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->initHandle()V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->finish()V

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 59
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 60
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
