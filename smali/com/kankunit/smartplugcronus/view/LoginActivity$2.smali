.class Lcom/kankunit/smartplugcronus/view/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/LoginActivity$2;)Lcom/kankunit/smartplugcronus/view/LoginActivity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 79
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->mobilenum:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$0(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    const-string v4, "Please enter your phone number"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->pwd:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$1(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    const-string v4, "Please enter your password"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loading"

    const/16 v7, 0x2ee0

    new-instance v8, Lcom/kankunit/smartplugcronus/view/LoginActivity$2$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/LoginActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/LoginActivity$2;)V

    invoke-static {v4, v5, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$2(Lcom/kankunit/smartplugcronus/view/LoginActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 94
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v2, "paramObject":Lorg/json/JSONObject;
    const-string v3, "mobilenum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->mobilenum:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$0(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v3, "nickname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->mobilenum:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$0(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v3, "password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->pwd:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$1(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v3, "phonemodel"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v3, "phoneosversion"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v3, "softwareversion"

    const-string v4, "1.0.2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v3, "userfrom"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v3, "method"

    const-string v4, "doLogin"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JsonObject================="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoginActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->access$3(Lcom/kankunit/smartplugcronus/view/LoginActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "paramObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
