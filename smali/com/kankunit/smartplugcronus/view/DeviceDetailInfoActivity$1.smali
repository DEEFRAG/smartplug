.class Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;
.super Ljava/lang/Object;
.source "DeviceDetailInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;)Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$0(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Ljava/util/Timer;)V

    .line 166
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2ee0

    new-instance v9, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;)V

    invoke-static {v4, v6, v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 172
    const-string v1, ""

    .line 173
    .local v1, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%k2%firmware_version_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@getDeviceVersion."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    const-string v4, ""

    const-string v7, "getDeviceVersion"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$5(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 182
    .local v0, "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 183
    return-void

    .line 175
    .end local v0    # "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v2    # "userJID":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%mini_w%firmware_version_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->pwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%mini_b%firmware_version_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
