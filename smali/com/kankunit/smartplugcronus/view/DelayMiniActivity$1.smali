.class Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;
.super Ljava/lang/Object;
.source "DelayMiniActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 13
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 105
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    const-string v5, "y"

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V

    .line 106
    const-string v3, "n"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$4(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    const-string v5, "y"

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$5(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "mainCmds":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "alarm#"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->newAllEn:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$6(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x4

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x5

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x6

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x7

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "mainCmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    invoke-static {v3, v9}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$7(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c024a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0c024b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x2ee0

    new-instance v12, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;

    invoke-direct {v12, p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;)V

    invoke-static {v5, v7, v8, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$9(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->mac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$10(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "kankun-smartplug.com"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "userJID":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v5, "-"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "wan_phone%"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->pwd:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$11(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "set#relay%timer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->mac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$10(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 127
    .local v6, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$12(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/os/Handler;

    move-result-object v5

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$13(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 128
    .local v0, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 129
    return-void

    .line 109
    .end local v0    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v4    # "phoneMac":Ljava/lang/String;
    .end local v6    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v9    # "mainCmd":Ljava/lang/String;
    .end local v10    # "mainCmds":[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;

    const-string v5, "n"

    invoke-static {v3, v5}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
