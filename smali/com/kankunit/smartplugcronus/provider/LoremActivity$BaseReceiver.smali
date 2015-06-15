.class Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoremActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/provider/LoremActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msgBody"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "brback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 155
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 159
    const-string v2, "rack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/provider/LoremActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    # getter for: Lcom/kankunit/smartplugcronus/provider/LoremActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/provider/LoremActivity;->access$0(Lcom/kankunit/smartplugcronus/provider/LoremActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
