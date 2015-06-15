.class Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;
.super Ljava/lang/Object;
.source "UpdatePwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->pwd:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "pwdTxt":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->comPwd:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "comPwdTxt":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    const-string v5, "The two passwords do not match"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    .line 77
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    const-string v5, "Password length cannot be less than six"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, "paramObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "pwd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v4, "userid"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->userid:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v4, "params"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v4, "method"

    const-string v5, "updatePwd"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JsonObject================="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;->access$3(Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/UpdatePwdActivity;

    invoke-virtual {v4, v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v4

    goto :goto_0
.end method
