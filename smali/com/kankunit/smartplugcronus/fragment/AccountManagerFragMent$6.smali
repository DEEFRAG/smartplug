.class Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;
.super Ljava/lang/Object;
.source "AccountManagerFragMent.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

.field private final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->val$userid:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;)Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    return-object v0
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 447
    add-int/lit8 v2, p3, 0x1

    .line 448
    .local v2, "monthInt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "birthdayStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loading"

    const/16 v8, 0x2ee0

    new-instance v9, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;)V

    invoke-static {v5, v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->access$1(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 456
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 457
    .local v3, "paramObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "birthday"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v4, "userid"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->val$userid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v4, "params"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v4, "method"

    const-string v5, "updateBirthday"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->minaSSLUtil:Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->access$2(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;)Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    invoke-virtual {v4, v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "paramObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v4

    goto :goto_0
.end method
