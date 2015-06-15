.class Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;
.super Ljava/lang/Object;
.source "NightLightActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/NightLightActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;)Lcom/kankunit/smartplugcronus/view/NightLightActivity;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 13
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    const v8, 0x7f0c024b

    const v7, 0x7f0c0249

    const/16 v9, 0x4e20

    .line 193
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isGetInfoOk:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$17(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0202

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 195
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$19(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->light_state_isOpen:Z
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$10(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->hasTimer:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$20(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$19(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->addLightTimer()V
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$18(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4$1;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;)V

    invoke-static {v5, v6, v7, v9, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$21(Lcom/kankunit/smartplugcronus/view/NightLightActivity;Landroid/app/ProgressDialog;)V

    .line 209
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$19(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v12, "y"

    .line 210
    .local v12, "state":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$11(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$12(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%alarm#1024#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allOpenTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$22(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$23(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allCloseTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$24(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$25(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$26(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#set#light%timer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$13(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->phoneMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$11(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$14(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$15(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 213
    .local v0, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 209
    .end local v0    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v12    # "state":Ljava/lang/String;
    :cond_3
    const-string v12, "n"

    goto/16 :goto_1

    .line 216
    :cond_4
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4$2;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4$2;-><init>(Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;)V

    invoke-static {v5, v6, v7, v9, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$21(Lcom/kankunit/smartplugcronus/view/NightLightActivity;Landroid/app/ProgressDialog;)V

    .line 222
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->night_light_en:Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$19(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v12, "y"

    .line 223
    .restart local v12    # "state":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->mac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$13(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->pwd:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$12(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%alarm#1024#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allOpenTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$22(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->openEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$23(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->allCloseTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$24(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->closeEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$25(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->repartNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$26(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#set#light%timer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1    # "cmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v5, ""

    const-string v6, ""

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$2(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Landroid/os/Handler;

    move-result-object v7

    const v8, 0xb156

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->isDirect:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$16(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Z

    move-result v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/NightLightActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/NightLightActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/NightLightActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/NightLightActivity;->access$14(Lcom/kankunit/smartplugcronus/view/NightLightActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 225
    .local v3, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v12    # "state":Ljava/lang/String;
    :cond_5
    const-string v12, "n"

    goto/16 :goto_2
.end method
