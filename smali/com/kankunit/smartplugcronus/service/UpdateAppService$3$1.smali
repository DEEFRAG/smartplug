.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;
.super Ljava/lang/Object;
.source "UpdateAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$4(Lcom/kankunit/smartplugcronus/service/UpdateAppService;Z)V

    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 194
    .local v0, "msgcancel":Landroid/os/Message;
    const-string v1, "cancel"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$1(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method
