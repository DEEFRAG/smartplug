.class Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;
.super Ljava/lang/Object;
.source "BodyInductionActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;)Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 11
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->isOK:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$1(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0202

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loading"

    const v8, 0x9e34

    new-instance v10, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2$1;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;)V

    invoke-static {v4, v6, v7, v8, v10}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$2(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 151
    const-string v3, "open"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pushState:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$3(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v9, "close"

    .line 152
    .local v9, "state":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$4(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->pwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$5(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%push_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "updateState":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$4(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@updateBaiduPushStatus."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "stateUserJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    const-string v4, ""

    const-string v7, "updateBaiduPushStatus"

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$6(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 155
    .local v0, "stateThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "stateThread":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "updateState":Ljava/lang/String;
    .end local v2    # "stateUserJID":Ljava/lang/String;
    .end local v9    # "state":Ljava/lang/String;
    :cond_1
    const-string v9, "open"

    goto :goto_1
.end method
