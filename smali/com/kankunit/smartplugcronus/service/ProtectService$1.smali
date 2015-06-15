.class Lcom/kankunit/smartplugcronus/service/ProtectService$1;
.super Landroid/os/Handler;
.source "ProtectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/ProtectService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 91
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x21

    if-ne v4, v6, :cond_0

    .line 92
    sput-boolean v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 94
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 95
    .local v12, "res":Landroid/content/res/Resources;
    const v4, 0x7f020163

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 96
    .local v10, "br_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 97
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    .line 96
    invoke-virtual {v10, v7, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v4, v13, v10, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 100
    sget-object v4, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_btn:Landroid/widget/ImageButton;

    .line 101
    const v6, 0x7f020161

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 103
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # invokes: Lcom/kankunit/smartplugcronus/service/ProtectService;->stopElectrictDelay()V
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$4(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    .line 105
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->stopSelf()V

    .line 127
    .end local v10    # "br_icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v4, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    const-string v6, "00:15"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    new-instance v0, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->cmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$5(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmBeforeCmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$6(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->confirmAfterCmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$7(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->port:I
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$8(Lcom/kankunit/smartplugcronus/service/ProtectService;)I

    move-result v5

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .local v0, "st":Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;->start()V

    goto :goto_0

    .line 113
    .end local v0    # "st":Lcom/kankunit/smartplugcronus/service/ProtectService$SmartThread;
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v6, "-"

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->pwd:Ljava/lang/String;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$9(Lcom/kankunit/smartplugcronus/service/ProtectService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string v6, "%close%relay"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/kankunit/smartplugcronus/service/ProtectService;->dev_mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "userJID":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$3(Lcom/kankunit/smartplugcronus/service/ProtectService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$10(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$11(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 119
    .local v1, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 121
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v11, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "ikonke.basebroadcast"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    new-instance v6, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-direct {v6, v7, v13}, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;)V

    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$12(Lcom/kankunit/smartplugcronus/service/ProtectService;Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;)V

    .line 124
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$1;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->br:Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$13(Lcom/kankunit/smartplugcronus/service/ProtectService;)Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;

    move-result-object v6

    invoke-virtual {v4, v6, v11}, Lcom/kankunit/smartplugcronus/service/ProtectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
