.class Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;
.super Ljava/lang/Object;
.source "RegisterStep3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;)Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 77
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$0(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "pwd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->confirmpwdEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$1(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "comPwd":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v6, "The two passwords do not match"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 114
    .end local v0    # "comPwd":Ljava/lang/String;
    .end local v4    # "pwd":Ljava/lang/String;
    :goto_0
    return-void

    .line 83
    .restart local v0    # "comPwd":Ljava/lang/String;
    .restart local v4    # "pwd":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    .line 84
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v6, "Password length cannot be less than six"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "comPwd":Ljava/lang/String;
    .end local v4    # "pwd":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0249

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1388

    new-instance v10, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1$1;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;)V

    invoke-static {v6, v7, v8, v9, v10}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$4(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    goto :goto_0

    .line 88
    .restart local v0    # "comPwd":Ljava/lang/String;
    .restart local v4    # "pwd":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v3, "paramObject":Lorg/json/JSONObject;
    const-string v5, "telephone"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$2(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v5, "nickname"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->telephone:Ljava/lang/String;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$2(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v5, "password"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$0(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v5, "phonemodel"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v5, "phoneosversion"

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v5, "softwareversion"

    const-string v6, "1.0.2"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v5, "userfrom"

    const-string v6, "android"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v5, "points"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v5, "sex"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "params"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v5, "method"

    const-string v6, "register"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JsonObject================="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->access$3(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-virtual {v5, v6, v7}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
