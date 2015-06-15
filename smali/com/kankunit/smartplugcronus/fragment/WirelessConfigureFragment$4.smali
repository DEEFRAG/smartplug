.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;
.super Ljava/lang/Object;
.source "WirelessConfigureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$32(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$33(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;Ljava/lang/String;)V

    .line 221
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 224
    const-string v2, "WIFI cannot contain Chinese and cannot contain special characters % or \' "

    .line 223
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 274
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Your password cannot contain Chinese and cannot contain special characters % or \'"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "configpwd"

    const-string v3, "configpwd"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->password:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "netConfigure"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->startProgress()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$35(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    .line 244
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    iput-boolean v6, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->isStartedConfigure:Z

    .line 245
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->confirmBtnDeep:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$27(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->cancelbtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$36(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    sput-boolean v5, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 268
    const-string v1, ""

    sput-object v1, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->tempMac:Ljava/lang/String;

    .line 269
    new-instance v1, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$30(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->doWifiConfig()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;->access$37(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureFragment;)V

    goto/16 :goto_0
.end method
