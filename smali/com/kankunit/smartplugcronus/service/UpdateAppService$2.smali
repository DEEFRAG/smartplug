.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;
.super Landroid/os/Handler;
.source "UpdateAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

.field private final synthetic val$ok:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->val$ok:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/ConfigUtil;->getVerCode(Landroid/content/Context;)I

    move-result v1

    .line 72
    .local v1, "vercode":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->newVerCode:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$2(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)I

    move-result v2

    if-le v2, v1, :cond_6

    .line 73
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    # invokes: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->doNewVersionUpdate()V
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$3(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V

    .line 74
    const/4 v2, 0x1

    sput-boolean v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isUpdate:Z

    .line 81
    .end local v1    # "vercode":I
    :cond_0
    :goto_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    .line 86
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    .line 94
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 99
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "down error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->val$ok:Ljava/lang/String;

    .line 105
    new-instance v4, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)V

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 118
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_5
    return-void

    .line 76
    .restart local v1    # "vercode":I
    :cond_6
    const/4 v2, 0x0

    sput-boolean v2, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isUpdate:Z

    .line 77
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    goto/16 :goto_0
.end method
