.class public Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "ForgetPasswordStep3Activity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# instance fields
.field private confirmpwdEditText:Landroid/widget/EditText;

.field private finishbtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private passwordEditText:Landroid/widget/EditText;

.field private progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private telephone:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->telephone:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->userid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->confirmpwdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->userid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0701fc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->passwordEditText:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f070203

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->confirmpwdEditText:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f070204

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->finishbtn:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->finishbtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v1, "updatePwd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 158
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 160
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "msg":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "res"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 166
    :cond_1
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    const-string v4, "Modification failed"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    .end local v0    # "jObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 173
    .restart local v0    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_2
    const-string v4, "Modified successfully"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 176
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 121
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 130
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity$3;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 138
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->telephone:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->userid:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->handler:Landroid/os/Handler;

    .line 109
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->initView()V

    .line 110
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep3Activity;->finish()V

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 52
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 48
    return-void
.end method
