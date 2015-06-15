.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;
.super Ljava/lang/Object;
.source "WirelessConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 220
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

    .line 225
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$33(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V

    .line 226
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ap"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 229
    const-string v2, "WIFI cannot contain Chinese and cannot contain special characters % or \' "

    .line 228
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 269
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ap"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Your password cannot contain Chinese and cannot contain special characters % or \'"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_3
    const-string v1, "ap"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const-string v4, "%%"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$34(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V

    .line 243
    :cond_4
    const-string v1, "ap"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const-string v4, "%%"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$33(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;Ljava/lang/String;)V

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "configpwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->ssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->password:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "netConfigure"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->startProgress()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$35(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    .line 255
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    iput-boolean v6, v1, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isStartedConfigure:Z

    .line 256
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->progressRound:Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$29(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->confirmBtnDeep:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$28(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->cancelbtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$36(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    const-string v1, "mini"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    sput-boolean v5, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->isConfigFinish:Z

    .line 262
    const/16 v1, 0x3e8

    sput v1, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->configSleepTime:I

    .line 263
    const-string v1, ""

    sput-object v1, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->tempMac:Ljava/lang/String;

    .line 264
    new-instance v1, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->fa:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->pwdET:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$31(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_6
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->doWifiConfig()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$37(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V

    goto/16 :goto_0
.end method
