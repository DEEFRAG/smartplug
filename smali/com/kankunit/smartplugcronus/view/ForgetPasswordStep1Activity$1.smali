.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;
.super Ljava/lang/Object;
.source "ForgetPasswordStep1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;)Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->bn:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$0(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->telephoneEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$2(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->telephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$3(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 74
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    const-string v4, "Please enter the correct phone number"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v2, "paramObject":Lorg/json/JSONObject;
    const-string v3, "telephone"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->telephoneEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$1(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v3, "method"

    const-string v4, "fgSendcheckcode"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JsonObject================="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$4(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "paramObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1388

    new-instance v8, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$1;)V

    invoke-static {v4, v5, v6, v7, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->access$5(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
