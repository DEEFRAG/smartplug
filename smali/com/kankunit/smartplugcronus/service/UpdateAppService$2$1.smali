.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;
.super Ljava/lang/Object;
.source "UpdateAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-result-object v0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-result-object v0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2$1;->this$1:Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;->access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$2;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    .line 114
    return-void
.end method
