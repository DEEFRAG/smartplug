.class public Lcom/kankunit/smartplugcronus/view/LoginActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# instance fields
.field private dologin:Landroid/widget/Button;

.field public forgetPasswordButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private isGetUserInfoOk:Z

.field private minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

.field private mobilenum:Landroid/widget/EditText;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pwd:Landroid/widget/EditText;

.field private registerbtn:Landroid/widget/Button;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->mobilenum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->pwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/LoginActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    return-object v0
.end method

.method private downUserInfo(Ljava/lang/String;)V
    .locals 13
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 289
    .local v0, "db":Lnet/tsz/afinal/FinalDb;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "res"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "string":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 322
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 294
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "string":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, "jObject":Lorg/json/JSONObject;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "method":Ljava/lang/String;
    const-string v10, "getUserInfo"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 297
    new-instance v3, Lorg/json/JSONArray;

    const-string v10, "datalist"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 299
    const-class v10, Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-virtual {v0, v10}, Lnet/tsz/afinal/FinalDb;->deleteAll(Ljava/lang/Class;)V

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_3

    .line 315
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->isGetUserInfoOk:Z

    .line 316
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 317
    .local v5, "message":Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v5, Landroid/os/Message;->what:I

    .line 318
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "method":Ljava/lang/String;
    .end local v8    # "string":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 301
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v8    # "string":Ljava/lang/String;
    :cond_2
    const-string v10, "Login failed"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 305
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 306
    .local v7, "nObject":Lorg/json/JSONObject;
    new-instance v9, Lcom/kankunit/smartplugcronus/model/UserModel;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/model/UserModel;-><init>()V

    .line 307
    .local v9, "userModel":Lcom/kankunit/smartplugcronus/model/UserModel;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "birthday"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "nickname"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->setNickname(Ljava/lang/String;)V

    .line 310
    const-string v10, "null"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "points"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "0"

    :goto_2
    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->setPoints(Ljava/lang/String;)V

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sex"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->setSex(Ljava/lang/String;)V

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "userid"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kankunit/smartplugcronus/model/UserModel;->setUserId(Ljava/lang/String;)V

    .line 313
    invoke-static {p0, v9}, Lcom/kankunit/smartplugcronus/dao/UserDao;->saveUser(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/UserModel;)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 310
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "points"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_2
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0701fc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->mobilenum:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f070292

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->forgetPasswordButton:Landroid/widget/Button;

    .line 66
    const v0, 0x7f070290

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->pwd:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f070293

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->registerbtn:Landroid/widget/Button;

    .line 68
    const v0, 0x7f070291

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->dologin:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->registerbtn:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->dologin:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->forgetPasswordButton:Landroid/widget/Button;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private loginBack(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "string":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "fail"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 339
    .end local v0    # "jObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 335
    .restart local v0    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_2
    const-string v3, "userinfo"

    const-string v4, "userid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private sendGetUserInfo()V
    .locals 6

    .prologue
    .line 372
    :try_start_0
    const-string v4, "userinfo"

    const-string v5, "userid"

    invoke-static {p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "userid":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "method"

    const-string v5, "getUserInfo"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v2, "userInfo":Lorg/json/JSONObject;
    const-string v4, "userid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string v4, "data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    .end local v2    # "userInfo":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updatata======"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 386
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "userid":Ljava/lang/String;
    :goto_1
    return-void

    .line 379
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 384
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "userid":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public doReceive(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v0, "doLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->loginBack(Ljava/lang/String;)V

    .line 423
    :cond_0
    const-string v0, "getUserInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->downUserInfo(Ljava/lang/String;)V

    .line 426
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 389
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sendGetUserInfo()V

    .line 393
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 394
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 397
    :cond_1
    const-string v1, "Login failed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 399
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 401
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->isGetUserInfoOk:Z

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AUTO_ISCHECK"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ISLOGIN"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 406
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 407
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->finish()V

    .line 410
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 158
    if-eqz p3, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->finish()V

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 125
    const v1, 0x7f030096

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->setContentView(I)V

    .line 127
    const-string v1, "KSmartLoginInfo"

    invoke-virtual {p0, v1, v3}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sp:Landroid/content/SharedPreferences;

    .line 128
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "AUTO_ISCHECK"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hasPwd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->finish()V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->initView()V

    .line 143
    new-instance v1, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 153
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->handler:Landroid/os/Handler;

    .line 154
    new-instance v1, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    .line 155
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->finish()V

    .line 171
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 60
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 55
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 56
    return-void
.end method
