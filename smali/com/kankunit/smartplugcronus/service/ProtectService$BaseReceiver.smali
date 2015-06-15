.class Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProtectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/ProtectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/service/ProtectService;Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 390
    .local v1, "message":Landroid/os/Message;
    const-string v2, "rack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const/16 v2, 0x21

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 392
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$3(Lcom/kankunit/smartplugcronus/service/ProtectService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    :cond_0
    return-void
.end method
